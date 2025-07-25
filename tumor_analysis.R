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
my.dat_prepared <- my.dat %>%
  
  # 1. 创建肿瘤情况的因子变量
  mutate(
    tumor_group = factor(case_when(
      # 将 0 或者 "0" 都统一标记为 "No_Tumor"
      tumor == 0 | tumor == "0" ~ "No_Tumor",
      # 如果值不是 NA 也不是 0，就保留它本身（即各种肿瘤的英文名）
      !is.na(tumor) ~ as.character(tumor),
      # 其他情况（主要是 NA）可以标记为 "Unknown"
      TRUE ~ "Unknown"
    ))
  ) %>%
  
  # 2. 【重要】将 "No_Tumor" 设置为参照组，便于模型解读
  mutate(tumor_group = relevel(tumor_group, ref = "No_Tumor")) %>%
  
  # 3. 调整列的顺序，防止新列被当成污染物
  relocate(tumor_group, .before = `Date of onset1`)



pollutants_to_analyze <- get_pollutant_list(my.dat_with_age, "Date of onset1")
city_map <- get_city_map()

all_metrics_summary <- process_all_subfolder_data(
  main_folder_path = main_folder,
  city_map_df = city_map
)

output_folder <- "tumor_result"
dir.create(output_folder, showWarnings = FALSE)
markdown_report_parts <- list()
cat("\n--- 开始批量生成肿瘤情况交互作用分析报告 ---\n")

for (pollutant in pollutants_to_analyze) {
  
  cat(paste0("正在处理: ", pollutant, " ...\n"))
  
  # a. 生成按【肿瘤情况】分层的面板数据
  panel_data <- create_stratified_panel(
    pollutant_name = pollutant,
    case_data = my.dat_prepared, # <-- 使用我们简化的数据
    summary_wide_data = all_metrics_summary,
    city_map = city_map,
    strata_col = "tumor_group" # <-- 按肿瘤分组列进行分层
  )
  
  # b. 运行交互作用模型
  interaction_results <- run_interaction_glm(
    panel_data = panel_data,
    pollutant_name = pollutant,
    interaction_var = "tumor_group"
  )%>%
    mutate(
      signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))
    )
  
  
  table_1_md <- knitr::kable(interaction_results, format = "markdown", caption = "交互作用模型结果", digits = 4)
  
  # --- c. 运行并整理【分层分析】结果 ---
  
  # 从数据中动态获取所有的肿瘤分组（包括 "No_Tumor"）
  strata_levels <- unique(panel_data$tumor_group)
  
  stratified_results <- purrr::map_dfr(strata_levels, ~{
    run_simple_glm(
      panel_data = filter(panel_data, tumor_group == .x),
      pollutant_name = pollutant
    )
  }) %>%
    mutate(tumor_group = rep(strata_levels, each = 4), .before = 1) %>%
    mutate(
      signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))
    )
  
  table_2_md <- knitr::kable(stratified_results, format = "markdown", caption = "按肿瘤情况分层分析结果", digits = 4)
  
  # --- d. 将所有 Markdown 内容组合起来，存入列表 ---
  pollutant_section_md <- paste(
    paste0("## 分析报告: ", pollutant),
    "\n### 1. 与肿瘤情况的交互作用模型",
    paste(table_1_md, collapse = "\n"),
    "\n### 2. 按肿瘤情况分层分析",
    paste(table_2_md, collapse = "\n"),
    collapse = "\n\n"
  )
  
  markdown_report_parts[[pollutant]] <- pollutant_section_md
}


# =================================================================
# 最后一步：将所有 Markdown 片段组合成一个完整文件并保存
# =================================================================
main_title_md <- "# 污染物与肿瘤情况交互效应分析报告\n"
final_markdown_content <- paste(
  main_title_md,
  paste(markdown_report_parts, collapse = "\n\n---\n\n"),
  collapse = "\n"
)
output_file <- file.path(output_folder, "tumor_interaction_full_report.md")
writeLines(final_markdown_content, con = output_file)

cat("\n--- 所有处理完成！ ---\n")
cat("完整的 Markdown 报告已成功保存到:", output_file, "\n")