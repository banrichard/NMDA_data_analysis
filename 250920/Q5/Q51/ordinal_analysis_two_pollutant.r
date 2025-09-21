library(readxl)
library(writexl)
library(dplyr)
library(stringr)
library(purrr)
library(tidyr)
library(VGAM)
library(knitr)
library(corrplot)
source("functions.R") # 确保其中有 get_pollutant_list 和 run_vglm_analysis 函数

# --- 2. 数据准备 ---
setwd("~/NMDA/")
# a. 读取原始病人数据
my.dat <- readxl::read_xlsx("./NMDA_with_population_sex_ratio_age_portion.xlsx")%>%
  relocate(sex_ratio_MvsW,age_014_protion, .before = `Date of onset1`)
summary_wide <- process_all_subfolder_data(
  main_folder_path = main_folder,
  city_map_df = city_map
)
my.dat <- my.dat %>%
  rename(
    `Brainstem dysfunction` = `Brainstem dysfunction（0=none; 1=gaze paresis; 2=tube feeding; 3=ventilator care due to hypoventilation）`
  )

# b. 准备城市名字典（用于获取完整的城市列表，以防万一）
city_map <- get_city_map()

symptom_columns <- c(
  "Seizures", "Memory dysfunction", "Psychiatric symptoms", "Coma", 
  "Language problem", "Dyskinesia/dystonia", 
  "Gait instability and ataxia", "Brainstem dysfunction"
)



# 2. 检查这些列是否存在于 my.dat 中
missing_cols <- setdiff(symptom_columns, names(my.dat))
if (length(missing_cols) > 0) {
  stop(paste("错误：您的 my.dat 数据中缺少以下症状列:", paste(missing_cols, collapse=", ")))
}

# 3. 【关键】使用 across() 将所有症状列转换为有序因子
#    我们假设列中的值（无论是数字还是文本）已经自然有序
my.dat_prepared_for_symptoms <- my.dat %>%
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
my.dat_prepared_for_symptoms <- my.dat_prepared_for_symptoms %>%
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
  level_distribution <- table(my.dat_prepared_for_symptoms[[symptom_name]])
  
  cat("\n--- 正在檢查症狀: '", symptom_name, "' ---\n")
  print(level_distribution)
  cat("有效類別數量:", length(level_distribution), "\n")
  
})

output_folder <- "./symptom_analysis_report"
dir.create(output_folder, showWarnings = FALSE)
markdown_report_parts <- list()


# =================================================================
# 核心：双重循环
# =================================================================
cat("\n--- 开始批量运行症状与污染物的有序回归分析 ---\n")

# --- 1. 外层循环：遍历每一种症状 ---
for (symptom_name in symptom_columns) {
  
  markdown_report_parts[[paste0("header_", symptom_name)]] <- paste0("\n## 分析症状: ", symptom_name)
  
  # --- 2. 内层循环：对于当前症状，遍历每一种污染物 ---
  for (pollutant in pollutants_to_analyze) {
    
    cat(paste0("  - 正在分析 ", symptom_name, " vs ", pollutant, "...\n"))
    
    # a. 调用分析函数
    ordinal_results <- run_symptom_analysis(
      data = my.dat_prepared_for_symptoms,
      pollutant_name = pollutant,
      outcome_var = symptom_name
    )
    
    # --- !! 【关键修正】检查函数返回结果是否有效 !! ---
    #    如果 ordinal_results 不是 NULL (即模型成功运行)，才执行后续步骤
    if (!is.null(ordinal_results)) {
      
      # b. 从 $coefficients 中获取主要结果，并添加显著性星号 (已移除多余的逗号)
      summary_with_stars <- ordinal_results$coefficients %>%
        mutate(
          signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))
        )
      
      # c. 生成 Markdown 文本
      md_header <- paste0("### 污染物: ", pollutant)
      md_table <- kable(
        summary_with_stars, 
        format = "markdown",
        digits = 4, 
        caption = paste("模型汇总:", pollutant, "对", symptom_name, "的影响")
      )
      
      # d. 将当前这个“症状-污染物”组合的结果存入列表
      part_name <- paste(symptom_name, pollutant, sep = "_")
      markdown_report_parts[[part_name]] <- paste(
        md_header,
        paste(md_table, collapse = "\n"),
        collapse = "\n\n"
      )
      
    } else {
      # 如果模型没有运行（例如因为症状类别<2），我们也记录一下
      part_name <- paste(symptom_name, pollutant, sep = "_")
      markdown_report_parts[[part_name]] <- paste0(
        "### 污染物: ", pollutant, 
        "\n\n*注意：由于因变量 '", symptom_name, "' 的有效类别不足，模型未运行。*\n"
      )
    }
  }
}



# =================================================================
# 最后一步：将所有 Markdown 片段组合成一个完整文件并保存
# =================================================================
main_title_md <- "# 污染物浓度与首发症状关系分析报告\n"
final_markdown_content <- paste(
  main_title_md,
  paste(markdown_report_parts, collapse = "\n\n---\n\n"),
  collapse = "\n"
)
output_file <- file.path(output_folder, "symptom_analysis_full_report.md")
writeLines(final_markdown_content, con = output_file)

cat("\n--- 所有分析流程执行完毕！ ---\n")
cat("完整的 Markdown 报告已成功保存到:", output_file, "\n")
