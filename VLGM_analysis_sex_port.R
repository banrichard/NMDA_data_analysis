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
main_folder <- "~/NMDA/data/air_quality_new/month"
city_map <- get_city_map() # 假设此函数在 functions.R 中

summary_wide <- process_all_subfolder_data(
  main_folder_path = main_folder,
  city_map_df = city_map
)
# a. 读取病人数据
my.dat <- readxl::read_xlsx("./NMDA_with_population_sex_ratio_age_portion.xlsx")
my.dat <- my.dat %>%mutate(
  # 先用 as.character 确保是文本，再用 as.numeric 转换为数值
  # 任何无法转换的值都会被自动变成 NA
  age_014_protion = as.numeric(as.character(age_014_protion))
) %>%
  relocate(sex_ratio_MvsW, age_014_protion, .before = `Date of onset1`)
pollutants_to_analyze <- get_pollutant_list(data = my.dat, marker_column = "Date of onset1")
population_long <- readxl::read_xlsx("./data/guangdong_population.xlsx") %>%
  filter(City != "Guangdong") %>%
  pivot_longer(
    cols = `2014`:`2024`,
    names_to = "year",
    values_to = "population"
  ) %>%
  mutate(year = as.integer(year))


aggregated_data <- my.dat %>%
  group_by(`Residential address`, `Date of onset1`) %>%
  summarise(
    n = n(),
    population = first(population),
    sex_ratio_MvsW = first(sex_ratio_MvsW),
    age_014_protion = first(age_014_protion),
    across(ends_with("_M0") | ends_with("_M1") | ends_with("_M2") | ends_with("_M3"), first)
  ) %>%
  ungroup()


# --- 步驟 B: 創建一個【真正完整】的時間網格 (已修正) ---
cat("--- 正在創建完整時間網格 ---\n")

# 【關鍵修正】從 city_map 獲取權威、完整的城市列表，而不是從聚合數據中獲取
all_cities_in_guangdong <- city_map$city_en

# 創建從 2014年8月到 2024年12月的所有月份
full_month_grid <- format(
  seq(as.Date("2014-08-01"), as.Date("2024-12-01"), by = "month"), 
  "%Y-%m"
)

# 使用 expand_grid 創建所有“城市-月份”的組合
complete_grid <- expand_grid(
  `Residential address` = all_cities_in_guangdong, # <-- 使用完整的城市列表
  `Date of onset1` = full_month_grid
)


# --- 步驟 C: 將聚合數據合併到完整網格上，並填充缺失值 ---
cat("--- 正在補全數據並填充缺失值 ---\n")

final_complete_panel <- complete_grid %>%
  left_join(aggregated_data, by = c("Residential address", "Date of onset1")) %>%
  
  # 1. 將病例數 n 的 NA 替換為 0
  mutate(n = tidyr::replace_na(n, 0)) %>%
  
  # 2. 按城市分組，並用該城市【最近的一個有效觀測值】向下填充其他所有缺失的協變量
  group_by(`Residential address`) %>%
  tidyr::fill(
    population, sex_ratio_MvsW, age_014_protion, 
    ends_with("_M0"), ends_with("_M1"), ends_with("_M2"), ends_with("_M3"),
    .direction = "downup" # .direction = "downup" 會先向下填充再向上填充，更穩健
  ) %>%
  ungroup()%>%  relocate(n,population,sex_ratio_MvsW, age_014_protion, .before = `Date of onset1`)
id_cols <- names(final_complete_panel)[!grepl("_M\\d$", names(final_complete_panel))]

cat("将保留以下核心列，并为每个污染物创建单独的面板：\n")
print(id_cols)


# 5. 使用 purrr::map 循环，为每个污染物“切片”数据
list_of_final_panels <- purrr::map(pollutants_to_analyze, ~{
  
  # .x 代表当前的污染物名称, e.g., "AQI"
  current_pollutant <- .x
  
  # 动态生成当前污染物对应的四个滞后列名
  lag_cols_for_pollutant <- paste0(current_pollutant, "_M", 0:3)
  
  # 从大面板中，只挑选出【核心列】和【当前污染物的滞后列】
  final_complete_panel %>%
    select(
      all_of(id_cols),
      all_of(lag_cols_for_pollutant)
    )
})

# 6. 为列表命名，方便后续按名字访问
names(list_of_final_panels) <- pollutants_to_analyze




dir.create("adjusted_vglm_plots_age", showWarnings = FALSE)
dir.create("adjusted_vglm_reports_age", showWarnings = FALSE)


# =================================================================
# 核心循环：为每个污染物执行【调整后】的分析和绘图
# =================================================================

cat("\n--- 开始批量运行带协变量的 GLM 模型并生成结果 ---\n")

# 定义您想在模型中调整的协变量
covariates_to_include <- c("age_014_protion")
for (pollutant in pollutants_to_analyze) {
  
  cat(paste0("\n正在处理: ", pollutant, " ...\n"))
  
  # a. 从列表中获取当前污染物的面板数据
  current_panel <- list_of_final_panels[[pollutant]]
  # b. 运行带 offset 的 GLM 模型
  vglm_results <- run_adjusted_vglm(
    panel_data = current_panel,
    pollutant_name = pollutant,
    covariates = covariates_to_include
  )
  
  if (is.null(vglm_results)) next
  
  # --- b. 为结果添加显著性星号 ---
  summary_with_stars <- vglm_results$summary_table %>%
    mutate(
      signif = cut(`Pr(>|z|)`, breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf), labels = c("***", "**", "*", ".", ""))
    )
  
  # --- c. 准备绘图用的 estbeta 矩阵 ---
  estbeta <- vglm_results$summary_table %>%
    filter(term == "(Intercept)" | term == model) %>%
    mutate(term_type = if_else(term == "(Intercept)", "Intercept", "Slope")) %>%
    select(model, term_type, Estimate) %>%
    pivot_wider(names_from = term_type, values_from = Estimate) %>%
    arrange(model) %>%
    select(Intercept, Slope) %>%
    as.matrix()
  
  # --- d. 准备绘图坐标 ---
  y_coords <- 0:3
  pollutant_M0_col <- paste0(pollutant, "_M0")
  x_range <- range(final_complete_panel[[pollutant_M0_col]], na.rm = TRUE)
  x_coords <- seq(x_range[1], x_range[2], length.out = 50)
  
  # 计算 z 值，其含义是“给定有病例，预测的平均病例数”
  z_matrix <- outer(x_coords, y_coords, function(x, y) exp(estbeta[(y + 1), 1] + x * estbeta[(y + 1), 2]))
  
  # --- e. 绘图和保存 ---
  output_filename_jpeg <- file.path("adjusted_vglm_plots_age", paste0(pollutant, "_adjusted_plot.jpeg"))
  jpeg(output_filename_jpeg, width = 560, height = 500, quality = 100)
  persp(x_coords, y_coords, z_matrix, 
        theta = 45, phi = 30, expand = 0.75, col = "#8491B4", 
        xlab = paste("\n", pollutant), ylab = "\nLag (Month)", 
        # Z轴含义已更新
        zlab = "\n\nPredicted Mean Count (n>0)",
        ticktype = "detailed", nticks = 4)
  dev.off()
  
  # --- f. 生成并保存 HTML 表格 ---
  output_filename_html <- file.path("adjusted_vglm_reports_age", paste0(pollutant, "_adjusted_summary.html"))
  analysis_table <- kable(summary_with_stars, digits = 4, align = "c", 
                          caption = paste0("Summary of ", pollutant, " Adjusted VGLM Results (Zero-Truncated)"), format = "html")
  cat(analysis_table, file = output_filename_html)
  
  cat(paste0(" -> ", pollutant, " 的调整后图表和报告已保存。\n"))
}

cat("\n--- 所有分析流程执行完毕！ ---\n")