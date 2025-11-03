# =================================================================
# 主分析腳本：污染物 vs 嚴重程度 (mRS, ICU) 的【年齡亞組分析】
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
source("functions.R") # 確保包含上面所有新增和修正的函數

# --- 2. 數據準備 ---
cat("--- 正在準備所有基礎數據 ---\n")
setwd("~/NMDA/")
# a. 加載原始數據
my.dat.raw <- readxl::read_xlsx("./NMDA_with_population_sex_ratio_age_portion.xlsx")
my.dat.raw<- my.dat.raw %>%relocate('sex_ratio_MvsW','age_014_protion', .before = `Date of onset1`)

# b. 創建年齡分組並準備結局變量
my.dat_prepared <- my.dat.raw %>%
  rename_if(names(.) == "weights", ~ "weights_original") %>%
  mutate(
    # --- 年齡段 (新分組) ---
    age_numeric = as.numeric(as.character(Age)),
    age_group_specific = cut(
      age_numeric,
      breaks = c(-Inf, 20, 40, Inf), 
      labels = c("0-20", "21-40", ">40"),
      right = TRUE 
    ),
    
    # --- 結局 1: mRS (有序) ---
    mRS = factor(mRS, ordered = TRUE),
    
    # --- 結局 2: ICU admission (二元) ---
    `ICU admission` = factor(
      `ICU admission`,
      levels = c(0, 1),
      labels = c("No", "Yes") # 確保 "No" 是參照組
    )
  ) %>%
  filter(!is.na(age_group_specific))
my.dat_prepared <- my.dat_prepared %>%
  relocate(age_numeric,age_group_specific, .before = `Date of onset1`)
# c. 獲取污染物列表
pollutants_to_analyze <- get_pollutant_list(data = my.dat_prepared, marker_column = "Date of onset1")
# (可以加入過濾 _24h 的程式碼)
# pollutants_to_analyze <- pollutants_to_analyze[!grepl("_24h$", pollutants_to_analyze)]

# d. 定義要分析的結局列表
outcomes_to_analyze <- c("mRS", "ICU admission")


# --- 3. 自動化分析與報告生成 ---
# a. 初始化 Markdown 片段列表
markdown_parts <- list("# 污染物 vs 严重程度 年龄亚组分析报告\n")

# b. 【雙重循環】外層遍歷結局，內層遍歷污染物
for (outcome in outcomes_to_analyze) {
  
  markdown_parts[[paste0("header_outcome_", outcome)]] <- paste0("\n# 分析结果: ", outcome, "\n")
  
  for (pollutant in pollutants_to_analyze) {
    
    cat(paste0("--- 正在分析 ", outcome, " vs ", pollutant, " by age_group_specific ---\n"))
    
    markdown_parts[[paste0("header_pollutant_", outcome, "_", pollutant)]] <- paste0("\n## 分析污染物: ", pollutant, "\n")
    markdown_parts[[paste0("subheader_", outcome, "_", pollutant)]] <- "\n### 按年齡 (0-20, 21-40, >40) 分层\n"
    
    # --- 【關鍵：條件判斷】 ---
    # 根據當前的結局，調用不同的報告生成函數
    if (outcome == "mRS") {
      report_md <- generate_ordinal_subgroup_report(
        pollutant = pollutant,
        strata_variable = "age_group_specific",
        outcome = "mRS",
        prepared_data = my.dat_prepared
      )
    } else if (outcome == "ICU admission") {
      report_md <- generate_logistic_subgroup_report(
        pollutant = pollutant,
        strata_variable = "age_group_specific",
        outcome = "ICU admission",
        prepared_data = my.dat_prepared
      )
    } else {
      # 如果有其他結局，可以在這裡添加處理邏輯
      report_md <- "<p><i>未知的結局類型</i></p>" 
    }
    
    markdown_parts[[paste0("content_", outcome, "_", pollutant)]] <- report_md
  }
}

# --- 4. 寫入最終的 Markdown 文件 ---
final_markdown_content <- paste(markdown_parts, collapse = "\n\n")
output_file <- "severity_age_subgroup_report.md"

file_conn <- file(output_file, "w", encoding = "UTF-8")
writeLines(final_markdown_content, con = file_conn)
close(file_conn)

cat("\n--- 所有嚴重程度年齡亞組分析流程執行完畢！ ---\n")
cat("完整的 Markdown 報告已成功保存到:", output_file, "\n")
