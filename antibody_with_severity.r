library(readxl)
library(writexl)
library(dplyr)
library(stringr)
library(purrr)
library(tidyr)
library(VGAM)
library(knitr)
library(corrplot)
library(broom)
library(MASS)
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
my.dat_prepared <- my.dat %>%
  mutate(
    # 2. 將 mRS 轉換為有序因子 (和之前一樣)
    mRS = factor(mRS, ordered = TRUE),
    
    # 3. 將 ICU admission 轉換為因子 (和之前一樣)
    `ICU admission` = factor(
      `ICU admission`,
      levels = c(0, 1),
    )
  )
markdown_parts <- list()

# b. 报告主标题
markdown_parts[["main_title"]] <- "# 抗体滴度与疾病严重程度关系分析报告\n"


# --- c. 分析一：抗体滴度 vs. mRS ---
cat("--- 正在运行模型 1: Titer vs. mRS ---\n")

# 运行 polr 模型
model_mrs <- polr(mRS ~ CSFrank, data = my.dat_prepared, Hess = TRUE)

# 整理模型结果并手动计算 p-value
summary_table_mrs <- coef(summary(model_mrs))
p_values_mrs <- 2 * pt(abs(summary_table_mrs[, "t value"]), df = df.residual(model_mrs), lower.tail = FALSE)
results_mrs <- as.data.frame(summary_table_mrs) %>%
  mutate(p.value = p_values_mrs) %>%
  tibble::rownames_to_column(var = "term") %>%
  mutate(
    signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))
  )

# 生成 Markdown 文本并存入列表
markdown_parts[["mRS_header"]] <- "## 1. 抗体滴度 (CSFrank) 与 mRS 的关系 (有序逻辑斯蒂回归)"
markdown_parts[["mRS_table"]] <- kable(
  results_mrs, format = "markdown", digits = 4,
  caption = "模型结果：mRS ~ CSFrank",
  col.names = c("变量", "估计值", "标准误", "t值", "p值", "显著性")
)


# --- d. 分析二：抗体滴度 vs. ICU admission ---
cat("--- 正在运行模型 2: Titer vs. ICU admission ---\n")

# 运行 glm 模型
model_icu <- glm(`ICU admission` ~ CSFrank, data = my.dat_prepared, family = binomial(link = "logit"))

# 使用 broom::tidy 整理结果并添加星号和优势比
results_icu <- broom::tidy(model_icu) %>%
  mutate(
    odds.ratio = exp(estimate),
    signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))
  )

# 生成 Markdown 文本并存入列表
markdown_parts[["icu_header"]] <- "## 2. 抗体滴度 (CSFrank) 与 ICU Admission 的关系 (逻辑斯蒂回归)"
markdown_parts[["icu_table"]] <- kable(
  results_icu, format = "markdown", digits = 4,
  caption = "模型结果：ICU admission ~ CSFrank",
  col.names = c("变量", "估计值", "标准误", "z值", "p值", "优势比(OR)", "显著性")
)


# --- 4. 最终组合并保存 Markdown 文件 ---
cat("--- 正在生成最终的 Markdown 报告文件 ---\n")

# 将列表中的所有部分用分隔符组合成一个单一的字符串
final_markdown_content <- paste(
  markdown_parts$main_title,
  markdown_parts$mRS_header,
  paste(markdown_parts$mRS_table, collapse = "\n"),
  "\n\n---\n\n", # 添加一个水平分割线
  markdown_parts$icu_header,
  paste(markdown_parts$icu_table, collapse = "\n"),
  collapse = "\n"
)


# =================================================================
# 最後一步：將所有 Markdown 片段組合起來並保存
# =================================================================
main_title_md <- "# 抗體滴度與疾病嚴重程度關係分析報告\n"
final_markdown_content <- paste(
  main_title_md,
  paste(markdown_report_parts, collapse = "\n\n---\n\n"),
  collapse = "\n"
)
output_file <- file.path(output_folder, "titer_vs_severity_report.md")
writeLines(final_markdown_content, con = output_file)

cat("\n--- 所有分析流程執行完畢！ ---\n")
cat("完整的 Markdown 報告已成功保存到:", output_file, "\n")
