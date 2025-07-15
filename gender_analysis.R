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
library(knitr)
source("functions.R")
setwd("~/NMDA/")

main_folder <- "~/NMDA/data/air_quality_new/month"
my.dat<-read_xlsx("./data/air_quality_new/NMDA1_with_pollution.xlsx")
my.dat <- my.dat %>%
  mutate(
    # 创建一个新的因子列 gender_factor
    gender_factor = factor(`Gender（0=male,1=female）`, 
                           levels = c(0, 1), # 指定原始值
                           labels = c("Male", "Female")) # 指定它们对应的新标签
  )%>%
  
  # 第二步：【新增】使用 relocate() 将 gender_factor 移动到指定位置
  relocate(gender_factor, .before = `Date of onset1`)


na_counts <- colSums(is.na(my.dat))
na_summary <- data.frame(
  column = names(na_counts),
  na_count = as.vector(na_counts)
)
# Sort, by the highest NA count:
na_summary[order(-na_summary$na_count), ]


city_map <- get_city_map()

all_metrics_summary <- process_all_subfolder_data(
  main_folder_path = main_folder,
  city_map_df = city_map
)

pollutants_to_analyze <- get_pollutant_list(my.dat,"Date of onset1")

output_folder <- "gender_result"
dir.create(output_folder, showWarnings = FALSE)
markdown_report_parts <- list()

cat("\n--- 开始批量生成 Markdown 报告内容 ---\n")

for (pollutant in pollutants_to_analyze) {
  
  cat(paste0("正在处理: ", pollutant, " ...\n"))
  
  # --- a. 运行模型分析 (和之前完全一样) ---
  panel_data <- create_gender_stratified_panel(
    pollutant_name = pollutant,
    case_data = my.dat,
    summary_wide_data = all_metrics_summary,
    city_map = city_map,
    gender_col = "gender_factor"
  )
  
  interaction_results <- run_interaction_glm(
    panel_data = panel_data,
    pollutant_name = pollutant,
    interaction_var = "gender_factor"
  )
  
  # 为男性运行【新版】模型函数
  male_results <- run_simple_glm(
    panel_data = filter(panel_data, gender_factor == "Male"),
    pollutant_name = pollutant
  ) %>% mutate(gender = "Male", .before = 1)
  
  # 为女性运行【新版】模型函数
  female_results <- run_simple_glm(
    panel_data = filter(panel_data, gender_factor == "Female"),
    pollutant_name = pollutant
  ) %>% mutate(gender = "Female", .before = 1)
  
  stratified_results <- bind_rows(male_results, female_results) %>% filter(term != "(Intercept)")
  
  # --- b. 【新】为两个结果表格添加显著性星号 ---
  
  interaction_with_stars <- interaction_results %>%
    mutate(
      signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))
    )
  
  stratified_with_stars <- stratified_results %>%
    mutate(
      signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))
    )
  
  # --- c. 将分析结果转换为【Markdown 格式】的代码字符串 ---
  
  # Markdown 格式的标题
  header_md <- paste0("\n## 分析报告: ", pollutant, "\n")
  sub_header_1_md <- "\n### 1. 交互作用模型结果\n"
  sub_header_2_md <- "\n### 2. 按性别分层分析结果\n"
  
  # 表格1：交互模型结果
  # 注意 format = "markdown"
  table_1_md <- knitr::kable(interaction_with_stars, format = "markdown", caption = "交互作用模型", digits = 4)
  
  # 表格2：分层分析结果
  table_2_md <- knitr::kable(stratified_with_stars, format = "markdown", caption = "分层分析", digits = 4)
  
  # --- d. 将当前污染物的所有 Markdown 内容组合起来，存入列表 ---
  
  # kable() 返回的是一个字符向量，我们用 paste(..., collapse = "\n") 将它合并成一个字符串
  pollutant_section_md <- paste(
    header_md,
    sub_header_1_md,
    paste(table_1_md, collapse = "\n"),
    sub_header_2_md,
    paste(table_2_md, collapse = "\n"),
    collapse = "\n\n"
  )
  
  markdown_report_parts[[pollutant]] <- pollutant_section_md
}


# =================================================================
# 最后一步：将所有 Markdown 片段组合成一个完整文件并保存
# =================================================================

# 添加一个主标题
main_title_md <- "# 多污染物性别交互效应分析报告\n"

# 组合所有内容
final_markdown_content <- paste(
  main_title_md,
  paste(markdown_report_parts, collapse = "\n---\n"), # 用 Markdown 的水平分割线分隔每个污染物
  collapse = "\n"
)

# 定义最终的输出文件路径
output_file <- file.path(output_folder, "gender_interaction_full_report.md")

# 写入文件
writeLines(final_markdown_content, con = output_file)

cat("\n--- 所有处理完成！ ---\n")
cat("完整的 Markdown 报告已成功保存到:", output_file, "\n")
