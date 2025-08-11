library(readxl)
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

data_for_correlation <- summary_wide %>%
  filter(city %in% top_9_cities_en) %>%
  # 只选择我们定义好的污染物列
  select(all_of(pollutants_to_analyze))
cat("--- 正在计算污染物相关性矩阵 ---\n")
# use = "pairwise.complete.obs" 会在使用时忽略缺失值
correlation_matrix <- cor(data_for_correlation, use = "pairwise.complete.obs")


# --- 4. 自动化生成 Markdown 报告 ---
cat("--- 正在生成 Markdown 报告 ---\n")

# a. 创建结果文件夹
report_dir <- "correlation_report"
dir.create(report_dir, showWarnings = FALSE)

# b. 【生成图片】使用 corrplot 绘制相关性热图并保存
plot_filename <- "pollutant_correlation_plot.png"
plot_filepath <- file.path(report_dir, plot_filename)

png(plot_filepath, width = 800, height = 800, res = 100)
corrplot(
  correlation_matrix,
  method = "color",       # 用颜色展示
  order = "alphabet",       # 按层次聚类结果排序，相似的污染物会靠在一起
  addCoef.col = "black",  # 在格子上添加相关系数值
  tl.col = "black",       # 调整标签颜色
  tl.srt = 45,            # 标签倾斜45度
  diag = FALSE            # 不显示对角线
)
dev.off()
cat("相关性热图已保存到:", plot_filepath, "\n")


# c. 【生成文本】将所有内容组合成 Markdown 格式的字符串
# i. 报告标题和说明
md_header <- "
# Top 9 城市污染物间相关性分析报告

本报告旨在展示主要污染物在广东省发病数最高的9个城市中的月度平均浓度之间的相关性。
"

# ii. 图片的 Markdown 链接
md_plot <- paste0("## 相关性可视化热图\n\n![污染物相关性热图](", plot_filename, ")")

# iii. 表格的 Markdown 文本
md_table_title <- "\n## 相关系数矩阵\n"
md_table <- kable(
  correlation_matrix,
  digits = 2, # 保留两位小数
  format = "markdown",
  caption = "污染物月均浓度相关系数 (Pearson's r)"
)

# d. 组合所有 Markdown 片段
final_markdown_content <- paste(
  md_header,
  md_plot,
  md_table_title,
  paste(md_table, collapse = "\n"),
  collapse = "\n\n"
)

# e. 写入 .md 文件
output_md_file <- file.path(report_dir, "correlation_report.md")
writeLines(final_markdown_content, con = output_md_file)

cat("--- 分析完成！ ---\n")
cat("完整的 Markdown 报告已保存到:", output_md_file, "\n")
