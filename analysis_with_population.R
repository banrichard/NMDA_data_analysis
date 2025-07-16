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
setwd("~/NMDA/")


# --- 2. 数据准备 ---
cat("--- 正在准备所有基础数据 ---\n")

# a. 读取病人数据
my.dat <- readxl::read_xlsx("./data/air_quality_new/NMDA1_with_pollution.xlsx")

# b. 读取并转换人口数据为长格式
population_long <- readxl::read_xlsx("./data/guangdong_population.xlsx") %>%
  filter(City != "Guangdong") %>%
  pivot_longer(
    cols = `2014`:`2024`,
    names_to = "year",
    values_to = "population"
  ) %>%
  mutate(year = as.integer(year))

# c. 将人口数据添加到病人数据中
my.dat_with_pop <- my.dat %>%
  mutate(year = as.integer(substr(`Date of onset1`, 1, 4))) %>%
  left_join(population_long, by = c("Residential address" = "City", "year" = "year")) %>%
  relocate(year, population, .before = `Date of onset1`)

# d. 读取并准备污染物暴露数据库 (summary_wide)
main_folder <- "~/NMDA/data/air_quality_new/month"
city_map <- get_city_map() # 假设此函数在 functions.R 中
# 注意：这里我们直接生成【宽格式】的 summary_wide
summary_wide <- process_all_subfolder_data(
  main_folder_path = main_folder,
  city_map_df = city_map
)

# --- 3. 生成所有污染物的面板数据 ---
cat("\n--- 正在为所有污染物生成补全的面板数据 ---\n")

pollutants_to_analyze <- get_pollutant_list(data = my.dat_with_pop, marker_column = "Date of onset1")

# 这是之前创建面板数据的函数，我们现在直接在这里实现，逻辑更清晰
list_of_final_panels <- purrr::map(pollutants_to_analyze, ~{
  
  cat(paste0("为 '", .x, "' 生成面板数据...\n"))
  
  # 创建完整网格
  complete_grid <- expand_grid(
    `Residential address` = city_map$city_en,
    `Date of onset1` = format(seq(as.Date("2014-08-01"), as.Date("2024-12-01"), by = "month"), "%Y-%m")
  ) %>%
    mutate(year = as.integer(substr(`Date of onset1`, 1, 4))) %>%
    left_join(population_long, by = c("Residential address" = "City", "year" = "year"))
  
  # 计算病例数
  case_counts <- my.dat_with_pop %>%
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