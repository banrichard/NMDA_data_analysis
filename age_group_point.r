library(dplyr)
library(purrr)
library(tidyr)
library(stringr)
library(lubridate)
library(knitr)
library(broom)
library(lmtest)

# 加載您的自定義函數
source("functions.R")
setwd("~/NMDA/")
main_folder <- "~/NMDA/data/air_quality_new/month"
my.dat.raw <- readxl::read_xlsx("./NMDA_with_population_sex_ratio_age_portion.xlsx")
summary_wide <- process_all_subfolder_data(
  main_folder_path = main_folder,
  city_map_df = city_map
)

my.dat.raw <- my.dat.raw %>%
  rename(
    `Brainstem dysfunction` = `Brainstem dysfunction（0=none; 1=gaze paresis; 2=tube feeding; 3=ventilator care due to hypoventilation）`,
    `Gender` = `Gender（0=male,1=female）`
  ) 
my.dat.raw<- my.dat.raw %>%relocate('sex_ratio_MvsW','age_014_protion', .before = `Date of onset1`)
pollutants_to_analyze <- get_pollutant_list(data = my.dat.raw, marker_column = "Date of onset1")
# b. 【關鍵】創建聚合面板數據
#    我們按城市和月份分組，計算病例數 n 和平均年齡 Age
panel_data_agg <- my.dat.raw %>%
  group_by(`Residential address`, `Date of onset1`) %>%
  summarise(
    n = n(),
    # 关键：我们保留每个组的平均年龄，以及不变的污染物值
    Age = mean(as.numeric(Age), na.rm = TRUE),
    across(starts_with(c("AQI_", "CO_", "SO2_", "NO2_", "O3_", "PM")), first) # 假设污染物值在组内不变
  ) %>%
  ungroup() %>%
  filter(!is.na(Age)) # 确保年龄数据有效

# --- 3. 執行最優切點搜索 ---
#    为了演示，我们只对 AQI 的 M0 滞后期进行分析
#    您可以将其放入一个循环中，对所有污染物和滞后期进行分析
markdown_parts <- list()
markdown_parts[["main_title"]] <- "# 最优年龄切点分析报告\n"
# a. 定义分析参数
cat("\n\n==================== 最優年齡切點分析報告 ====================\n")

# 使用一個 for 循環，遍歷所有您感興趣的污染物
for (pollutant in pollutants_to_analyze) {
  
  cat(paste0("\n\n----------- 正在為污染物: ", pollutant, " 進行分析 -----------\n"))
  markdown_parts[[paste0("header_", pollutant)]] <- paste0("## 分析污染物: ", pollutant, "\n")
  best_cut_2_groups <- find_optimal_age_cuts(
    panel_data = panel_data_agg,
    pollutant_name = pollutant,
    num_groups = 2,
    age_range = c(15, 65)
  )
  
  # b. 搜索“三組劃分”的最佳切點
  best_cut_3_groups <- find_optimal_age_cuts(
    panel_data = panel_data_agg,
    pollutant_name = pollutant,
    num_groups = 3,
    age_range = c(15, 65)
  )
  markdown_parts[[paste0("subheader2_", pollutant)]] <- "\n### 两组划分 (Best 2-Group Split)\n"
  if (!is.null(best_cut_2_groups) && nrow(best_cut_2_groups) > 0) {
    # 【改進】為表格標註也加上污染物名稱
    md_table_2_groups <- best_cut_2_groups %>%
      select(`最佳切点` = cut_points, `模型全局 p-value` = model_global_p_value) %>%
      knitr::kable(
        format = "markdown", digits = 4, 
        caption = paste0("两组划分的最佳方案 (", pollutant, ")")
      )
    markdown_parts[[paste0("table2_", pollutant)]] <- paste(md_table_2_groups, collapse = "\n")
  } else {
    markdown_parts[[paste0("table2_", pollutant)]] <- "在指定的年龄范围内，未能找到稳定的两组划分方案。\n"
  }
  
  markdown_parts[[paste0("subheader3_", pollutant)]] <- "\n### 三组划分 (Best 3-Group Split)\n"
  if (!is.null(best_cut_3_groups) && nrow(best_cut_3_groups) > 0) {
    md_table_3_groups <- best_cut_3_groups %>%
      select(`最佳切点` = cut_points, `模型全局 p-value` = model_global_p_value) %>%
      knitr::kable(
        format = "markdown", digits = 4, 
        caption = paste0("三组划分的最佳方案 (", pollutant, ")")
      )
    markdown_parts[[paste0("table3_", pollutant)]] <- paste(md_table_3_groups, collapse = "\n")
  } else {
    markdown_parts[[paste0("table3_", pollutant)]] <- "在指定的年龄范围内，未能找到稳定的三组划分方案。\n"
  }
}

# --- 4. 將所有 Markdown 片段組合起來，並以 UTF-8 編碼寫入文件 ---
cat("\n--- 正在生成最终的 Markdown 报告文件 ---\n")

# a. 將列表中的所有部分用分隔符組合起來
final_markdown_content <- paste(markdown_parts, collapse = "\n\n")

# b. 創建結果文件夾並寫入 .md 文件
report_dir <- "age_cutpoint_report"
dir.create(report_dir, showWarnings = FALSE)
output_file <- file.path(report_dir, "optimal_age_cuts_report.md")

# 使用一個明確指定了 UTF-8 編碼的文件連接來寫入，防止中文亂碼
file_conn <- file(output_file, "w", encoding = "UTF-8")
writeLines(final_markdown_content, con = file_conn)
close(file_conn)

cat("\n--- 所有分析流程执行完毕！ ---\n")
cat("完整的 Markdown 报告已成功保存到:", output_file, "\n")
