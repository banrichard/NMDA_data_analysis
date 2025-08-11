# =================================================================
# 主分析脚本：为 Top 9 城市运行 VGLM 并生成图表报告
# =================================================================

# --- 1. 环境设置 ---
# 加载所有需要的包
library(readxl)
library(dplyr)
library(stringr)
library(purrr)
library(tidyr)
library(VGAM)
library(knitr)

# 加载您的自定义函数
source("functions.R") # 确保其中有 get_pollutant_list 和 run_vglm_analysis 函数

# --- 2. 数据准备 ---
setwd("~/NMDA/")
# a. 读取原始病人数据
my.dat <- readxl::read_xlsx("./NMDA_with_population_sex_ratio_age_portion.xlsx")%>%
  relocate(sex_ratio_MvsW,age_014_protion, .before = `Date of onset1`)
# b. 准备城市名字典（用于获取完整的城市列表，以防万一）
city_map <- get_city_map()

# --- 3. 【关键】筛选总病例数排名前 9 的城市 ---
cat("--- 正在筛选总病例数排名前 9 的城市 ---\n")

# a. 计算每个城市的总病例数，并找出前 9 名
top_9_cities_en <- my.dat %>%
  count(`Residential address`, sort = TRUE, name = "total_cases") %>%
  slice_head(n = 9) %>%
  pull(`Residential address`)

cat("总病例数排名前 9 的城市是：\n")
print(top_9_cities_en)

# b. 使用这个 top 9 名单，筛选您的原始病人数据
my.dat_top9 <- my.dat %>%
  filter(`Residential address` %in% top_9_cities_en)

cat(paste0("\n原始数据已筛选，只保留 Top 9 城市的数据，共 ", nrow(my.dat_top9), " 行。\n"))

# --- 4. 获取污染物列表并创建结果文件夹 ---
pollutants_to_analyze <- get_pollutant_list(
  data = my.dat_top9,
  marker_column = "Date of onset1" # 假设协变量在此之前
)
report_dir <- "vglm_top9_markdown_report"
figure_dir <- file.path(report_dir, "figures") # 将图片放在报告文件夹的子目录中
dir.create(figure_dir, recursive = TRUE, showWarnings = FALSE)

# 初始化一个空列表，用于存放每个污染物的 Markdown 文本片段
markdown_parts <- list()


# =================================================================
# 核心循环：为每个污染物执行 VGLM 分析并生成 Markdown 内容
# =================================================================

cat("\n--- 开始批量运行 VGLM 模型并生成报告内容 ---\n")

for (pollutant in pollutants_to_analyze) {
  cat(paste0("\nProcessing: ", pollutant, " ...\n"))
  
  # --- a. 数据聚合 (不变) ---
  lag_cols <- paste0(pollutant, "_M", 0:3)
  reg_dat <- my.dat_top9 %>%
    count(`Residential address`, `Date of onset1`, across(all_of(lag_cols)), name = "n")
  if (nrow(reg_dat) == 0) {
    cat("  -> WARNING: No data found for this pollutant after aggregation. Skipping.\n")
    next # next 會跳過當前迴圈，繼續下一個
  }
  # --- b. 运行 VGLM 模型 (不变) ---
  vglm_results <- run_vglm_analysis(reg_data = reg_dat, pollutant_name = pollutant)
  if (is.null(vglm_results)) next
  summary_with_stars <- vglm_results$summary_table %>%
    mutate(
      signif = cut(`Pr(>|z|)`, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))
    )
  # --- c. 准备 estbeta 矩阵 (不变) ---
  estbeta <- summary_with_stars %>%
    filter(term == "(Intercept)" | term == model) %>%
    mutate(term_type = if_else(term == "(Intercept)", "Intercept", "Slope")) %>%
    select(model, term_type, Estimate) %>%
    pivot_wider(names_from = term_type, values_from = Estimate) %>%
    arrange(model) %>%
    select(Intercept, Slope) %>%
    as.matrix()
  
  # --- d. 准备绘图坐标 (不变) ---
  y_coords <- 0:3
  pollutant_M0_col <- paste0(pollutant, "_M0")
  x_range <- range(reg_dat[[pollutant_M0_col]], na.rm = TRUE)
  x_coords <- seq(x_range[1], x_range[2], length.out = 50)
  plot_filename <- paste0(pollutant, "_RR_plot.jpeg")
  plot_relative_path <- file.path("figures", plot_filename)
  # --- e. 【关键修改】计算 Z 轴的值：相对风险 (RR) ---
  
  # 我们选择 M0 浓度的中位数作为所有滞后期的参照值
  reference_value <- median(reg_dat[[pollutant_M0_col]], na.rm = TRUE)
  cat(paste0("  - Reference value for ", pollutant, " is: ", round(reference_value, 2), "\n"))
  
  # 使用新的公式计算 z_matrix
  z_matrix <- outer(x_coords, y_coords, function(x, y) {
    # 从 estbeta 矩阵中获取当前滞后期 (y) 的斜率 (第2列)
    slope <- estbeta[(y + 1), 2]
    
    # 计算 RR = exp(slope * (x - reference_value))
    exp(slope * (x - reference_value))
  })
  
  # --- f. 绘图并保存 (Z 轴标签已修改) ---
  output_filename_jpeg <- file.path(figure_dir, paste0(pollutant, "_RR_plot.jpeg"))
  jpeg(output_filename_jpeg, width = 560, height = 500, quality = 100)
  persp(x_coords, y_coords, z_matrix, 
        theta = 45, phi = 30, expand = 0.75, col = "#8491B4", 
        xlab = paste("\n", pollutant), ylab = "\nLag (Month)", 
        # 【重要】Z轴的含义现在是“相对风险”
        zlab = "\n\nRelative Risk (RR)",
        ticktype = "detailed", nticks = 4)
  dev.off()
  
  # --- e. 【生成文本】将所有内容转换为 Markdown 格式的文本字符串 ---
  
  md_header <- paste0("## VGLM 分析报告: ", pollutant)
  md_table <- kable(
    summary_with_stars, 
    format = "markdown",
    digits = 4, 
    caption = paste("模型汇总:", pollutant)
  )
  md_plot_link <- paste0("![3D Plot for ", pollutant, "](", plot_relative_path, ")")
  
  # --- f. 将所有 Markdown 片段组合起来，存入列表 ---
  markdown_parts[[pollutant]] <- paste(
    md_header,
    "\n#### 模型汇总表\n",
    paste(md_table, collapse = "\n"),
    "\n\n#### 3D 预测病例数图\n",
    md_plot_link,
    collapse = "\n\n"
  )
  
  cat(paste0(" -> ", pollutant, " 的报告内容已生成。\n"))
}

# --- 5. 最终组合并保存 Markdown 文件 ---
cat("\n--- 正在生成最终的 Markdown 报告文件 ---\n")

main_title <- "# Top 9 城市 VGLM 分析报告"
final_markdown_content <- paste(
  main_title,
  paste(markdown_parts, collapse = "\n\n---\n\n"), # 用水平分割线分隔每个污染物
  collapse = "\n"
)

output_md_file <- file.path(report_dir, "vglm_top9_full_report.md")
writeLines(final_markdown_content, con = output_md_file)

cat("\n--- 所有分析流程执行完毕！ ---\n")
cat("完整的 Markdown 报告已保存到:", output_md_file, "\n")
