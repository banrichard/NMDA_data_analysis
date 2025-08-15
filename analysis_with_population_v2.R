library(readxl)
library(lubridate)
library(dplyr)
library(stringr)
library(tidyr)
library(writexl)
library(purrr)
library(VGAM) # 尽管不用vglm，但您的旧代码里有，保留以防万一
library(knitr)

# 加载您的自定义函数
source("functions.R")

# 设置工作目录
setwd("/Users/shij/Documents/GitHub/NMDA_data_analysis/")
reg.dat<-readxl::read_xlsx("guangdong_all_years_summary_with_sex_ratio_age_portion.xlsx")

# --- 4. 循环分析、绘图、并保存结果 ---
cat("\n--- 开始批量运行 GLM 模型、生成图表和报告 ---\n")

# 创建结果文件夹
dir.create("result_figure_glm_offset", showWarnings = FALSE)
dir.create("report_result_glm_offset", showWarnings = FALSE)

for (pollutant in pollutants_to_analyze) {
  
  cat(paste0("\n正在处理: ", pollutant, " ...\n"))
  
  # a. 从列表中获取当前污染物的面板数据
  current_panel <- list_of_final_panels[[pollutant]]
  
  # b. 运行带 offset 的 GLM 模型
  glm_results <- run_glm_analysis_with_offset(
    panel_data = current_panel,
    pollutant_name = pollutant
  )
  
  # c. 为结果添加显著性星号
  glm_summary_with_stars <- glm_results$summary_table %>%
    mutate(
      signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))
    )
  
  # d. 准备绘图用的 estbeta 矩阵
  estbeta_from_glm <- glm_results$summary_table %>%
    mutate(term_type = if_else(term == "(Intercept)", "Intercept", "Slope")) %>%
    select(model, term_type, estimate) %>%
    pivot_wider(names_from = term_type, values_from = estimate) %>%
    arrange(model) %>%
    select(Intercept, Slope) %>%
    as.matrix()
  
  # e. 准备绘图坐标
  y_coords <- 0:3
  pollutant_M0_col <- paste0(pollutant, "_M0")
  x_range <- range(current_panel[[pollutant_M0_col]], na.rm = TRUE)
  x_coords <- seq(x_range[1], x_range[2], length.out = 50)
  z_matrix <- outer(x_coords, y_coords, function(x, y) exp(estbeta_from_glm[(y + 1), 1] + x * estbeta_from_glm[(y + 1), 2]))
  
  # f. 绘图并保存
  output_filename_jpeg <- file.path("result_figure_glm_offset", paste0(pollutant, "_month.jpeg"))
  jpeg(output_filename_jpeg, width = 560, height = 500, quality = 100)
  persp(x_coords, y_coords, z_matrix, 
        theta = 45, phi = 30, expand = 0.75, 
        col = "#8491B4", 
        xlab = paste("\n", pollutant), ylab = "\nLag (Month)", zlab = "\n\nIncidence Risk Ratio",
        ticktype = "detailed", nticks = 4)
  dev.off()
  
  # g. 生成并保存 HTML 表格
  output_filename_html <- file.path("report_result_glm_offset", paste0(pollutant, "_summary.html"))
  analysis_table <- kable(glm_summary_with_stars, digits = 4, align = "c", 
                          caption = paste0("Summary of ", pollutant, " Results"), format = "html")
  cat(analysis_table, file = output_filename_html)
  
  cat(paste0(" -> ", pollutant, " 的图表和报告已保存。\n"))
}

cat("\n--- 所有分析流程执行完毕！ ---\n")