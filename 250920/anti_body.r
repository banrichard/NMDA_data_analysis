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

my.dat$CSFrank<-NA
for (i in 1:nrow(my.dat)) {
  if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="+" ) {
    my.dat$CSFrank[i]=3
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1：1000" ) {
    my.dat$CSFrank[i]=1
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:320" ) {
    my.dat$CSFrank[i]=1
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:300" ) {
    my.dat$CSFrank[i]=1
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:100+" ) {
    my.dat$CSFrank[i]=2
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:100" ) {
    my.dat$CSFrank[i]=2
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="positive" ) {
    my.dat$CSFrank[i]=2
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:32" ) {
    my.dat$CSFrank[i]=2
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:30" ) {
    my.dat$CSFrank[i]=2
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="++" ) {
    my.dat$CSFrank[i]=3
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:10" ) {
    my.dat$CSFrank[i]=3
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:3.2" ) {
    my.dat$CSFrank[i]=3
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:1" ) {
    my.dat$CSFrank[i]=3
  }
}  

my.dat$CSFrank=factor(my.dat$CSFrank,ordered = TRUE)
my.dat <- my.dat %>%
  relocate(CSFrank, .before = `Date of onset1`)
cat("--- 抗体滴度分组结果预览 ---\n")
print(table(my.dat$CSFrank, useNA = "ifany"))
output_folder <- "./titer_analysis_report"
dir.create(output_folder, showWarnings = FALSE)
markdown_report_parts <- list()


# 3. 核心循环
cat("\n--- 开始批量运行抗体滴度与污染物的有序回归分析 ---\n")

for (pollutant in pollutants_to_analyze) {
  
  cat(paste0("  - 正在分析 Antibody Titer vs ", pollutant, "...\n"))
  
  # a. 调用我们之前编写的 run_ordinal_models 函数
  ordinal_results <- run_ordinal_models(
    data = my.dat,         # <-- 使用我们准备好的数据
    pollutant_name = pollutant,
    outcome_var = "CSFrank" # <-- 指定新的因变量
  )
  
  # b. 检查模型是否成功运行
  if (!is.null(ordinal_results)) {
    
    # c. 添加显著性星号
    summary_with_stars <- ordinal_results$coefficients %>%
      mutate(
        signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))
      )
    
    # d. 生成 Markdown 文本
    md_header <- paste0("### 污染物: ", pollutant)
    md_table <- kable(
      summary_with_stars, 
      format = "markdown",
      digits = 4, 
      caption = paste("模型汇总:", pollutant, "对 `Antibody Titer` 的影响")
    )
    
    # e. 将结果存入列表
    part_name <- pollutant
    markdown_report_parts[[part_name]] <- paste(
      md_header,
      paste(md_table, collapse = "\n"),
      collapse = "\n\n"
    )
  }
}

# 4. 最终组合并保存 Markdown 文件
main_title_md <- "# 污染物浓度与抗体滴度关系分析报告\n"
final_markdown_content <- paste(
  main_title_md,
  paste(markdown_report_parts, collapse = "\n\n---\n\n"),
  collapse = "\n"
)
output_file <- file.path(output_folder, "titer_analysis_full_report.md")
writeLines(final_markdown_content, con = output_file)

cat("\n--- 所有分析流程执行完毕！ ---\n")
cat("完整的 Markdown 报告已成功保存到:", output_file, "\n")
