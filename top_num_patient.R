library(readxl)
library(lubridate)
library(dplyr)
library(stringr)
library(tidyr)
library(writexl)
library(purrr)
library(VGAM)
library(knitr)

source("functions.R")

# 2. 准备所有【原始】输入数据
# my.dat <- readxl::read_xlsx(...)
# city_map <- get_city_map()
# ... (其他数据加载) ...
setwd("~/NMDA/")


# --- 2. 数据准备 ---
cat("--- 正在准备所有基础数据 ---\n")

# a. 读取病人数据
my.dat <- readxl::read_xlsx("./NMDA_with_population_sex_ratio_age_portion.xlsx") %>%
  relocate(sex_ratio_MvsW,age_014_protion, .before = `Date of onset1`)
main_folder <- "~/NMDA/data/air_quality_new/month"
city_map <- get_city_map() # 假设此函数在 functions.R 中
# 注意：这里我们直接生成【宽格式】的 summary_wide
summary_wide <- process_all_subfolder_data(
  main_folder_path = main_folder,
  city_map_df = city_map
)

population_long <- readxl::read_xlsx("./data/guangdong_population.xlsx") %>%
  filter(City  %in% top_9_cities_en) %>%
  pivot_longer(
    cols = `2014`:`2024`,
    names_to = "year",
    values_to = "population"
  ) %>%
  mutate(year = as.integer(year))


# --- !! 3. 【新增】筛选总病例数排名前 9 的城市 !! ---
cat("--- 正在筛选总病例数排名前 9 的城市 ---\n")

# a. 计算每个城市的总病例数，并找出前 9 名
#    注意：这里的城市名是 my.dat 中的原始中文名
top_9_cities_en <- my.dat %>%
  # count() 会计算每个城市出现的行数，即病例数
  # sort = TRUE 会自动按病例数从高到低排序
  count(`Residential address`, sort = TRUE, name = "total_cases") %>%
  # slice_head(n = 9) 选取前 9 行
  slice_head(n = 9) %>%
  # pull() 将城市名这一列提取为一个向量
  pull(`Residential address`)

cat("总病例数排名前 9 的城市是：\n")
print(top_9_cities_en)

# b. 使用这个 top 9 名单，筛选您的原始病人数据
my.dat_top9 <- my.dat %>%
  filter(`Residential address` %in% top_9_cities_en)

# c. 【重要】同时，我们也要筛选 city_map，确保后续步骤的“权威名单”也是这 9 个城市
city_map_top9 <- city_map %>%
  filter(city_en %in% top_9_cities_en)

cat(paste0("\n原始数据已从 ", nrow(my.dat), " 行筛选至 ", nrow(my.dat_top9), " 行，只保留 Top 9 城市的数据。\n"))


cat("\n--- 正在为所有污染物生成补全的面板数据 ---\n")

pollutants_to_analyze <- get_pollutant_list(data = my.dat_top9, marker_column = "Date of onset1")

list_of_final_panels <- purrr::map(pollutants_to_analyze, ~{
  
  cat(paste0("为 '", .x, "' 生成面板数据...\n"))
  
  # 创建完整网格
  complete_grid <- expand_grid(
    `Residential address` = city_map_top9$city_en,
    `Date of onset1` = format(seq(as.Date("2014-08-01"), as.Date("2024-12-01"), by = "month"), "%Y-%m")
  ) %>%
    mutate(year = as.integer(substr(`Date of onset1`, 1, 4))) %>%
    left_join(population_long, by = c("Residential address" = "City", "year" = "year"))
  
  # 计算病例数
  case_counts <- my.dat_top9 %>%
    count(`Residential address`, `Date of onset1`, name = "n")
  
  # 合并并补零
  full_panel <- left_join(
    complete_grid, 
    case_counts, 
    by = c("Residential address", "Date of onset1")
  ) %>%
    mutate(n = tidyr::replace_na(n, 0))
  
  # 为这个完整面板匹配滞后暴露数据
  final_panel_with_lags <- add_lagged_exposure(
    patient_data = full_panel,
    summary_data_wide = summary_wide,
    date_col_patient = "Date of onset1",
    city_col_patient = "Residential address",
    lags_vector = 0:3
  ) %>%
    # 只保留当前污染物相关的列
    select(
      `Residential address`, `Date of onset1`, population, n,
      starts_with(.x)
    )
  
  return(final_panel_with_lags)
})

names(list_of_final_panels) <- pollutants_to_analyze


# --- 4. 循环分析、绘图、并保存结果 ---
cat("\n--- 开始批量运行 GLM 模型、生成图表和报告 ---\n")

# 创建结果文件夹
report_dir <- "final_markdown_report_vglm"
figure_dir <- file.path(report_dir, "figures") # 将图片放在报告文件夹的子目录中
dir.create(figure_dir, recursive = TRUE, showWarnings = FALSE)

# b. 初始化一个空列表，用于存放每个污染物的 Markdown 文本片段
markdown_parts <- list()

# c. 获取要分析的污染物列表
pollutants_to_analyze <- names(list_of_final_panels)

# d. 核心循环
for (pollutant in pollutants_to_analyze) {
  
  cat(paste0("\n正在处理: ", pollutant, " ...\n"))
  
  # i. 准备数据和运行模型
  current_panel <- list_of_final_panels[[pollutant]]
  glm_results <- run_vglm_analysis(
      current_panel,
      pollutant
  )
  
  # ii. 为结果添加显著性星号
  glm_summary_with_stars <- glm_results$summary_table %>%
    mutate(
      signif = cut(p.value, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))
    )
  
  # --- iii. 生成【图片】并获取其相对路径 ---
  estbeta_from_glm <- glm_results$summary_table %>%
    mutate(term_type = if_else(term == "(Intercept)", "Intercept", "Slope")) %>%
    select(model, term_type, estimate) %>%
    pivot_wider(names_from = term_type, values_from = estimate) %>%
    arrange(model) %>%
    select(Intercept, Slope) %>%
    as.matrix()
  
  y_coords <- 0:3
  pollutant_M0_col <- paste0(pollutant, "_M0")
  x_range <- range(current_panel[[pollutant_M0_col]], na.rm = TRUE)
  x_coords <- seq(x_range[1], x_range[2], length.out = 50)
  z_matrix <- outer(x_coords, y_coords, function(x, y) exp(estbeta_from_glm[(y + 1), 1] + x * estbeta_from_glm[(y + 1), 2]))
  
  # 定义图片文件名和【相对路径】
  plot_filename <- paste0(pollutant, "_month.jpeg")
  plot_relative_path <- file.path("figures", plot_filename) # 例如 "figures/AQI_month.jpeg"
  output_filename_jpeg <- file.path(report_dir, plot_relative_path)
  
  # 保存图片
  jpeg(output_filename_jpeg, width = 560, height = 500, quality = 100)
  persp(x_coords, y_coords, z_matrix, 
        theta = 45, phi = 30, expand = 0.75, col = "#8491B4", 
        xlab = paste("\n", pollutant), ylab = "\nLag (Month)", zlab = "\n\nIncidence Risk Ratio",
        ticktype = "detailed", nticks = 4)
  dev.off()
  
  # --- iv. 生成【Markdown】文本 ---
  
  # Markdown 标题
  md_header <- paste0("## 2.", match(pollutant, pollutants_to_analyze), " ", pollutant, " 分析")
  
  # Markdown 表格
  md_table <- kable(
    glm_summary_with_stars, 
    digits = 4, 
    align = "c", 
    caption = paste("模型汇总:", pollutant), 
    format = "markdown" # <-- 关键：指定格式为 markdown
  )
  
  # Markdown 图片链接
  md_plot_link <- paste0("![", pollutant, " 3D Plot](", plot_relative_path, ")")
  
  # --- v. 将所有 Markdown 片段组合起来，存入列表 ---
  markdown_parts[[pollutant]] <- paste(
    md_header,
    "\n#### 模型汇总表\n",
    paste(md_table, collapse = "\n"),
    "\n\n#### 3D 风险率图\n",
    md_plot_link,
    collapse = "\n\n"
  )
}

# --- 4. 最终组合并保存 Markdown 文件 ---
cat("\n--- 正在生成最终的 Markdown 报告文件 ---\n")

# a. 报告主标题
main_title <- "# Top 9 城市污染物暴露风险分析报告"

# b. 组合所有内容
final_markdown_content <- paste(
  main_title,
  paste(markdown_parts, collapse = "\n\n---\n\n"), # 用水平分割线分隔每个污染物
  collapse = "\n"
)

# c. 写入 .md 文件
output_md_file <- file.path(report_dir, "final_analysis_report.md")
writeLines(final_markdown_content, con = output_md_file)

cat("\n--- 所有分析流程执行完毕！ ---\n")
cat("完整的 Markdown 报告已保存到:", output_md_file, "\n")