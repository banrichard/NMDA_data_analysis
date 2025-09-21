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
    # 新名字 = `舊的、又長又亂的名字`
    `Brainstem dysfunction` = `Brainstem dysfunction（0=none; 1=gaze paresis; 2=tube feeding; 3=ventilator care due to hypoventilation）`
  )

# b. 准备城市名字典（用于获取完整的城市列表，以防万一）
city_map <- get_city_map()

unique_elements <- unique(my.dat$`ICU admission`)
print(unique_elements)

my.dat_prepared_for_severity <- my.dat %>%
  mutate(
    # 1. 将 mRS 转换为【有序因子】
    #    我们假设 mRS 已经是数字，并且值越大代表越严重
    mRS = factor(mRS, ordered = TRUE),
    
    # 2. 将 ICU admission 转换为【因子】
    #    我们假设它的值是 0 (否) 和 1 (是)
    `ICU admission` = factor(
      `ICU admission`,
      levels = c(0, 1),
      labels = c("No", "Yes")
    )
  )
severity_outcomes <- c("mRS", "ICU admission")

# 3. 创建结果文件夹和空的 Markdown 片段列表
output_folder <- "./severity_analysis_report"
dir.create(output_folder, showWarnings = FALSE)
markdown_report_parts <- list()


# =================================================================
# 核心：双重循环
# =================================================================
cat("\n--- 开始批量运行严重程度分析 ---\n")

# --- 1. 外层循环：遍历每一种严重程度指标 ---
for (outcome_name in severity_outcomes) {
  
  # a. 为当前指标添加一个大的 Markdown 标题
  markdown_report_parts[[paste0("header_", outcome_name)]] <- paste0("## 分析指标: ", outcome_name)
  
  # --- 2. 内层循环：对于当前指标，遍历每一种污染物 ---
  for (pollutant in pollutants_to_analyze) {
    
    cat(paste0("  - 正在分析 ", outcome_name, " vs ", pollutant, "...\n"))
    
    # b. 调用我们“智能”的分析函数
    #    它会为 mRS 自动运行 polr, 为 ICU admission 自动运行 glm
    results <- run_symptom_analysis(
      data = my.dat_prepared_for_severity, # 使用我们准备好的数据
      pollutant_name = pollutant,
      outcome_var = outcome_name # <-- 动态指定因变量
    )
    
    # c. 检查模型是否成功运行
    if (!is.null(results)) {
      
      # d. 添加显著性星号
      summary_with_stars <- results$coefficients %>%
        mutate(
          signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))
        )
      
      # e. 生成 Markdown 文本
      md_header <- paste0("### 污染物: ", pollutant)
      md_table <- kable(
        summary_with_stars, 
        format = "markdown",
        digits = 4, 
        caption = paste("模型汇总:", pollutant, "对", outcome_name, "的影响")
      )
      
      # f. 将结果存入列表
      part_name <- paste(outcome_name, pollutant, sep = "_")
      markdown_report_parts[[part_name]] <- paste(
        md_header,
        paste(md_table, collapse = "\n"),
        collapse = "\n\n"
      )
    }
  }
}


# =================================================================
# 最后一步：将所有 Markdown 片段组合成一个完整文件并保存
# =================================================================
main_title_md <- "# 污染物浓度与疾病严重程度关系分析报告\n"
final_markdown_content <- paste(
  main_title_md,
  paste(markdown_report_parts, collapse = "\n\n---\n\n"),
  collapse = "\n"
)
output_file <- file.path(output_folder, "severity_analysis_full_report.md")
writeLines(final_markdown_content, con = output_file)

cat("\n--- 所有分析流程执行完毕！ ---\n")
cat("完整的 Markdown 报告已成功保存到:", output_file, "\n")
