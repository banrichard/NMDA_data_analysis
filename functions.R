#' 清洗包含多种混合格式的日期向量
#'
#' @param date_vector 一个字符向量，可能包含 YYYY-MM-DD, YYYY-M, YYYY-MM, 和 Excel 数字格式的日期。
#' @return 一个 Date 类型的向量。无法解析的值会返回 NA。
clean_mixed_dates <- function(date_vector) {
  
  # 将输入向量强制转换为字符型，以统一处理
  date_temp <- as.character(date_vector)
  
  # 使用 :: 明确指定每个函数所属的包
  cleaned_dates <- dplyr::case_when(
    
    # 条件一：处理 Excel 数字格式
    stringr::str_detect(date_temp, "^\\d{5}$") ~ as.Date(as.numeric(date_temp), origin = "1899-12-30"),
    
    # 条件二：处理所有 "年-月" 格式
    stringr::str_detect(date_temp, "^\\d{4}-\\d{1,2}$") ~ lubridate::ymd(paste0(date_temp, "-01")),
    
    # 条件三 (默认情况)
    TRUE ~ lubridate::ymd(date_temp)
  )
  
  # 返回清洗干净的日期向量
  return(cleaned_dates)
}

#' 处理并汇总城市月度数据
#'
#' 本函数将一个包含中文城市名的“宽”格式数据框，进行中英文转换、
#' 数据重塑，并最终计算出每个城市每个月的均值。
#'
#' @param wide_data 您的原始“宽”格式数据框。
#' @param city_map 一个数据框，包含 city_cn (中文) 和 city_en (英文) 两列的映射关系。
#' @param city_col_name 您的原始数据中，存放中文城市名的列的名称（字符串）。默认为 "city"。
#' @param value_name 一个字符串，用于命名重塑后的值列，最终输出的均值列会是 "mean_..." 的形式。默认为 "value"。
#'
#' @return 一个汇总后的数据框，包含 city (英文), year_month, 和 mean_value (或您指定的名称) 三列。
#'
summarize_city_monthly_data <- function(wide_data, city_map, city_col_name = "city", value_name = "value") {
  
  city_col_sym <- rlang::ensym(city_col_name)
  
  # 1. 翻译城市名
  translated_data <- wide_data %>%
    dplyr::left_join(city_map, by = rlang::set_names("city_cn", rlang::as_string(city_col_sym))) %>%
    dplyr::select(-!!city_col_sym) %>%
    dplyr::rename(city = city_en) %>%
    
    # --- 新增的关键步骤 ---
    # 在这里直接丢弃那些 city 列是 NA 的行 (即中英文没有匹配上的行)
    tidyr::drop_na(city) %>% 
    
    dplyr::select(city, dplyr::everything())
  
  # 后续步骤和之前完全一样
  # 2. 重塑数据
  long_data <- translated_data %>%
    tidyr::pivot_longer(
      cols = tidyr::matches("^\\d{4}-\\d{2}$"),
      names_to = "year_month",
      values_to = value_name
    )
  
  # 3. 分组并汇总
  mean_col_name <- paste0("mean_", value_name)
  summary_data <- long_data %>%
    dplyr::group_by(city, year_month) %>%
    dplyr::summarise(
      "{mean_col_name}" := mean(.data[[value_name]], na.rm = TRUE),
      .groups = 'drop'
    )
  
  return(summary_data)
}

#' Reads and processes all yearly AQI files from a folder.
#'
#' This function finds all "yyyy_AQI_Monthly.xlsx" files in a given folder,
#' reads them, cleans and filters for Guangdong cities, combines them,
#' and returns a final summary of monthly mean values for each city.
#'
#' @param folder_path The path to the folder containing the AQI Excel files.
#' @param city_map_df A dataframe with 'city_cn' and 'city_en' columns for translation.
#' @param value_name A string for the measurement column, e.g., "aqi".
#' @return A summarized dataframe with columns: city, year_month, and mean_<value_name>.

process_yearly_aqi_data <- function(folder_path, city_map_df, value_name = "value") {
  
  # Step 1: Find all relevant Excel files in the specified folder
  # The pattern ensures we only get files like "2014_AQI_Monthly.xlsx"
  # full.names = TRUE gives us the complete path to each file.
  aqi_files <- list.files(
    path = folder_path,
    pattern = "\\d{4}_AQI_monthly.xlsx$",
    full.names = TRUE
  )
  
  if (length(aqi_files) == 0) {
    stop("No AQI files found in the specified folder. Please check the path and file names.")
  }
  
  # Step 2: Use purrr::map_dfr to loop through each file, process it, and row-bind the results
  # map_dfr is incredibly efficient: it applies a function to each file and combines the results.
  all_data_long <- purrr::map_dfr(aqi_files, ~ {
    
    # This is the processing logic for a SINGLE file
    # `.` represents the current file path in the loop
    single_file_data <- readxl::read_xlsx(.)
    
    processed_data <- single_file_data %>%
      # Clean city names first
      dplyr::mutate(city_clean = stringr::str_trim(stringr::str_remove(city, "市"))) %>%
      # Use an inner_join to both filter for Guangdong cities AND translate names
      dplyr::inner_join(city_map_df, by = c("city_clean" = "city_cn")) %>%
      # Reshape from wide to long
      tidyr::pivot_longer(
        cols = tidyr::matches("^\\d{4}-\\d{2}$"),
        names_to = "year_month",
        values_to = value_name
      ) %>%
      # Keep only the columns we need
      dplyr::select(city = city_en, year_month, !!rlang::sym(value_name))
    
    return(processed_data)
  })
  
  # Step 3: Perform the final group_by and summarise on the COMBINED data from all years
  mean_col_name <- paste0("mean_", value_name)
  
  final_summary <- all_data_long %>%
    dplyr::group_by(city, year_month) %>%
    dplyr::summarise(
      "{mean_col_name}" := mean(.data[[value_name]], na.rm = TRUE),
      .groups = 'drop'
    )
  
  return(final_summary)
}
#' 递归读取所有子文件夹中的数据并处理汇总
#'
#' 遍历指定主文件夹下的所有子文件夹，读取 "文件夹名_yyyy_monthly.xlsx" 格式的文件，
#' 提取指标名称（子文件夹名），并最终汇总成每个城市、每个月、每项指标的均值。
#'
#' @param main_folder_path 主数据文件夹的路径 (例如 "month" 文件夹)。
#' @param city_map_df 中英文城市名字典。
#' @return 一个最终的汇总数据框，包含 city, year_month, metric_type, mean_value 四列。

process_all_subfolder_data <- function(main_folder_path, city_map_df) {
  
  # Step 1: 递归地查找所有符合格式的 Excel 文件
  # recursive = TRUE 会进入所有子文件夹
  # pattern 使用 "_\\d{4}_monthly\\.xlsx$" 来匹配文件名，更具通用性
  all_files <- list.files(
    path = main_folder_path,
    pattern = "_\\d{4}_monthly.xlsx$",
    recursive = TRUE,
    full.names = TRUE
  )
  
  if (length(all_files) == 0) {
    stop("在指定文件夹及其子文件夹中没有找到任何匹配的文件。")
  }
  
  # Step 2: 使用 purrr::map_dfr 循环处理每个文件
  all_data_long <- purrr::map_dfr(all_files, ~ {
    
    # `.` 代表当前正在处理的文件的完整路径
    current_file_path <- .
    
    # --- 新增关键步骤：从文件路径中提取指标类型（即子文件夹名） ---
    # dirname() 获取目录路径, basename() 获取最后一级名称
    metric_type <- basename(dirname(current_file_path))
    
    # 读取并处理单个文件 (逻辑和之前类似)
    processed_data <- readxl::read_xlsx(current_file_path) %>%
      dplyr::mutate(city_clean = stringr::str_trim(stringr::str_remove(city, "市"))) %>%
      dplyr::inner_join(city_map_df, by = c("city_clean" = "city_cn")) %>%
      tidyr::pivot_longer(
        cols = tidyr::matches("^\\d{4}-\\d{2}$"),
        names_to = "year_month",
        values_to = "value"
      ) %>%
      # 添加指标类型列
      dplyr::mutate(metric_type = metric_type) %>%
      dplyr::select(city = city_en, year_month, metric_type, value)
    
    return(processed_data)
  })
  
  # Step 3: 对合并后的【所有】数据进行最终的分组和汇总
  # 注意：group_by 中现在加入了 metric_type
  final_summary <- all_data_long %>%
    dplyr::group_by(city, year_month, metric_type) %>%
    dplyr::summarise(
      mean_value = mean(value, na.rm = TRUE),
      .groups = 'drop'
    )
  
  return(final_summary)
}

