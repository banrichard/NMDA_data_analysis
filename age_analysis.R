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
my.dat_with_age <- my.dat %>%
  
  # --- !! 新增的关键步骤：安全转换年龄列 !! ---
  
  # 1. 先将 Age 列强制转为字符（以防它是因子等其他类型），然后再转为数值
  #    as.numeric() 会自动将无法转换的文本变成 NA
  mutate(age_numeric = as.numeric(as.character(Age))) %>%
  
  # --- 修改点 ---
  # 2. 现在，让 cut() 函数作用于我们新创建的【数值型】age_numeric 列
  mutate(
    age_group = cut(
      age_numeric, # <-- 使用新的数值列
      breaks = c(-Inf, 17, 39, Inf),
      labels = c("<18", "18-39", ">=40"),
      right = TRUE
    )
  ) %>%
  
  # 3. 像之前一样，调整列的顺序
  relocate(age_group, age_numeric, .before = `Date of onset1`)
pollutants_to_analyze <- get_pollutant_list(my.dat_with_age, "Date of onset1")
city_map <- get_city_map()

all_metrics_summary <- process_all_subfolder_data(
  main_folder_path = main_folder,
  city_map_df = city_map
)

output_folder <- "age_result"
dir.create(output_folder, showWarnings = FALSE)
markdown_report_parts <- list()

cat("\n--- 开始批量生成包含分层分析的 Markdown 报告内容 ---\n")

for (pollutant in pollutants_to_analyze) {
  
  cat(paste0("正在处理: ", pollutant, " ...\n"))
  
  # --- a. 准备按年龄分层的面板数据 (和之前一样) ---
  panel_data <- create_stratified_panel(
    pollutant_name = pollutant,
    case_data = my.dat_with_age,
    summary_wide_data = all_metrics_summary,
    city_map = city_map,
    strata_col = "age_group"
  )
  
  # --- b. 生成【交互模型】的结果和 Markdown 表格 ---
  interaction_results <- run_interaction_glm(
    panel_data = panel_data,
    pollutant_name = pollutant,
    interaction_var = "age_group"
  ) %>%
    mutate(
      signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))
    )
  
  table_1_md <- knitr::kable(
    interaction_results, format = "markdown", 
    caption = "交互作用模型结果", digits = 4
  )
  
  # --- c. 【新增】生成【分层分析】的结果和 Markdown 表格 ---
  
  # 使用 purrr::map_dfr 优雅地对每个年龄组进行循环和建模
  stratified_results <- purrr::map_dfr(c("<18", "18-39", ">=40"), ~{
    
    # 对当前年龄组的数据运行简单的 GLM 分析
    run_simple_glm(
      panel_data = filter(panel_data, age_group == .x),
      pollutant_name = pollutant
    )
  }) %>%
    # 添加年龄组和显著性星号等信息
    mutate(
      age_group = rep(c("<18", "18-39", ">=40"), each = 4), # 添加年龄组标签
      .before = 1
    )%>%
    mutate(
      signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))
    )
  
  table_2_md <- knitr::kable(
    stratified_results, format = "markdown", 
    caption = "按年龄段分层分析结果", digits = 4
  )
  
  # --- d. 将【所有】Markdown 内容组合起来，存入列表 ---
  
  pollutant_section_md <- paste(
    paste0("## 分析报告: ", pollutant),
    "\n### 1. 交互作用模型结果",
    "此表格用于检验污染物效应是否存在年龄差异。请重点关注交互项（例如 `SO2_M0:age_group18-39`）的 p.value。",
    paste(table_1_md, collapse = "\n"),
    "\n### 2. 按年龄段分层分析结果",
    "此表格分别展示了污染物对每个年龄段人群的影响大小，便于直接比较。",
    paste(table_2_md, collapse = "\n"),
    collapse = "\n\n"
  )
  
  markdown_report_parts[[pollutant]] <- pollutant_section_md
}


# =================================================================
# 最后一步：将所有 Markdown 片段组合成一个完整文件并保存
# =================================================================

# ... (这部分和之前完全一样) ...
main_title_md <- "# 多污染物年龄段交互效应与分层分析报告\n"
final_markdown_content <- paste(
  main_title_md,
  paste(markdown_report_parts, collapse = "\n\n---\n\n"),
  collapse = "\n"
)
output_file <- file.path(output_folder, "age_stratified_full_report.md")
writeLines(final_markdown_content, con = output_file)

cat("\n--- 所有处理完成！ ---\n")
cat("完整的 Markdown 报告已成功保存到:", output_file, "\n")