library(readxl)
library(lubridate)
library(dplyr)
library(stringr)
library(tidyr)
library(writexl)
library(purrr)
library(pscl)
library(VGAM)
library(scatterplot3d)
# library(plot3D)
library(knitr)
source("functions.R")

setwd("~/NMDA/")
main_folder <- "~/NMDA/data/air_quality_new/month"
my.dat<-read_xlsx("./data/air_quality_new/NMDA1_with_pollution.xlsx")

city_map <- get_city_map()
all_metrics_summary <- process_all_subfolder_data(
  main_folder_path = main_folder,
  city_map_df = city_map
)


na_counts <- colSums(is.na(my.dat))
na_summary <- data.frame(
  column = names(na_counts),
  na_count = as.vector(na_counts)
)
# Sort, by the highest NA count:
na_summary[order(-na_summary$na_count), ]

start_col_index <- which(names(my.dat) == "Date of onset1")

# 获取 "Date of onset1" 之后的所有列名
all_pollutant_lag_cols <- names(my.dat)[(start_col_index + 1):ncol(my.dat)]

# 移除 "_M0", "_M1" 等后缀，得到污染物的基础名称
pollutant_base_names <- str_remove(all_pollutant_lag_cols, "_M\\d$")

# 获取不重复的污染物列表，这就是我们要循环的对象
pollutants_to_analyze <- unique(pollutant_base_names)

list_of_final_panels <- purrr::map(pollutants_to_analyze, ~{
  
  cat(paste0("\n正在为 '", .x, "' 生成完整的面板数据...\n"))
  
  create_final_panel_data(
    pollutant_name = .x,
    case_data = my.dat,
    summary_wide_data = all_metrics_summary,
    city_map = city_map
  )
})
names(list_of_final_panels) <- pollutants_to_analyze
list_of_final_panels <- purrr::map(
  list_of_final_panels, 
  ~{
    # .x 代表当前正在处理的数据框 (例如，第一次是 AQI 的面板数据)
    
    # 筛选出 year_month 大于或等于 "2014-08" 的所有行
    filtered_df <- .x %>%
      dplyr::filter(`Date of onset1` >= "2014-08")
    
    # 返回筛选后的数据框
    return(filtered_df)
  }
)

list_of_glm_results <- purrr::map(pollutants_to_analyze, ~{
  
  pollutant_name <- .x
  cat(paste0("\n正在为 ", pollutant_name, " 运行 GLM 模型...\n"))
  
  # 从列表中获取对应污染物的数据面板
  current_panel <- list_of_final_panels[[pollutant_name]]
  
  # 调用我们新的 GLM 分析函数
  run_glm_analysis(
    panel_data = current_panel,
    pollutant_name = pollutant_name
  )
})

names(list_of_glm_results) <- pollutants_to_analyze
for (pollutant in pollutants_to_analyze) {
  
  # --- 打印一个标题，方便区分 ---
  cat("\n=========================================\n")
  cat("          分析结果: ", pollutant, "\n")
  cat("=========================================\n")
  
  # --- 从大列表中，根据当前的污染物名称提取对应的结果 ---
  current_result <- list_of_glm_results[[pollutant]]$summary_table
  glm_summary <- current_result %>%
    mutate(
      # cut() 函数会根据我们设定的 p.value 区间，自动给出对应的星号标签
      signif = cut(
        p.value, # 直接使用 broom::tidy 生成的 p.value 列
        breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf),
        labels = c("***", "**", "*", ".", "") # 从极度显著到不显著
      )
    )
  # --- 现在，您可以对 current_result 做任何您想做的事 ---
  
  # 例如，打印该污染物的汇总表
  analysis_table<-kable(glm_summary, digits = 4, align = "c", caption = paste0("Summary of ",pollutant," Results"), format = "html")
  
  # Write it to an HTML file
  print(glm_summary)
  cat(analysis_table, file = paste0("./report_result/",pollutant,"_summary.html"))  
}



