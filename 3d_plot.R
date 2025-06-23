library(readxl)
library(lubridate)
library(dplyr)
library(stringr)
library(tidyr)
library(writexl)
library(purrr)
library(pscl)
library(VGAM)
library(scatterplot3d)
# library(plot3D)
library(knitr)
source("functions.R")
setwd("~/NMDA/")

my.dat<-read_xlsx("./data/air_quality_new/NMDA1_with_pollution.xlsx")

start_col_index <- which(names(my.dat) == "Date of onset1")

# 获取 "Date of onset1" 之后的所有列名
all_pollutant_lag_cols <- names(my.dat)[(start_col_index + 1):ncol(my.dat)]

# 移除 "_M0", "_M1" 等后缀，得到污染物的基础名称
pollutant_base_names <- str_remove(all_pollutant_lag_cols, "_M\\d$")

# 获取不重复的污染物列表，这就是我们要循环的对象
pollutants_to_analyze <- unique(pollutant_base_names)

cat("将对以下污染物进行自动化分析和绘图：\n")
print(pollutants_to_analyze)


cat("\n--- 开始批量处理 ---\n")

for (pollutant in pollutants_to_analyze) {
  
  # --- 打印进度信息，方便追踪 ---
  cat(paste0("\nProcessing: ", pollutant, " ...\n"))
  
  # 1. 调用函数，运行模型分析
  analysis_results <- run_pollutant_analysis(
    input_data = my.dat, 
    pollutant_name = pollutant
  )
  
  # 2. 从结果中准备 estbeta 矩阵
  estbeta <- analysis_results$summary_table %>%
    mutate(term_type = if_else(term == "(Intercept)", "Intercept", "Slope")) %>%
    select(model, term_type, Estimate) %>%
    tidyr::pivot_wider(names_from = term_type, values_from = Estimate) %>%
    select(Intercept, Slope) %>%
    as.matrix()
  
  # 3. 准备绘图数据
  y <- 0:3
  # 注意：这里的 x 范围可能需要根据不同污染物进行调整，但为方便起见我们先使用一个通用范围
  # 您可以后续根据 sapply(reg.dat, range) 的结果来为每个污染物设定更精确的范围
  x <- seq(min(my.dat[, paste0(pollutant, "_M0")], na.rm=T), max(my.dat[, paste0(pollutant, "_M0")], na.rm=T), length.out = 50) 
  z <- outer(x, y, function(x, y) exp(estbeta[(y + 1), 1] + x * estbeta[(y + 1), 2]))
  
  # 4. 动态创建文件名和图表标签
  output_filename <- paste0("./result_figure/",pollutant, "_month.jpeg")
  x_label <- paste("\n", pollutant)
  
  # 5. 绘图并保存
  jpeg(output_filename, width = 560, height = 500)
  persp(x, y, z, 
        theta = 45, phi = 30, expand = 0.75, 
        col = "#8491B4", 
        xlab = x_label,
        ylab = "\nLag (Month)",
        zlab = "\n\nIncidence Risk Ratio",
        ticktype = "detailed",
        nticks = 4)
  dev.off()
  
  cat(paste0("图表已保存为: ", output_filename, "\n"))
  
  
  fits <- analysis_results$models
  
  all_summary <- do.call(rbind, Map(extract_vglm_coeffs, fits, names(fits)))
  
  #Add significance stars
  all_summary$signif <- cut(
    all_summary$`Pr(>|z|)`,
    breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf),
    labels = c("***", "**", "*", ".", "")
  )
  
  print(all_summary)
  
  # Create your HTML table as a character string
  analysis_table<-kable(all_summary, digits = 4, align = "c", caption = paste0("Summary of ",pollutant," Results"), format = "html")
  
  # Write it to an HTML file
  cat(analysis_table, file = paste0(pollutant,"_summary.html"))
}

cat("\n--- 所有处理完成！ ---\n")
