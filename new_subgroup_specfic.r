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
library(ordinal) # 我們也可能用 clm，但這裡的函數是基於 polr 和 glm
library(broom)

# 加載您的自定義函數
source("functions.R") # 確保包含上面提到的所有必需函數

# --- 2. 數據準備 ---
cat("--- 正在準備所有基礎數據 ---\n")
setwd("~/NMDA/")
# a. 加載原始數據
my.dat.raw <- readxl::read_xlsx("./NMDA_with_population_sex_ratio_age_portion.xlsx")
my.dat.raw$CSFrank<-NA
for (i in 1:nrow(my.dat.raw)) {
  if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="+" ) {
    my.dat.raw$CSFrank[i]=3
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1：1000" ) {
    my.dat.raw$CSFrank[i]=3
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:320" ) {
    my.dat.raw$CSFrank[i]=3
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:300" ) {
    my.dat.raw$CSFrank[i]=3
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:100+" ) {
    my.dat.raw$CSFrank[i]=2
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:100" ) {
    my.dat.raw$CSFrank[i]=2
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="positive" ) {
    my.dat.raw$CSFrank[i]=3
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:32" ) {
    my.dat.raw$CSFrank[i]=2
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:30" ) {
    my.dat.raw$CSFrank[i]=2
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="++" ) {
    my.dat.raw$CSFrank[i]=1
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:10" ) {
    my.dat.raw$CSFrank[i]=1
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:3.2" ) {
    my.dat.raw$CSFrank[i]=1
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:1" ) {
    my.dat.raw$CSFrank[i]=1
  }
}  

# b. 定義要分析的症狀列表
symptom_columns <- c("CSFrank","mRS","ICU admission", "Seizures", "Memory dysfunction", 
                     "Psychiatric symptoms", "Coma", 
                     "Dyskinesia/dystonia", "Brainstem dysfunction")


# c. 創建亞組變量並準備所有結局變量 (症狀)
my.dat_prepared <- my.dat.raw %>%
  rename_if(names(.) == "weights", ~ "weights_original") %>%
  # 重命名 Brainstem dysfunction 列（如果需要）
  rename(
    `Brainstem dysfunction` = `Brainstem dysfunction（0=none; 1=gaze paresis; 2=tube feeding; 3=ventilator care due to hypoventilation）`,
    `gender` = `Gender（0=male,1=female）`
  ) %>%
  mutate(
    onset_month = month(ymd(paste0(`Date of onset1`, "-01"))), # 假設 'Date of onset1' 是 "YYYY-MM"
    season = factor(
      case_when(
        onset_month >= 5 & onset_month <= 10 ~ "Warm", # 5-10月為熱季
        TRUE ~ "Cold" # 11-次年4月為冷季
      ),
      levels = c("Cold", "Warm") # 將 "Cold" 設為參照組
    ),
    tumor_status = case_when(
      tumor == "0" ~ "No_Tumor",  # "0" 代表無腫瘤
      !is.na(tumor) ~ "Has_Tumor", # 任何其他非 NA 的文本，都代表 "有腫瘤"
      TRUE ~ NA_character_      # 其他情況 (即 NA) 保持 NA
    ),
    # 將其轉換為因子，並設置 "No_Tumor" 為參照組
    tumor_status = factor(tumor_status, levels = c("No_Tumor", "Has_Tumor")),
    other_antibodies_status = case_when(
      is.na(`other antibodies and titers`) ~ "No_Other_Antibodies", # NA 代表 "無"
      TRUE ~ "Has_Other_Antibodies" # 任何有文本的都代表 "有"
    ),
    # 將其轉換為因子，並設置 "No_Other_Antibodies" 為參照組
    other_antibodies_status = factor(other_antibodies_status, levels = c("No_Other_Antibodies", "Has_Other_Antibodies")),
    gender_factor = factor(
      gender, 
      levels = c(0, 1), 
      labels = c("Male", "Female")
    ),
    smoking_factor = factor(
      Smoking, 
      levels = c(0, 1), 
      labels = c("Smoking", "Non-Smoking")
    ),
    # --- 亞組變量：年齡段 (新分組) ---
    age_numeric = as.numeric(as.character(Age)),
    age_group_specific = cut(
      age_numeric,
      breaks = c(-Inf, 20, 40, Inf), 
      labels = c("0-20", "21-40", ">40"),
      right = TRUE 
    ),
    mRS = factor(
      as.character(mRS), # 先轉為字符，防止 0/1 被誤讀
      levels = c("0", "1", "2", "3", "4", "5", "6"), # 假設 mRS 是 0-6
      ordered = TRUE
    ),
    
    # 結局 2: ICU admission (二元) - 確保使用【文本】"0" 和 "1"
    `ICU admission` = factor(
      `ICU admission`,
      levels = c("0", "1"), # 匹配您數據中的文本 "0" 和 "1"
      labels = c("No", "Yes")
    ),
    
    # --- 結局變量：處理所有症狀列 ---
    
    # 【關鍵修正】使用【文本型】的 "0" 和 "1" 來匹配您的數據
    across(
      c("Seizures", "Memory dysfunction", "Psychiatric symptoms", "Coma", "Dyskinesia/dystonia"),
      ~ factor(., levels = c("0", "1"), labels = c("No", "Yes")) 
    ),
    
    # Brainstem dysfunction 是有序的
    `Brainstem dysfunction` = factor(
      `Brainstem dysfunction`,
      levels = c("0", "1", "2", "3", "1+2", "1+3", "2+3", "1+2+3"),
      ordered = TRUE
    )
  ) %>%
  relocate(sex_ratio_MvsW,age_014_protion,age_numeric,age_group_specific,CSFrank, onset_month, season,tumor_status,other_antibodies_status,gender_factor,smoking_factor,.before = `Date of onset1`) %>%
  # 過濾掉亞組變量為 NA 的數據
  filter(!is.na(age_group_specific)) 

my.dat_prepared <- my.dat_prepared %>%
  mutate(
    # 確保 CSFrank 是正確設定的【有序因子】
    CSFrank = factor(
      CSFrank, 
      levels = c("1", "2", "3"), 
      labels = c("Strong", "Positive", "Weak"), 
      ordered = TRUE
    )
  )


# d. 獲取污染物列表
pollutants_to_analyze <- get_pollutant_list(data = my.dat_prepared, marker_column = "Date of onset1")
pollutants_to_analyze <- pollutants_to_analyze[!grepl("_24h$", pollutants_to_analyze)]

# e. 【關鍵】定義我們要分析的亞組變量
#    !!!! 這就是您可以修改的地方 !!!!
strata_to_analyze <- "age_group_specific"


# --- 3. 自動化分析與報告生成 ---
# a. 初始化 Markdown 片段列表
markdown_parts <- list(paste0(strata_to_analyze, "亚组分析报告\n"))

# b. 【雙重循環】外層遍歷症狀，內層遍歷污染物
for (outcome in symptom_columns) {
  
  markdown_parts[[paste0("header_outcome_", outcome)]] <- paste0("\n# 分析结局: ", outcome, "\n")
  
  # --- 檢查結局類型（有序 vs. 二元）---
  valid_outcome_data <- my.dat_prepared[[outcome]][!is.na(my.dat_prepared[[outcome]])]
  outcome_levels <- length(unique(valid_outcome_data))
  
  if (outcome_levels < 2) {
    cat(paste0("--- 跳過結局: ", outcome, " (有效類別少於2個) ---\n"))
    markdown_parts[[paste0("content_", outcome)]] <- paste0("\n## 分析結局: ", outcome, "\n\n<p><i>數據不足，跳過分析。</i></p>")
    next # 跳到下一個結局
  } else if (outcome_levels >= 3 && is.ordered(my.dat_prepared[[outcome]])) {
    analysis_type <- "Ordinal"
    report_function <- generate_ordinal_subgroup_report
    cat(paste0("--- 分析结局: ", outcome, " (使用有序模型) ---\n"))
  } else {
    analysis_type <- "Logistic"
    report_function <- generate_logistic_subgroup_report
    cat(paste0("--- 分析结局: ", outcome, " (使用Logistics模型) ---\n"))
  }
  # ----------------------------------------------------
  
  for (pollutant in pollutants_to_analyze) {
    
    cat(paste0("  --- 正在分析 ", outcome, " vs ", pollutant, " by ", strata_to_analyze, " ---\n"))
    
    markdown_parts[[paste0("header_pollutant_", outcome, "_", pollutant)]] <- paste0("\n## 分析污染物: ", pollutant, "\n")
    markdown_parts[[paste0("subheader_", outcome, "_", pollutant)]] <- paste0("\n### 按 ", strata_to_analyze, " 分层\n")
    
    # 調用【根據結局類型選擇的】報告生成函數
    report_md <- report_function(
      pollutant = pollutant,
      strata_variable = strata_to_analyze,
      outcome = outcome,
      prepared_data = my.dat_prepared
    )
    
    markdown_parts[[paste0("content_", outcome, "_", pollutant)]] <- report_md
  }
}

# --- 4. 寫入最終的 Markdown 文件 ---
final_markdown_content <- paste(markdown_parts, collapse = "\n\n")
output_file <- paste0("subgroup_analysis_by_", strata_to_analyze, ".md")

file_conn <- file(output_file, "w", encoding = "UTF-8")
writeLines(final_markdown_content, con = file_conn)
close(file_conn)

cat(paste0("\n--- 所有症狀【", strata_to_analyze, "】亞組分析流程執行完畢！ ---\n"))
cat("完整的 Markdown 報告已成功保存到:", output_file, "\n")

