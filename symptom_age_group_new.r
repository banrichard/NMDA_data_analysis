# =================================================================
# 主分析腳本：污染物 vs 症狀 的【年齡亞組分析】
# =================================================================

# --- 1. 環境設置 ---
# 加載所有需要的包
library(readxl)
library(dplyr)
library(purrr)
library(stringr)
library(lubridate)
library(knitr)
library(MASS) # 需要 MASS for polr
library(broom)

# 加載您的自定義函數
source("functions.R") # 確保包含上面提到的所有必需函數

# --- 2. 數據準備 ---
cat("--- 正在準備所有基礎數據 ---\n")
setwd("~/NMDA/")
# a. 加載原始數據
my.dat.raw <- readxl::read_xlsx("./NMDA_with_population_sex_ratio_age_portion.xlsx")
my.dat.raw<- my.dat.raw %>%relocate('sex_ratio_MvsW','age_014_protion', .before = `Date of onset1`)
# b. 定義要分析的症狀列表 (注意修正拼寫 Dyskinesia)
symptom_columns <- c(
  "Seizures", "Memory dysfunction", "Psychiatric symptoms", "Coma", 
  "Dyskinesia/dystonia", "Brainstem dysfunction" 
  # "Language problem", "Gait instability and ataxia" # 如果需要，也加入
)

# c. 創建年齡分組並準備所有結局變量 (症狀)
my.dat_prepared <- my.dat.raw %>%
  rename_if(names(.) == "weights", ~ "weights_original") %>%
  # 重命名 Brainstem dysfunction 列（如果需要）
  rename(
    `Brainstem dysfunction` = `Brainstem dysfunction（0=none; 1=gaze paresis; 2=tube feeding; 3=ventilator care due to hypoventilation）`
  ) %>%
  mutate(
    # --- 年齡段 (新分組) ---
    age_numeric = as.numeric(as.character(Age)),
    age_group_specific = cut(
      age_numeric,
      breaks = c(-Inf, 20, 40, Inf), 
      labels = c("0-20", "21-40", ">40"),
      right = TRUE 
    ),
    
    # --- 處理所有症狀列 ---
    # 先全部轉為因子
    across(all_of(symptom_columns), factor), 
    
    # 【關鍵】根據需要，將有序的症狀明確設定為 ordered = TRUE
    # 例如 Seizures, Coma 等如果是 0/1，則保持為普通因子
    # 如果 Memory dysfunction 有多個等級，則設為有序
    # `Memory dysfunction` = factor(`Memory dysfunction`, ordered = TRUE), # 示例
    
    # 特殊處理 Brainstem dysfunction 的順序
    `Brainstem dysfunction` = factor(
      `Brainstem dysfunction`,
      levels = c("0", "1", "2", "3", "1+2", "1+3", "2+3", "1+2+3"), # 您之前提供的順序
      ordered = TRUE
    )
    # 【請根據您的實際數據情況，調整哪些症狀需要 ordered = TRUE】
    
  ) %>%
  filter(!is.na(age_group_specific)) # 過濾掉年齡分組為 NA 的數據
my.dat_prepared <- my.dat_prepared %>%
  relocate(age_numeric,age_group_specific, .before = `Date of onset1`)
# d. 獲取污染物列表
pollutants_to_analyze <- get_pollutant_list(data = my.dat_prepared, marker_column = "Date of onset1")
# (可以加入過濾 _24h 的程式碼)
# pollutants_to_analyze <- pollutants_to_analyze[!grepl("_24h$", pollutants_to_analyze)]


# --- 3. 自動化分析與報告生成 ---
# a. 初始化 Markdown 片段列表
markdown_parts <- list("# 污染物 vs 症狀 年龄亚组分析报告\n")

# b. 【雙重循環】外層遍歷症狀，內層遍歷污染物
for (outcome in symptom_columns) {
  
  markdown_parts[[paste0("header_outcome_", outcome)]] <- paste0("\n# 分析结局: ", outcome, "\n")
  
  # --- 【關鍵】檢查當前結局的類型（有序 vs. 二元）---
  # 我們通過檢查因子 level 的數量來判斷
  outcome_levels <- nlevels(my.dat_prepared[[outcome]])
  
  if (outcome_levels < 2) {
    cat(paste0("--- 跳過結局: ", outcome, " (有效類別少於2個) ---\n"))
    markdown_parts[[paste0("content_", outcome)]] <- paste0("\n## 分析結局: ", outcome, "\n\n<p><i>數據不足，跳過分析。</i></p>")
    next # 跳到下一個結局
  } else if (outcome_levels >= 3 && is.ordered(my.dat_prepared[[outcome]])) {
    # 如果 Level >= 3 且是【有序】因子，則使用 Ordinal 函數
    analysis_type <- "Ordinal"
    report_function <- generate_ordinal_subgroup_report
    cat(paste0("--- 分析结局: ", outcome, " (使用有序模型) ---\n"))
  } else {
    # 否則（包括 Level=2 的二元因子，或 Level>=3 但無序的因子），使用 Logistic 函數
    analysis_type <- "Logistic"
    report_function <- generate_logistic_subgroup_report
    cat(paste0("--- 分析结局: ", outcome, " (Logistic) ---\n"))
  }
  # ----------------------------------------------------
  
  for (pollutant in pollutants_to_analyze) {
    
    cat(paste0("  --- 正在分析 ", outcome, " vs ", pollutant, " by age_group_specific ---\n"))
    
    markdown_parts[[paste0("header_pollutant_", outcome, "_", pollutant)]] <- paste0("\n## 分析污染物: ", pollutant, "\n")
    markdown_parts[[paste0("subheader_", outcome, "_", pollutant)]] <- "\n### 按年龄 (0-20, 21-40, >40) 分层\n"
    
    # 調用【根據結局類型選擇的】報告生成函數
    report_md <- report_function(
      pollutant = pollutant,
      strata_variable = "age_group_specific",
      outcome = outcome,
      prepared_data = my.dat_prepared
    )
    
    markdown_parts[[paste0("content_", outcome, "_", pollutant)]] <- report_md
  }
}

# --- 4. 寫入最終的 Markdown 文件 ---
final_markdown_content <- paste(markdown_parts, collapse = "\n\n")
output_file <- "symptom_age_subgroup_report.md"

file_conn <- file(output_file, "w", encoding = "UTF-8")
writeLines(final_markdown_content, con = file_conn)
close(file_conn)

cat("\n--- 所有症狀年齡亞組分析流程執行完畢！ ---\n")
cat("完整的 Markdown 報告已成功保存到:", output_file, "\n")

