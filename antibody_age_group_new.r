# =================================================================
# 主分析腳本：抗體滴度 vs 污染物的【年齡亞組分析】(有序模型)
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

# 加載您的自定義函數
source("functions.R") # 確保包含上面新增的三個函數

# --- 2. 數據準備 ---
cat("--- 正在準備所有基礎數據 ---\n")
setwd("~/NMDA/")
# a. 加載原始數據
my.dat.raw <- readxl::read_xlsx("./NMDA_with_population_sex_ratio_age_portion.xlsx")
my.dat.raw<- my.dat.raw %>%relocate('sex_ratio_MvsW','age_014_protion', .before = `Date of onset1`)
my.dat.raw$CSFrank<-NA
for (i in 1:nrow(my.dat.raw)) {
  if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="+" ) {
    my.dat.raw$CSFrank[i]=1
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1：1000" ) {
    my.dat.raw$CSFrank[i]=1
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:320" ) {
    my.dat.raw$CSFrank[i]=1
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:300" ) {
    my.dat.raw$CSFrank[i]=1
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:100+" ) {
    my.dat.raw$CSFrank[i]=2
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:100" ) {
    my.dat.raw$CSFrank[i]=2
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="positive" ) {
    my.dat.raw$CSFrank[i]=1
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:32" ) {
    my.dat.raw$CSFrank[i]=2
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:30" ) {
    my.dat.raw$CSFrank[i]=2
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="++" ) {
    my.dat.raw$CSFrank[i]=3
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:10" ) {
    my.dat.raw$CSFrank[i]=3
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:3.2" ) {
    my.dat.raw$CSFrank[i]=3
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:1" ) {
    my.dat.raw$CSFrank[i]=3
  }
}  

my.dat.raw$CSFrank=factor(my.dat.raw$CSFrank,ordered = TRUE)

my.dat.raw <- my.dat.raw %>%
  rename(
    `Brainstem dysfunction` = `Brainstem dysfunction（0=none; 1=gaze paresis; 2=tube feeding; 3=ventilator care due to hypoventilation）`,
    `Gender` = `Gender（0=male,1=female）`,
  ) 
# b. 【關鍵】創建新的年齡分組和準備結局變量
my.dat_prepared <- my.dat.raw %>%
  # 處理可能的 weights 衝突
  rename_if(names(.) == "weights", ~ "weights_original") %>%
  mutate(
    # --- 年齡段 (新分組) ---
    age_numeric = as.numeric(as.character(Age)),
    age_group_specific = cut(
      age_numeric,
      # 使用您指定的新切點
      breaks = c(-Inf, 20, 40, Inf), 
      labels = c("0-20", "21-40", ">40"),
      right = TRUE # 確保區間包含右邊界 (例如 20 屬於 0-20 組)
    ),
    
    # --- 抗體滴度 (結局變量) ---
    # 確保 CSFrank 是有序因子，且參照水平合理
    CSFrank = factor(
      CSFrank, 
      levels = c("1", "2", "3"), 
      labels = c("Weak", "Positive", "Strong"), 
      ordered = TRUE
    )
  ) %>%
  # 過濾掉年齡分組為 NA 的數據
  filter(!is.na(age_group_specific))

my.dat.prepared <- my.dat_prepared %>%
  relocate(age_numeric,age_group_specific,CSFrank, .before = `Date of onset1`)
# c. 獲取污染物列表
pollutants_to_analyze <- get_pollutant_list(data = my.dat.prepared, marker_column = "Date of onset1")
# (可以加入過濾 _24h 的程式碼)
# pollutants_to_analyze <- pollutants_to_analyze[!grepl("_24h$", pollutants_to_analyze)]


# --- 3. 自動化分析與報告生成 ---
# a. 初始化 Markdown 片段列表
markdown_parts <- list("# 抗体滴度 vs 污染物 年龄亚组分析报告\n")

# b. 外層循環：遍歷【每種污染物】
for (pollutant in pollutants_to_analyze) {
  
  cat(paste0("--- 正在分析 ", pollutant, " by age_group_specific ---\n"))
  
  markdown_parts[[paste0("header_pollutant_", pollutant)]] <- paste0("\n## 分析污染物: ", pollutant, "\n")
  markdown_parts[[paste0("subheader_", pollutant)]] <- "\n### 按年龄 (0-20, 21-40, >40) 分层\n"
  
  # 調用我們【新的有序模型】報告生成函數
  report_md <- generate_ordinal_subgroup_report(
    pollutant = pollutant,
    strata_variable = "age_group_specific",
    outcome = "CSFrank",
    prepared_data = my.dat_prepared
  )
  
  markdown_parts[[paste0("content_", pollutant)]] <- report_md
}

# --- 4. 寫入最終的 Markdown 文件 ---
final_markdown_content <- paste(markdown_parts, collapse = "\n\n")
output_file <- "antibody_titer_age_subgroup_report.md"

file_conn <- file(output_file, "w", encoding = "UTF-8")
writeLines(final_markdown_content, con = file_conn)
close(file_conn)

cat("\n--- 所有抗體滴度年齡亞組分析流程執行完畢！ ---\n")
cat("完整的 Markdown 報告已成功保存到:", output_file, "\n")
