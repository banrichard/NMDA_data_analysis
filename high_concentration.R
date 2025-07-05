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
library(knitr)
library(MASS)    # for polr()
library(car)     # for Anova() for significance tests
library(effects) # to visualize effects
library(broom)
library(gridExtra)
library(grid)
library(magick)
library(kableExtra)
source("functions.R")
setwd("~/NMDA/")

my.dat<-read_xlsx("./data/air_quality_new/NMDA1_with_pollution.xlsx")
View(my.dat)
na_counts <- colSums(is.na(my.dat))
na_summary <- data.frame(
  column = names(na_counts),
  na_count = as.vector(na_counts)
)
# Sort, by the highest NA count:
na_summary[order(-na_summary$na_count), ]
View(na_summary)

###############Zero-inflated-Poisson for AQI

reg.dat.severity<-my.dat[,c(1,14:22,29:77)]
#  count(`Residential address`, `Date of onset1`, AQI_M0,AQI_M1,AQI_M2,AQI_M3)
#View(reg.dat)
reg.dat.severity$mRS <- ordered(reg.dat.severity$mRS, 
                                levels = c(1, 2, 3, 4, 5))

pollutants_to_analyze <- get_pollutant_list(reg.dat.severity,"Date of onset1")

all_ordinal_results <- purrr::map(pollutants_to_analyze, ~{
  
  pollutant <- .x
  cat(paste0("\n--- 正在为 ", pollutant, " 运行7个有序逻辑斯蒂回归模型 ---\n"))
  
  # 调用我们强大的新函数
  run_ordinal_models(
    data = reg.dat.severity,
    pollutant_name = pollutant
  )
})

# 3. 为结果列表命名，方便访问
names(all_ordinal_results) <- pollutants_to_analyze

all_coeffs_combined <- purrr::map_dfr(
  all_ordinal_results, 
  "coefficients", # 从每个元素中提取名为 "coefficients" 的数据框
)


# 3. 【关键】在合并后的大表上，执行您提供的添加星号的操作
#    我们用 dplyr::mutate 来添加新列
final_summary_with_stars <- all_coeffs_combined %>%
  mutate(
    signif = cut(
      p.value, # 我们函数的结果列名是小写的 p.value
      breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf),
      labels = c("***", "**", "*", ".", "")
    )
  )


# --- 分析和整理完成！ ---

# 4. 查看最终的、带有显著性标记的完整汇总表
cat("所有污染物模型的最终汇总结果（已添加显著性标记）：\n")
print(final_summary_with_stars)

output_folder <- "severity_result"
dir.create(output_folder, showWarnings = FALSE)


# 4. 获取我们要循环处理的所有污染物名称
pollutants_to_process <- names(all_ordinal_results)


# =================================================================
# 核心循环：遍历每个污染物，生成并保存文件
# =================================================================

cat("\n--- 开始批量生成报告文件 ---\n")

for (pollutant in pollutants_to_process) {
  
  cat(paste0("正在处理: ", pollutant, " ...\n"))
  
  # a. 从大列表中，提取当前污染物的系数汇总表
  current_summary <- all_ordinal_results[[pollutant]]$coefficients
  
  # b. 为这个汇总表添加显著性星号
  summary_with_stars <- current_summary %>%
    mutate(
      signif = cut(
        p.value,
        breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf),
        labels = c("***", "**", "*", ".", "")
      )
    )
  
  # c. 动态地为文件和表格标题命名
  table_caption <- paste("Summary of", pollutant, "Severity Models")
  file_base_name <- paste0(output_folder, "/", pollutant, "_summary")
  
  # --- 生成并保存 HTML 文件 ---
  
  # d. 创建一个精美的 HTML kable 对象
  table_html <- kable(
    summary_with_stars, 
    format = "html",
    digits = 4, 
    align = "c", 
    caption = table_caption
  ) %>%
    kable_styling(bootstrap_options = "striped", full_width = FALSE)
  
  # e. 使用 save_kable() 将其保存为一个完整的 HTML 文件
  save_kable(table_html, file = paste0(file_base_name, ".html"))
  
  
  # --- 生成并保存 Markdown 文件 ---
  
  # f. 创建 Markdown 格式的表格代码
  table_md <- kable(
    summary_with_stars,
    format = "markdown",
    digits = 4,
    align = "c",
    caption = table_caption
  )
  
  # g. 使用 writeLines() 将其保存为一个 .md 文件
  writeLines(table_md, con = paste0(file_base_name, ".md"))
  
  cat(paste0(" -> ", pollutant, " 的 HTML 和 Markdown 文件已保存。\n"))
}

cat("\n--- 所有报告文件已成功生成在 '", output_folder, "' 文件夹中！ ---\n")
