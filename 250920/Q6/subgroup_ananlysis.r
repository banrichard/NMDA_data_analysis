library(dplyr)
library(purrr)
library(tidyr)
library(stringr)
library(lubridate)
library(knitr)
library(broom)
# (您可能需要的其他包)

# 加載您的自定義函數
source("functions.R")
setwd("~/NMDA/")
main_folder <- "~/NMDA/data/air_quality_new/month"
my.dat.raw <- readxl::read_xlsx("./NMDA_with_population_sex_ratio_age_portion.xlsx")%>%
  relocate(sex_ratio_MvsW,age_014_protion, .before = `Date of onset1`)
city_map <- get_city_map() # 假设此函数在 functions.R 中
summary_wide <- process_all_subfolder_data(
  main_folder_path = main_folder,
  city_map_df = city_map
)
pollutants_to_analyze <- get_pollutant_list(data = my.dat.raw, marker_column = "Date of onset1")
my.dat.raw <- my.dat.raw %>%
  rename(
    `Brainstem dysfunction` = `Brainstem dysfunction（0=none; 1=gaze paresis; 2=tube feeding; 3=ventilator care due to hypoventilation）`,
    `Gender` = `Gender（0=male,1=female）`
  )

# b. 【關鍵】創建所有用於亞組分析的因子變數
my.dat_prepared <- my.dat.raw %>%
  mutate(
    # --- 性別 ---
    gender_factor = factor(Gender, levels = c(0, 1), labels = c("Male", "Female")),
    
    # --- 年齡段 ---
    age_group = cut(
      as.numeric(as.character(Age)),
      breaks = c(-Inf, 17, 39, Inf),
      labels = c("<18", "18-39", ">=40")
    ),
    
    # --- 發病季節 ---
    onset_month = month(ymd(paste0(`Date of onset1`, "-01"))),
    season = factor(
      case_when(
        onset_month >= 5 & onset_month <= 10 ~ "Warm",
        TRUE ~ "Cold"
      ),
      levels = c("Cold", "Warm") # 將冷季設為參照組
    ),
    
    smoking_status = factor(Smoking, levels = c(0, 1), labels = c("Non-smoker", "Smoker")),
    
    marital_status = factor(
      `Marrital status`,
      # 【關鍵】我們手動指定 levels 的順序
      # 放在最前面的 "unmarried" 將會成為模型中的參照組
      levels = c("unmarried", "married", "divorced"),
    ),
    
    # --- 是否合併腫瘤 (0=無, 其他=有) ---
    tumor_status = factor(
      if_else(tumor == 0 | tumor == "0", "No_Tumor", "Has_Tumor"),
      levels = c("No_Tumor", "Has_Tumor")
    ),
  )%>%
  relocate(gender_factor,age_group,season,smoking_status,marital_status,tumor_status,sex_ratio_MvsW,age_014_protion,onset_month, .before = `Date of onset1`)
pollutants_to_analyze <- get_pollutant_list(data = my.dat_prepared, marker_column = "Date of onset1")

generate_subgroup_report <- function(pollutant, strata_variable, case_data, summary_data, city_map_data) {
  
  # a. 生成分層面板數據
  panel_data <- create_stratified_panel(
    pollutant_name = pollutant,
    case_data = case_data,
    summary_wide_data = summary_data,
    city_map = city_map_data,
    strata_col = strata_variable
  )
  
  # b. 運行交互作用模型
  interaction_results <- run_interaction_glm(
    panel_data = panel_data,
    pollutant_name = pollutant,
    interaction_var = strata_variable
  ) %>%
    mutate(signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", "")))
  
  # c. 運行分層分析模型
  strata_levels <- unique(panel_data[[strata_variable]])
  stratified_results <- purrr::map_dfr(strata_levels, ~{
    run_simple_glm(
      panel_data = filter(panel_data, !!sym(strata_variable) == .x),
      pollutant_name = pollutant
    )
  }) %>%
    mutate(
      !!strata_variable := rep(strata_levels, each = 4),
      .before = 1
    ) %>%
    select(!!sym(strata_variable), lag_model = term, estimate, std.error, p.value) %>%
    mutate(signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", "")))
  
  # d. 生成 Markdown 文本
  md_interaction <- knitr::kable(interaction_results, format = "markdown", caption = "交互作用模型结果", digits = 4)
  md_stratified <- knitr::kable(stratified_results, format = "markdown", caption = "按亚组分析结果", digits = 4)
  
  final_md <- paste(
    "\n#### 交互作用模型\n",
    paste(md_interaction, collapse = "\n"),
    "\n#### 分层分析\n",
    paste(md_stratified, collapse = "\n")
  )
  
  return(final_md)
}


# --- 4. 自動化分析與報告生成 ---
# a. 初始化 Markdown 片段列表
markdown_parts <- list("# 污染物暴露风险亚组分析报告\n")

# b. 外層循環：遍歷【每種污染物】
for (pollutant in pollutants_to_analyze) {
  
  markdown_parts[[paste0("header_pollutant_", pollutant)]] <- paste0("\n## 分析污染物: ", pollutant, "\n")
  
  # c. 內層循環：遍歷【每個亞組因素】
  subgroup_vars <- c("gender_factor", "age_group", "season", "smoking_status", 
                     "marital_status","tumor_status")
  
  for (strata in subgroup_vars) {
    
    cat(paste0("--- 正在分析 ", pollutant, " by ", strata, " ---\n"))
    
    markdown_parts[[paste0("subheader_", pollutant, "_", strata)]] <- paste0("\n### 按 ", strata, " 分层\n")
    
    # 調用我們統一的報告生成函數
    report_md <- generate_subgroup_report(
      pollutant = pollutant,
      strata_variable = strata,
      case_data = my.dat_prepared,
      summary_data = summary_wide,
      city_map_data = city_map
    )
    
    markdown_parts[[paste0("content_", pollutant, "_", strata)]] <- report_md
  }
}

# --- 5. 寫入最終的 Markdown 文件 ---
final_markdown_content <- paste(markdown_parts, collapse = "\n\n")
output_file <- "/Users/banlujie/NMDA/250920/Q6/subgroup_analysis_full_report.md"

file_conn <- file(output_file, "w", encoding = "UTF-8")
writeLines(final_markdown_content, con = file_conn)
close(file_conn)

cat("\n--- 所有亞組分析流程執行完畢！ ---\n")
cat("完整的 Markdown 報告已成功保存到:", output_file, "\n")

