get_city_map <- function() {
  
  city_map_data <- data.frame(
    stringsAsFactors = FALSE,
    city_cn = c("广州", "深圳", "珠海", "汕头", "佛山", "韶关", "湛江", "肇庆", "江门", "茂名", "惠州", "梅州", "汕尾", "河源", "阳江", "清远", "东莞", "中山", "潮州", "揭阳", "云浮"),
    city_en = c("Guangzhou", "Shenzhen", "Zhuhai", "Shantou", "Foshan", "Shaoguan", "Zhanjiang", "Zhaoqing", "Jiangmen", "Maoming", "Huizhou", "Meizhou", "Shanwei", "Heyuan", "Yangjiang", "Qingyuan", "Dongguan", "Zhongshan", "Chaozhou", "Jieyang", "Yunfu")
  )
  
  return(city_map_data)
}


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
  
  # Step 1: 查找所有符合新命名格式的文件
  all_files <- list.files(
    path = main_folder_path,
    
    # --- !! 这里是唯一的修改点 !! ---
    # 更新正则表达式以匹配 "yyyy_..." 开头的文件名
    pattern = "^\\d{4}_.*_monthly\\.xlsx$",
    # --- 修改结束 ---
    
    recursive = TRUE,
    full.names = TRUE
  )
  
  if (length(all_files) == 0) {
    stop("在指定文件夹及其子文件夹中没有找到任何匹配的文件。请检查路径和新的文件名格式。")
  }
  
  # Step 2: 循环处理每个文件 (这部分逻辑完全不变)
  all_data_long <- purrr::map_dfr(all_files, ~ {
    
    current_file_path <- .
    
    # 提取指标类型的逻辑不变，因为它依赖的是【文件夹名】，而不是文件名
    metric_type <- basename(dirname(current_file_path))
    
    processed_data <- readxl::read_xlsx(current_file_path) %>%
      dplyr::mutate(city_clean = stringr::str_trim(stringr::str_remove(city, "市"))) %>%
      dplyr::inner_join(city_map_df, by = c("city_clean" = "city_cn")) %>%
      tidyr::pivot_longer(
        cols = tidyr::matches("^\\d{4}-\\d{2}$"),
        names_to = "year_month",
        values_to = "value"
      ) %>%
      dplyr::mutate(metric_type = metric_type) %>%
      dplyr::select(city = city_en, year_month, metric_type, value)
    
    return(processed_data)
  })
  
  # Step 3: 分组汇总 (这部分逻辑也完全不变)
  final_summary <- all_data_long %>%
    dplyr::group_by(city, year_month, metric_type) %>%
    dplyr::summarise(
      mean_value = mean(value, na.rm = TRUE),
      .groups = 'drop'
    )
  final_summary <- final_summary %>%
    tidyr::pivot_wider(
      names_from = metric_type,  # 使用 metric_type 列的值作为新的列名
      values_from = mean_value   # 使用 mean_value 列的值填充新列
    )
  cat("汇总表已从长格式转换为宽格式。\n")
  output_path <- "~/NMDA/data/air_quality_new/month/guangdong_all_years_summary.xlsx"
  
  # 2. 使用 write_xlsx() 函数进行保存
  write_xlsx(final_summary, path = output_path)
  return(final_summary)
}



#' 为主数据框添加滞后的暴露数据（V3 - 接收宽格式数据）
#'
#' @param patient_data 主数据框，需要包含一个日期列和一个城市列。
#' @param summary_data_wide 【宽格式】的污染物汇总数据框。此数据框应包含一个城市列，
#'                          一个日期列，以及每个污染物作为单独列的数据。
#' @param date_col_patient 病人数据中日期列的名称 (应为 "YYYY-MM" 格式的文本)。
#' @param city_col_patient 病人数据中城市列的名称。
#' @param date_col_summary 汇总数据中日期列的名称。
#' @param city_col_summary 汇总数据中城市列的名称。
#' @param lags_vector 需要提取的滞后月数向量，例如 0:3。
#' @return 一个新的数据框，在主数据框的基础上，为每个污染物和每个滞后期都添加了新列。

add_lagged_exposure <- function(patient_data, 
                                summary_data_wide, 
                                date_col_patient = "Date of onset",
                                city_col_patient = "Residential address",
                                date_col_summary = "year_month",
                                city_col_summary = "city",
                                lags_vector = 0:3) {
  
  # --- 准备工作 ---
  
  # 1. 准备病人表：创建真实的 Date 对象用于计算
  patient_data_prepared <- patient_data %>%
    dplyr::mutate(
      onset_date_obj = lubridate::ymd(paste0(.data[[date_col_patient]], "-01"))
    )
  
  # 2. 准备汇总表：确保日期列是 Date 对象 (以防万一)
  summary_data_prepared <- summary_data_wide %>%
    dplyr::mutate(
      across(!!rlang::sym(date_col_summary), ~ lubridate::ymd(paste0(., "-01")))
    )
  
  # --- 核心逻辑：循环匹配每个滞后期 ---
  
  list_of_lagged_dfs <- purrr::map(lags_vector, ~{
    
    current_lag <- .
    
    patient_data_with_key <- patient_data_prepared %>%
      dplyr::mutate(
        target_month_obj = onset_date_obj %m-% months(current_lag)
      )
    
    # 创建连接键
    join_keys <- setNames(
      c(city_col_summary, date_col_summary), # 右表 (summary) 中的列名
      c(city_col_patient, "target_month_obj")   # 左表 (patient) 中的列名
    )
    
    # 直接与【宽格式】的汇总表进行连接
    lagged_data <- dplyr::left_join(
      patient_data_with_key,
      summary_data_prepared,
      by = join_keys
    )
    
    # 获取所有污染物列的名称
    id_cols <- c(city_col_summary, date_col_summary)
    pollutant_cols <- setdiff(names(summary_data_prepared), id_cols)
    
    lagged_data_renamed <- lagged_data %>%
      dplyr::rename_with(
        .cols = dplyr::all_of(pollutant_cols),
        .fn = ~ paste0(., "_M", current_lag)
      ) %>%
      dplyr::select(
        dplyr::one_of(names(patient_data)), 
        dplyr::starts_with(pollutant_cols)
      )
    
    return(lagged_data_renamed)
  })
  
  # --- 最后合并 ---
  final_result <- purrr::reduce(
    list_of_lagged_dfs,
    dplyr::left_join,
    by = names(patient_data)
  )
  
  return(final_result)
}

#' 对指定的污染物进行聚合、建模和结果汇总
#'
#' @param input_data 包含滞后暴露数据的原始数据框 (例如 my.dat)。
#' @param pollutant_name 一个字符串，代表要分析的污染物的基础名称 (例如 "AQI", "CO", "O3_24h")。
#' @param group_vars 一个字符向量，指定 count() 函数中除污染物外的分组变量。
#'
#' @return 一个列表，包含三项内容：
#'         1. aggregated_data: count() 之后聚合好的数据。
#'         2. models: 一个包含了四个 vglm 模型对象的列表。
#'         3. summary_table: 一个包含了所有模型系数和统计量的汇总数据框。

run_pollutant_analysis <- function(input_data, 
                                   pollutant_name, 
                                   group_vars = c("Residential address", "Date of onset1")) {
  
  # --- 步骤 1 和 2: 动态准备和聚合数据 (这部分不变) ---
  lag_cols <- paste0(pollutant_name, "_M", 0:3)
  
  if (!all(lag_cols %in% names(input_data))) {
    stop(paste("输入数据中缺少以下部分或全部列:", paste(lag_cols, collapse=", ")))
  }
  
  aggregated_data <- input_data %>%
    count(across(all_of(c(group_vars, lag_cols))), name = "n")
  
  # --- 步骤 3: 循环建模 (这部分不变) ---
  models_list <- purrr::map(lag_cols, ~{
    model_formula <- as.formula(paste("n ~", .x))
    vglm(model_formula, pospoisson, data = aggregated_data)
  })
  
  names(models_list) <- lag_cols
  
  # --- !! 步骤 4: 修改结果提取方法 !! ---
  
  # 由于 broom::tidy 不支持 vglm 对象，我们改用手动提取系数矩阵的方法
  # purrr::map_dfr 会循环每个模型，提取其汇总信息，并合并成一个整洁的数据框
  summary_table <- purrr::map_dfr(
    models_list,
    # 对于列表中的每个模型(.x)，执行以下操作...
    ~ {
      # 1. 获取模型的 summary() 对象
      model_summary <- summary(.x)
      
      # 2. vglm 模型的系数矩阵存储在 @coef3 这个位置
      coef_matrix <- model_summary@coef3
      
      # 3. 将这个矩阵转换为数据框，并将行名（即变量名）变成一个新列
      as.data.frame(coef_matrix) %>%
        tibble::rownames_to_column(var = "term")
    },
    # .id 参数会创建一个新列，用来指明每一行结果来自于哪个模型
    .id = "model"
  )
  
  # --- 步骤 5: 返回所有有用的结果 (这部分不变) ---
  return(
    list(
      aggregated_data = aggregated_data,
      models = models_list,
      summary_table = summary_table
    )
  )
}

extract_vglm_coeffs <- function(fit, model_name) {
  co <- as.data.frame(summary(fit)@coef3)
  co$term <- rownames(co)
  co$model <- model_name
  rownames(co) <- NULL
  co[, c("term", "Estimate", "Std. Error", "z value", "Pr(>|z|)")]
}


#' 创建并补全用于回归分析的面板数据
#'
#' 为指定的单个污染物，生成一个包含所有城市、所有月份的完整面板数据。
#' 没有病例的月份，病例数(n)记为0。
#'
#' @param pollutant_name 要分析的污染物的基础名称 (例如 "AQI")。
#' @param case_data 包含病例信息的原始数据框 (例如 my.dat)。
#' @param summary_wide_data 【宽格式】的污染物汇总数据，每个污染物一列。
#' @param city_map 中英文城市名字典。
#' @param start_date 研究开始日期，格式为 "YYYY-MM-DD"。
#' @param end_date 研究结束日期，格式为 "YYYY-MM-DD"。
#' @param case_city_col 病例数据中的城市列名。
#' @param case_date_col 病例数据中的年月列名 ("YYYY-MM"格式)。
#'
#' @return 一个完整、规整的面板数据框，可用于后续建模。

create_final_panel_data <- function(pollutant_name,
                                    case_data, 
                                    summary_wide_data,
                                    city_map,
                                    start_date = "2014-05-01", 
                                    end_date = "2024-12-01") {
  
  # --- 1. 创建“所有城市 x 所有月份”的完整网格 ---
  
  cities_of_interest <- unique(case_data$`Residential address`)
  full_month_sequence <- seq(as.Date(start_date), as.Date(end_date), by = "month")
  full_month_grid <- format(full_month_sequence, "%Y-%m")
  
  complete_grid <- tidyr::expand_grid(
    `Residential address` = cities_of_interest,
    `Date of onset1` = full_month_grid
  )
  
  # --- 2. 为完整网格的每一行匹配上【所有】污染物的滞后暴露数据 ---
  # 我们直接调用之前写的 add_lagged_exposure 函数！
  # 这会为我们生成一个包含所有污染物 M0-M3 暴露水平的“主数据面板”
  master_exposure_panel <- add_lagged_exposure(
    patient_data = complete_grid,
    summary_data_wide = summary_wide_data,
    date_col_patient = "Date of onset1",
    city_col_patient = "Residential address",
    lags_vector = 0:3
  )
  
  # --- 3. 计算每个城市每月的实际病例数 ---
  
  case_counts <- case_data %>%
    dplyr::count(
      `Residential address`, 
      `Date of onset1`, 
      name = "n"
    )
  
  # --- 4. 将病例数合并到主数据面板，并补零 ---
  
  lag_cols_to_select <- paste0(pollutant_name, "_M", 0:3)
  
  # 2. 在最后合并与筛选的步骤中，使用 all_of() 进行精确选择
  final_panel <- master_exposure_panel %>%
    dplyr::left_join(
      case_counts, 
      by = c("Residential address", "Date of onset1")
    ) %>%
    dplyr::mutate(n = tidyr::replace_na(n, 0)) %>%
    # 之前这里错误地使用了 starts_with()
    # 现在修正为 all_of()，它只会匹配 lag_cols_to_select 中【一模一样】的列名
    dplyr::select(
      `Residential address`,
      `Date of onset1`,
      n,
      dplyr::all_of(lag_cols_to_select)
    )
  
  
  return(final_panel)
}


#' 使用 glm() 对指定的污染物面板数据进行建模分析
#'
#' @param panel_data 一个补全了零值的、规整的面板数据框。
#' @param pollutant_name 要分析的污染物的基础名称 (例如 "AQI")。
#'
#' @return 一个列表，包含：
#'         1. models: 包含了四个 glm 模型对象的列表。
#'         2. summary_table: 一个包含了所有模型系数和统计量的汇总数据框。

run_glm_analysis <- function(panel_data, pollutant_name) {
  
  # 1. 动态生成四个滞后列的名称
  lag_cols <- paste0(pollutant_name, "_M", 0:3)
  
  # 检查面板数据中是否存在这些列
  if (!all(lag_cols %in% names(panel_data))) {
    stop(paste("输入数据中缺少以下部分或全部列:", paste(lag_cols, collapse=", ")))
  }
  
  # 2. 循环建模
  # 使用 purrr::map 来为每个滞后列运行一次 glm 模型
  models_list <- purrr::map(lag_cols, ~{
    # .x 代表当前的滞后列名 (例如 "AQI_M0")
    
    # 动态创建公式
    model_formula <- as.formula(paste("n ~", .x ))
    
    # 【关键变化】使用 glm() 和标准的 poisson family
    glm(model_formula, family = poisson(link = "log"), data = panel_data)
  })
  
  # 为模型列表命名
  names(models_list) <- lag_cols
  
  # 3. 【关键变化】使用 broom::tidy 提取结果
  # broom 可以完美处理 glm 模型的输出
  summary_table <- purrr::map_dfr(models_list, broom::tidy, .id = "model")
  
  # 4. 返回结果
  return(
    list(
      models = models_list,
      summary_table = summary_table
    )
  )
}


#' 对指定的两个污染物及其交互作用进行 GLM 建模分析
#'
#' @param panel_data 补全了零值的规整面板数据。
#' @param pollutant1 第一个污染物的名称。
#' @param pollutant2 第二个污染物的名称。
#' @param lag_period 滞后月数 (一个数字，例如 0, 1, 2, 或 3)。
#'
#' @return 一个由 broom::tidy 整理好的模型结果数据框。

run_two_pollutant_glm <- function(panel_data, pollutant1, pollutant2, lag_period) {
  
  # 1. 动态生成两个污染物在指定滞后期的列名
  lag_col1 <- paste0(pollutant1, "_M", lag_period)
  lag_col2 <- paste0(pollutant2, "_M", lag_period)
  
  # 检查数据中是否存在这些列
  if (!all(c(lag_col1, lag_col2) %in% names(panel_data))) {
    stop(paste("数据中缺少", lag_col1, "或", lag_col2))
  }
  
  # 2. 动态创建包含交互项的公式
  #    n ~ A * B 在 R 的公式中等价于 n ~ A + B + A:B
  model_formula <- as.formula(paste("n ~", lag_col1, "*", lag_col2))
  
  # 3. 运行 GLM 模型
  model_fit <- glm(model_formula, family = poisson(link = "log"), data = panel_data)
  
  # 4. 使用 broom::tidy 整理并返回结果
  return(broom::tidy(model_fit))
}


#' 创建按性别分层并补全的面板数据
#'
#' @param ... (参数和之前的 create_final_panel_data 基本一样)
#' @param gender_col 病例数据中性别列的名称。
#' @return 一个按性别分层、补全了零值的完整面板数据框。

create_gender_stratified_panel <- function(pollutant_name,
                                           case_data, 
                                           summary_wide_data,
                                           city_map,
                                           start_date = "2014-08-01", 
                                           end_date = "2024-12-01",
                                           case_city_col = "Residential address",
                                           case_date_col = "Date of onset1",
                                           gender_col = "gender") { # <-- 新增参数
  
  # --- 1. 创建“所有城市 x 所有月份 x 所有性别”的完整网格 ---
  cities_of_interest <- city_map$city_en
  full_month_sequence <- seq(as.Date(start_date), as.Date(end_date), by = "month")
  full_month_grid <- format(full_month_sequence, "%Y-%m")
  
  # 获取数据中所有的性别类别 (例如 c("Male", "Female"))
  gender_levels <- unique(case_data[[gender_col]])
  
  complete_grid <- tidyr::expand_grid(
    !!case_city_col := cities_of_interest,
    !!case_date_col := full_month_grid,
    !!gender_col := gender_levels # <-- 网格中加入了性别
  )
  
  # --- 2. 为完整网格匹配滞后暴露数据 ---
  master_exposure_panel <- add_lagged_exposure(
    patient_data = complete_grid,
    summary_data_wide = summary_wide_data,
    date_col_patient = case_date_col,
    city_col_patient = case_city_col,
    lags_vector = 0:3
  )
  
  # --- 3. 按【城市、月份、性别】聚合实际病例数 ---
  case_counts <- case_data %>%
    dplyr::count(
      .data[[case_city_col]], 
      .data[[case_date_col]], 
      .data[[gender_col]], # <-- count 时加入了性别
      name = "n"
    )
  
  # --- 4. 合并数据并补零 ---
  final_panel <- master_exposure_panel %>%
    dplyr::left_join(
      case_counts, 
      by = c(case_city_col, case_date_col, gender_col) # <-- 用三个键进行合并
    ) %>%
    dplyr::mutate(n = tidyr::replace_na(n, 0)) %>%
    dplyr::select(
      !!case_city_col, !!case_date_col, !!gender_col, n,
      dplyr::starts_with(pollutant_name)
    )
  
  return(final_panel)
}

#' 运行包含一个交互项的 GLM 模型
#'
#' @param panel_data 按性别分层的面板数据。
#' @param pollutant_name 要分析的污染物名称。
#' @param interaction_var 要检验的交互变量的名称 (这里是 "gender")。
#'
#' @return 一个包含所有滞后期模型结果的汇总数据框。

run_interaction_glm <- function(panel_data, pollutant_name, interaction_var = "gender") {
  
  lag_cols <- paste0(pollutant_name, "_M", 0:3)
  
  models_summary <- purrr::map_dfr(lag_cols, ~{
    
    lag_col <- .x
    
    # 创建包含交互项的公式，例如 n ~ AQI_M0 * gender
    model_formula <- as.formula(paste("n ~", lag_col, "*", interaction_var))
    
    model_fit <- glm(model_formula, family = poisson(link = "log"), data = panel_data)
    
    # 使用 broom::tidy 整理结果，并添加模型名称信息
    broom::tidy(model_fit) %>%
      dplyr::mutate(model_name = lag_col, .before = 1)
    
  }, .id = "lag_period") # .id 在这里没太大用，但保留也无妨
  
  return(models_summary)
}


#' 运行一个简单的单污染物 GLM 模型
#' @param panel_data 经过筛选的、只包含单一性别的数据面板。
#' @param pollutant_name 要分析的污染物名称。
#' @return 一个包含了所有滞后期模型结果的汇总数据框。

run_simple_glm <- function(panel_data, pollutant_name) {
  
  lag_cols <- paste0(pollutant_name, "_M", 0:3)
  
  # 【关键变化】我们现在使用 purrr::map 来循环，并手动构建每一行结果
  # 这样可以完全控制输出的列内容
  models_summary_list <- purrr::map(lag_cols, ~{
    
    current_lag_col <- .x # 当前的滞后列名，例如 "AQI_M0"
    
    model_formula <- as.formula(paste("n ~", current_lag_col))
    model_fit <- glm(model_formula, family = poisson(link = "log"), data = panel_data)
    
    # 使用 broom::tidy 整理模型结果
    tidy_result <- broom::tidy(model_fit)
    
    # 我们只关心污染物本身的那一行结果
    pollutant_effect_row <- tidy_result %>%
      dplyr::filter(term == current_lag_col)
    
    return(pollutant_effect_row)
  })
  
  # 使用 dplyr::bind_rows 将列表中的所有数据框合并起来
  final_summary <- dplyr::bind_rows(models_summary_list)
  
  return(final_summary)
}


tidy_polr <- function(model, model_name) {
  # Get coefficients and SE
  coef_table <- coef(summary(model))
  # Compute p-values
  p_values <- 2 * pt(abs(coef_table[, "t value"]), df = Inf, lower.tail = FALSE)
  # Create data frame
  res <- data.frame(
    term = rownames(coef_table),
    estimate = coef_table[, "Value"],
    std.error = coef_table[, "Std. Error"],
    statistic = coef_table[, "t value"],
    p.value = p_values,
    model = model_name
  )
  res
}

#' 从数据框中自动提取唯一的污染物基础名称列表
#'
#' 该函数会查找指定的标记列，并提取其后所有列的名称，
#' 然后移除 "_M#" 后缀，最终返回一个不重复的污染物名称向量。
#'
#' @param data 您的输入数据框 (例如 my.dat)。
#' @param marker_column 一个字符串，作为查找起点的“标记列”的名称。
#'
#' @return 一个包含了所有唯一污染物基础名称的字符向量。

get_pollutant_list <- function(data, marker_column = "Date of onset1") {
  
  # 确保 stringr 包已加载，以便使用 str_remove
  if (!requireNamespace("stringr", quietly = TRUE)) {
    stop("请先安装和加载 'stringr' 包: install.packages('stringr')")
  }
  
  # 1. 找到“标记列”的位置（索引）
  start_col_index <- which(names(data) == marker_column)
  
  # 2. 增加错误处理，以防找不到标记列
  if (length(start_col_index) == 0) {
    stop(paste("错误：在数据框中找不到指定的标记列 '", marker_column, "'"))
  }
  
  # 3. 增加一个警告，以防标记列是最后一列
  if (start_col_index == ncol(data)) {
    warning(paste("警告：标记列 '", marker_column, "' 是最后一列，其后没有发现污染物列。"))
    return(character(0)) # 返回一个空向量
  }
  
  # 4. 获取标记列之后的所有列名
  all_pollutant_lag_cols <- names(data)[(start_col_index + 1):ncol(data)]
  
  # 5. 移除 "_M#" 后缀，得到污染物的基础名称
  pollutant_base_names <- stringr::str_remove(all_pollutant_lag_cols, "_M\\d$")
  
  # 6. 获取不重复的污染物列表
  unique_pollutants <- unique(pollutant_base_names)
  
  # 7. 返回最终结果
  return(unique_pollutants)
}



#' 对指定的污染物，运行一套包含7个模型的有序逻辑斯蒂回归分析
#'
#' @param data 用于建模的数据框 (例如 reg.dat.severity)。
#' @param pollutant_name 一个字符串，代表要分析的污染物的基础名称 (例如 "AQI")。
#' @param outcome_var 一个字符串，代表因变量的名称 (默认为 "mRS")。
#'
#' @return 一个列表，包含：
#'         1. models: 一个包含了7个 polr 模型对象的命名列表。
#'         2. coefficients: 一个包含了所有模型系数和统计量的汇总数据框。
#'         3. anovas: 一个包含了所有模型Anova检验结果的汇总数据框。

run_ordinal_models <- function(data, pollutant_name, outcome_var = "mRS") {
  
  # ... (函数的前半部分，直到 models_list 的创建，都保持不变) ...
  lag_cols <- paste0(pollutant_name, "_M", 0:3)
  model_formulas_rhs <- list(
    Model1 = lag_cols[1], Model2 = lag_cols[2], Model3 = lag_cols[3], Model4 = lag_cols[4],
    Model5 = paste(lag_cols[1:2], collapse = " + "),
    Model6 = paste(lag_cols[1:3], collapse = " + "),
    Model7 = paste(lag_cols[1:4], collapse = " + ")
  )
  models_list <- purrr::map(model_formulas_rhs, ~{
    full_formula <- as.formula(paste(outcome_var, "~", .x))
    MASS::polr(full_formula, data = data, Hess = TRUE)
  })
  
  # --- !! 修改点: 使用您自定义的 tidy_polr 函数来提取系数 !! ---

  coeffs_summary <- purrr::imap_dfr(
    models_list, 
    # 对于每个模型(.x)和它的名字(.y)，都调用 tidy_polr
    ~ tidy_polr(model = .x, model_name = .y)
  )
  
  # --- 修改结束 ---
  
  # Anova 部分保持不变，因为 broom::tidy 能很好地处理 Anova 结果
  anova_summary <- purrr::map_dfr(models_list, ~ broom::tidy(car::Anova(.)), .id = "model_name")
  
  return(
    list(
      models = models_list,
      coefficients = coeffs_summary, # <-- 这里现在是您自定义函数的结果
      anovas = anova_summary
    )
  )
}


#' 创建按指定变量分层并补全的面板数据 (通用版)
#' @param strata_col 用于分层的列的名称 (例如 "gender_factor" 或 "age_group")
#' (其他参数和之前一样)

create_stratified_panel <- function(pollutant_name,
                                    case_data, 
                                    summary_wide_data,
                                    city_map,
                                    start_date = "2014-12-01", 
                                    end_date = "2024-12-01",
                                    case_city_col = "Residential address",
                                    case_date_col = "Date of onset1",
                                    strata_col) { # <-- 参数变得更通用
  
  cities_of_interest <- city_map$city_en
  full_month_sequence <- seq(as.Date(start_date), as.Date(end_date), by = "month")
  full_month_grid <- format(full_month_sequence, "%Y-%m")
  
  # 获取分层变量的所有水平
  strata_levels <- unique(case_data[[strata_col]])
  
  # 创建“所有城市 x 所有月份 x 所有分层水平”的完整网格
  complete_grid <- tidyr::expand_grid(
    !!case_city_col := cities_of_interest,
    !!case_date_col := full_month_grid,
    !!strata_col := strata_levels
  )
  
  # 为完整网格匹配滞后暴露数据
  master_exposure_panel <- add_lagged_exposure(
    patient_data = complete_grid,
    summary_data_wide = summary_wide_data,
    date_col_patient = case_date_col,
    city_col_patient = case_city_col,
    lags_vector = 0:3
  )
  
  # 按【城市、月份、分层变量】聚合实际病例数
  case_counts <- case_data %>%
    dplyr::count(
      .data[[case_city_col]], 
      .data[[case_date_col]], 
      .data[[strata_col]], # <-- 使用通用的分层变量
      name = "n"
    )
  
  # 合并数据并补零
  final_panel <- master_exposure_panel %>%
    dplyr::left_join(case_counts, by = c(case_city_col, case_date_col, strata_col)) %>%
    dplyr::mutate(n = tidyr::replace_na(n, 0)) %>%
    dplyr::select(
      !!case_city_col, !!case_date_col, !!strata_col, n,
      dplyr::starts_with(pollutant_name)
    )
  
  return(final_panel)
}


#' 使用 glm() 对指定的污染物面板数据进行建模分析（包含 offset）
#'
#' @param panel_data 一个【已补全零值】且【包含人口列】的规整面板数据框。
#' @param pollutant_name 要分析的污染物的基础名称 (例如 "AQI")。
#' @param pop_col 人口数据列的名称（字符串）。默认为 "population"。
#'
#' @return 一个列表，包含：
#'         1. models: 包含了四个 glm 模型对象的列表。
#'         2. summary_table: 一个包含了所有模型系数和统计量的汇总数据框。

run_glm_analysis_with_offset <- function(panel_data, pollutant_name, pop_col = "population") {
  
  # 1. 动态生成四个滞后列的名称
  lag_cols <- paste0(pollutant_name, "_M", 0:3)
  
  # 检查面板数据中是否存在这些列
  if (!all(lag_cols %in% names(panel_data))) {
    stop(paste("输入数据中缺少以下部分或全部列:", paste(lag_cols, collapse=", ")))
  }
  # 检查人口列是否存在
  if (!pop_col %in% names(panel_data)) {
    stop(paste("输入数据中缺少人口列:", pop_col))
  }
  
  # 2. 循环建模
  models_list <- purrr::map(lag_cols, ~{
    
    # 【关键修改】在公式中加入 offset 项
    model_formula <- as.formula(paste("n ~", .x, "+ offset(log(", pop_col, "))"))
    
    # 运行 glm 模型
    glm(model_formula, family = poisson(link = "log"), data = panel_data)
  })
  
  # 为模型列表命名
  names(models_list) <- lag_cols
  
  # 3. 使用 broom::tidy 提取结果
  summary_table <- purrr::map_dfr(models_list, broom::tidy, .id = "model")
  
  # 4. 返回结果
  return(
    list(
      models = models_list,
      summary_table = summary_table
    )
  )
}
# In functions.R

#' 创建按指定变量分层并补全的面板数据（V2 - 包含人口数据）
#' @param population_long_data 【长格式】的人口数据框，应包含 city_en, year, population 三列。
#' (其他参数不变)

create_stratified_panel_v2 <- function(pollutant_name,
                                       case_data, 
                                       summary_wide_data,
                                       city_map,
                                       population_long_data, # <-- 新增参数
                                       start_date = "2014-12-01", 
                                       end_date = "2024-12-01",
                                       case_city_col = "Residential address",
                                       case_date_col = "Date of onset1",
                                       strata_col) {
  
  cities_of_interest <- city_map$city_en
  full_month_sequence <- seq(as.Date(start_date), as.Date(end_date), by = "month")
  full_month_grid <- format(full_month_sequence, "%Y-%m")
  strata_levels <- unique(case_data[[strata_col]])
  
  # --- !! 修改点 1: 创建基础网格 !! ---
  # 我们先创建无名的数据框，再用 setNames() 命名，以替代 := 语法
  complete_grid_unnamed <- tidyr::expand_grid(
    cities_of_interest,
    full_month_grid,
    strata_levels
  )
  complete_grid <- setNames(complete_grid_unnamed, c(case_city_col, case_date_col, strata_col))
  
  # 为网格添加年份列并连接人口数据
  # --- !! 修改点 2: 创建连接键 !! ---
  join_keys_pop <- setNames("City", case_city_col) # 生成 c("Residential address" = "city_en")
  
  complete_grid_with_pop <- complete_grid %>%
    mutate(year = as.integer(substr(.data[[case_date_col]], 1, 4))) %>%
    left_join(population_long_data, by = c(join_keys_pop, "year" = "year"))
  
  # --- 后续逻辑不变 ---
  
  master_exposure_panel <- add_lagged_exposure(
    patient_data = complete_grid_with_pop,
    summary_data_wide = summary_wide_data,
    date_col_patient = case_date_col,
    city_col_patient = case_city_col,
    lags_vector = 0:3
  )
  
  case_counts <- case_data %>%
    dplyr::count(.data[[case_city_col]], .data[[case_date_col]], .data[[strata_col]], name = "n")
  
  final_panel <- master_exposure_panel %>%
    dplyr::left_join(case_counts, by = c(case_city_col, case_date_col, strata_col)) %>%
    dplyr::mutate(n = tidyr::replace_na(n, 0)) %>%
    dplyr::select(
      !!rlang::sym(case_city_col), !!rlang::sym(case_date_col), !!rlang::sym(strata_col), population, n,
      dplyr::starts_with(pollutant_name)
    )
  
  return(final_panel)
}


#' 使用 vglm() 运行零截断泊松回归模型
#'
#' @param reg_data 一个聚合后的数据框，其中 n >= 1。
#' @param pollutant_name 要分析的污染物的基础名称。
#' @return 一个包含了所有模型系数和统计量的汇总数据框。

run_vglm_analysis <- function(reg_data, pollutant_name) {
  
  # 1. 动态生成四个滞后列的名称
  lag_cols <- paste0(pollutant_name, "_M", 0:3)
  
  # 2. 循环建模
  models_list <- purrr::map(lag_cols, ~{
    # 动态创建公式
    model_formula <- as.formula(paste("n ~", .x))
    # 【关键】使用 vglm 和 pospoisson
    VGAM::vglm(model_formula, family = VGAM::pospoisson(), data = reg_data)
  })
  
  # 为模型列表命名
  names(models_list) <- lag_cols
  
  # 3. 手动提取结果
  # 我们之前已经解决了这个问题，现在直接使用
  summary_table <- purrr::map_dfr(
    models_list,
    ~ {
      # vglm 模型的系数矩阵存储在 @coef3 这个位置
      coef_matrix <- summary(.x)@coef3
      # 转换为数据框，并将行名（变量名）变成一个新列
      as.data.frame(coef_matrix) %>%
        tibble::rownames_to_column(var = "term")
    },
    .id = "model"
  )
  
  return(
    list(
      models = models_list,
      summary_table = summary_table
    )
  )
}

#' 运行带有协变量和 offset 的 GLM 模型
#'
#' @param panel_data 您的面板数据框。
#' @param pollutant_name 要分析的污染物的基础名称。
#' @param covariates 一个包含了所有协变量列名的字符向量。
#' @param pop_col 人口数据列的名称。
#' @return 一个包含了所有模型结果的汇总数据框。

run_adjusted_glm <- function(panel_data, pollutant_name, covariates, pop_col = "population") {
  
  # --- !! 新增的修復步驟 !! ---
  # 在運行模型前，將輸入的 tibble 強制轉換為標準的 data.frame
  # 這可以解決與舊版基礎 R 函數的兼容性問題
  panel_data <- as.data.frame(panel_data)
  # --- 修復結束 ---

  # --- 後續所有代碼保持不變 ---
  
  lag_cols <- paste0(pollutant_name, "_M", 0:3)
  
  covariates_string <- paste(covariates, collapse = " + ")
  
  models_list <- purrr::map(lag_cols, ~{
    
    model_formula <- as.formula(
      paste("n ~", .x, "+", covariates_string, "+ offset(log(", pop_col, "))")
    )
    
    glm(model_formula, family = poisson(link = "log"), data = panel_data)
  })
  
  names(models_list) <- lag_cols
  
  summary_table <- purrr::map_dfr(models_list, broom::tidy, .id = "model")
  
  return(
    list(
      models = models_list,
      summary_table = summary_table
    )
  )
}


#' 运行带有协变量的零截断泊松回归模型 (vglm)
#'
#' @param panel_data 您的面板数据框 (可以是完整的，函数内部会自动筛选 n > 0)。
#' @param pollutant_name 要分析的污染物的基础名称。
#' @param covariates 一个包含了所有协变量列名的字符向量。
#' @return 一个包含了所有模型结果的汇总数据框。

run_adjusted_vglm <- function(panel_data, pollutant_name, covariates) {
  
  # --- 1. 【关键】筛选出 n > 0 的数据子集 ---
  data_for_vglm <- panel_data %>%
    filter(n > 0)
  
  # 如果筛选后没有数据，则停止
  if (nrow(data_for_vglm) == 0) {
    warning(paste("对于污染物", pollutant_name, "，没有找到任何 n > 0 的数据行，已跳过建模。"))
    return(NULL)
  }
  
  # --- 2. 动态构建模型公式 (与之前类似，但无 offset) ---
  lag_cols <- paste0(pollutant_name, "_M", 0:3)
  covariates_string <- paste(covariates, collapse = " + ")
  
  models_list <- purrr::map(lag_cols, ~{
    # 动态创建包含协变量的公式
    model_formula <- as.formula(
      paste("n ~", .x, "+", covariates_string)
    )
    # 使用 vglm 和 pospoisson
    VGAM::vglm(model_formula, family = VGAM::pospoisson(), data = data_for_vglm)
  })
  
  names(models_list) <- lag_cols
  
  # --- 3. 提取结果 (使用 vglm 的手动提取方法) ---
  summary_table <- purrr::map_dfr(
    models_list,
    ~ as.data.frame(summary(.x)@coef3) %>%
      tibble::rownames_to_column(var = "term"),
    .id = "model"
  )
  
  return(
    list(
      models = models_list,
      summary_table = summary_table
    )
  )
}


#' 运行带有协变量和 offset 的 ordinal logistic regression 模型
#' 需要调用ordinal包
#' @param panel_data 您的面板数据框。
#' @param pollutant_name 要分析的污染物的基础名称。
#' @param covariates 一个包含了所有协变量列名的字符向量。
#' @param pop_col 人口数据列的名称。
#' @return 一个包含了所有模型结果的汇总数据框。

run_csf_clm <- function(panel_data, pollutant_name, covariates, pop_col = "population") {
  
  # --- !! 新增的修復步驟 !! ---
  # 在運行模型前，將輸入的 tibble 強制轉換為標準的 data.frame
  # 這可以解決與舊版基礎 R 函數的兼容性問題
  panel_data <- as.data.frame(panel_data)
  # --- 修復結束 ---
  
  # 确保 CSFRank 是一个有序因子
  if (!is.ordered(panel_data$CSFrank)) {
    panel_data$CSFrank <- factor(panel_data$CSFrank, ordered = TRUE)
  }
  
  # --- 後續所有代碼保持不變 ---
  
  lag_cols <- paste0(pollutant_name, "_M", 0:3)
  
  covariates_string <- paste(covariates, collapse = " + ")
  
  models_list <- purrr::map(lag_cols, ~{
    
    model_formula <- as.formula(
      paste("CSFrank ~", .x, "+", covariates_string, "+ offset(log(", pop_col, "))")
    )
    
    ordinal::clm(model_formula, data = panel_data)
  })
  
  names(models_list) <- lag_cols
  
  summary_table <- purrr::map_dfr(models_list, broom::tidy, .id = "model")
  
  return(
    list(
      models = models_list,
      summary_table = summary_table
    )
  )
}

