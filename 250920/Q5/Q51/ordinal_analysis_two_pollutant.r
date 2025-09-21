library(readxl)
library(writexl)
library(dplyr)
library(stringr)
library(purrr)
library(tidyr)
library(VGAM)
library(knitr)
library(kableExtra)
library(corrplot)

# --- 2. 数据准备 ---
setwd("~/NMDA/")
source("~/NMDA/functions.R") # 确保其中有 get_pollutant_list 和 run_vglm_analysis 函数
# a. 读取原始病人数据
my.dat <- readxl::read_xlsx("./NMDA_with_population_sex_ratio_age_portion.xlsx")%>%
  relocate(sex_ratio_MvsW,age_014_protion, .before = `Date of onset1`)
main_folder <- "~/NMDA/data/air_quality_new/month"
city_map <- get_city_map()
summary_wide <- process_all_subfolder_data(
  main_folder_path = main_folder,
  city_map_df = city_map
)
my.dat <- my.dat %>%
  rename(
    `Brainstem dysfunction` = `Brainstem dysfunction（0=none; 1=gaze paresis; 2=tube feeding; 3=ventilator care due to hypoventilation）`
  )

# b. 准备城市名字典（用于获取完整的城市列表，以防万一）

symptom_columns <- c(
  "Seizures", "Memory dysfunction", "Psychiatric symptoms", "Coma", 
  "Language problem", "Dyskinesia/dystonia", 
  "Gait instability and ataxia", "Brainstem dysfunction"
)


# 3. 【关键】使用 across() 将所有症状列转换为有序因子
#    我们假设列中的值（无论是数字还是文本）已经自然有序
my.dat_prepared <- my.dat %>%
  mutate(
    across(
      all_of(symptom_columns), 
      # 将每一列都转换为因子，并设定为有序 (ordered = TRUE)
      ~ factor(., ordered = TRUE)
    )
  )
brainstem_level_order <- c(
  "0", "1", "2", "3", 
  "1+2", "1+3", "2+3", 
  "1+2+3"
)
my.dat_prepared <- my.dat_prepared %>%
  mutate(
    `Brainstem dysfunction` = factor(
      `Brainstem dysfunction`, 
      levels = brainstem_level_order, 
      ordered = TRUE
    )
  )

purrr::walk(symptom_columns, ~{
  
  symptom_name <- .x
  
  # 使用 table() 來查看這個症狀列到底有幾個有效的、非 NA 的類別
  level_distribution <- table(my.dat_prepared[[symptom_name]])
  
  cat("\n--- 正在檢查症狀: '", symptom_name, "' ---\n")
  print(level_distribution)
  cat("有效類別數量:", length(level_distribution), "\n")
})

pollutants_to_analyze <- get_pollutant_list(data = my.dat, marker_column = "Date of onset1")
canonical_pollutants <- tibble(original_name = pollutants_to_analyze) %>%
  mutate(base_name = str_remove(original_name, "_.*h$")) %>%
  group_by(base_name) %>%
  summarise(canonical_name = original_name[which.min(nchar(original_name))]) %>%
  pull(canonical_name)

# b. 生成两两组合和三三组合
two_pollutant_combos <- as.list(as.data.frame(combn(canonical_pollutants, 2)))
three_pollutant_combos <- as.list(as.data.frame(combn(canonical_pollutants, 3)))



# --- 4. 自動化分析與報告生成 ---
# a. 初始化 Markdown 片段列表和結果文件夾
report_dir <- "/Users/banlujie/NMDA/250920/Q5/Q52"
dir.create(report_dir, showWarnings = FALSE)
html_parts <- list()
markdown_parts <- list("# 多污染物联合效应分析報告\n")

# b. 核心循環
cat("--- 開始批量運行所有模型 ---\n")

for (outcome in symptom_columns) {
  
  cat(paste0("\n--- 正在分析結局: ", outcome, " ---\n"))
  
  # i. 為當前結局添加一個大的 HTML 標題
  outcome_header_html <- paste0("<h2>症状: ", outcome, "</h2>")
  
  # # --- ii. 分析兩污染物模型 ---
  # subheader2_html <- "<h3>两污染物模型结果</h3>"
  # 
  # two_pollutant_results <- purrr::map_dfr(two_pollutant_combos, ~{
  #   purrr::map_dfr(0:3, ~{
  #     run_analysis_model(my.dat_prepared, outcome, .y, .x) %>% 
  #       { if (!is.null(.)) mutate(., lag = .x) else tibble() }
  #   }, .y = .x, .id = "lag_id_unused")
  # }, .id = "combo_id")
  # 
  # # 檢查是否有結果，然後生成 HTML 表格
  # if(nrow(two_pollutant_results) > 0) {
  #   table2_html <- two_pollutant_results %>%
  #     mutate(signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))) %>%
  #     knitr::kable(format = "html", digits = 3, caption = "两污染物模型汇总") %>%
  #     kable_styling(bootstrap_options = c("striped", "hover", "condensed"), full_width = FALSE)
  # } else {
  #   table2_html <- "<p><i>(无有效结果)</i></p>"
  # }
  # 
  # --- iii. 分析三污染物模型 ---
  subheader3_html <- "<h3>三污染物模型结果</h3>"

  three_pollutant_results <- purrr::map_dfr(three_pollutant_combos, ~{
    purrr::map_dfr(0:3, ~{
      run_analysis_model(my.dat_prepared, outcome, .y, .x) %>%
        { if (!is.null(.)) mutate(., lag = .x) else tibble() }
    }, .y = .x, .id = "lag_id_unused")
  }, .id = "combo_id")

  if(nrow(three_pollutant_results) > 0) {
    table3_html <- three_pollutant_results %>%
      mutate(signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))) %>%
      knitr::kable(format = "html", digits = 3, caption = "三污染物模型汇总") %>%
      kable_styling(bootstrap_options = c("striped", "hover", "condensed"), full_width = FALSE)
  } else {
    table3_html <- "<p><i>(無有效结果)</i></p>"
  }
  
  # iv. 將當前結局的所有 HTML 內容組合起來，存入列表
  html_parts[[outcome]] <- paste(
    outcome_header_html,
    # subheader2_html,
    # table2_html,
    subheader3_html,
    table3_html,
    collapse = "\n\n"
  )
}

# --- 4. 將所有 HTML 片段組合起來，並以 UTF-8 編碼寫入一個【完整的】HTML 文件 ---

# a. 創建 HTML 文件的頭部和尾部
html_full_header <- '
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>多污染物联合效应分析報告</title>
<style>
  body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif; margin: 2em; line-height: 1.6; }
  h1, h2, h3 { color: #333; border-bottom: 1px solid #ddd; padding-bottom: 5px; }
  table { border-collapse: collapse; margin: 1.5em 0; }
  hr { border: 1px solid #eee; margin: 2.5em 0; }
</style>
</head>
<body>
<h1>多污染物联合效应分析報告</h1>
'
html_footer <- '</body></html>'

# b. 組合所有內容
final_html_content <- paste(
  html_full_header,
  paste(html_parts, collapse = "<hr>"), # 用水平線分隔每個結局的分析
  html_footer,
  collapse = "\n"
)

# c. 創建結果文件夾並以 UTF-8 編碼寫入文件
output_file <- file.path(report_dir, "multi_pollutant_full_report.html")

file_conn <- file(output_file, "w", encoding = "UTF-8")
writeLines(final_html_content, con = file_conn)
close(file_conn)

cat("\n--- 所有分析流程執行完畢！ ---\n")
cat("完整的 HTML 報告已成功保存到:", output_file, "\n")
cat("!!! 請用網頁瀏覽器打開此文件查看最終結果 !!!\n")

