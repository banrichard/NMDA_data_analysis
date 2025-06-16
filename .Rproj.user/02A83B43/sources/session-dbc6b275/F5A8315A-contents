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

