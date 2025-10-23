library(readxl)
library(dplyr)
library(purrr)
library(ggplot2) # 繪圖核心包
library(broom)   # 用於 tidy 模型結果

# 加載您的自定義函數
source("functions.R") # 確保已加載 run_single_lag_glm


# --- 2. 數據準備 (使用您之前的面板數據) ---
cat("--- 正在準備聚合面板數據 ---\n")
# a. 加載原始數據
my.dat.raw <- readxl::read_xlsx("./NMDA_with_population_sex_ratio_age_portion.xlsx")
summary_wide <- process_all_subfolder_data(
  main_folder_path = main_folder,
  city_map_df = city_map
)

my.dat.raw <- my.dat.raw %>%
  rename(
    `Brainstem dysfunction` = `Brainstem dysfunction（0=none; 1=gaze paresis; 2=tube feeding; 3=ventilator care due to hypoventilation）`,
    `Gender` = `Gender（0=male,1=female）`
  ) 
my.dat.raw<- my.dat.raw %>%relocate('sex_ratio_MvsW','age_014_protion', .before = `Date of onset1`)
pollutants_to_analyze <- get_pollutant_list(data = my.dat.raw, marker_column = "Date of onset1")
# b. 創建聚合面板數據
panel_data_agg <- my.dat.raw %>%
  group_by(`Residential address`, `Date of onset1`) %>%
  summarise(
    n = n(),
    Age = mean(as.numeric(Age), na.rm = TRUE),
    across(starts_with(c("AQI_", "CO_", "SO2_", "NO2_", "O3_", "PM")), first)
  ) %>%
  ungroup() %>%
  filter(!is.na(Age)) # 確保年齡數據有效

# c. 獲取所有污染物名稱 (例如 "AQI", "CO", "SO2", "NO2", "O3", "PM2.5", "PM10")
#    這裡假設污染物命名規則是 "污染物名稱_M0" 到 "污染物名稱_M3"
all_pollutant_names <- unique(sub("_M[0-3]", "", names(panel_data_agg)[grepl("_[M][0-3]$", names(panel_data_agg))]))

# 【關鍵修改】過濾掉所有以 _24h 結尾的污染物
pollutants_to_analyze <- all_pollutant_names[!grepl("_24h$", all_pollutant_names)]

cat("--- 已過濾掉 _24h 污染物，將分析以下污染物：---\n")
print(pollutants_to_analyze)
# 如果某些污染物沒有所有滯後期，需要進行調整或在後面過濾 NA

# --- 3. 運行所有單滯後模型並收集結果 ---
cat("\n--- 正在運行所有污染物和滯後期的模型 ---\n")

all_lag_results <- purrr::map_dfr(pollutants_to_analyze, ~{
  pollutant_name <- .x
  lag_cols_for_pollutant <- paste0(pollutant_name, "_M", 0:3)
  
  # 過濾掉那些在 panel_data_agg 中實際不存在的列
  existing_lag_cols <- lag_cols_for_pollutant[lag_cols_for_pollutant %in% names(panel_data_agg)]
  
  if (length(existing_lag_cols) == 0) {
    message(paste("Warning: No lag columns found for pollutant", pollutant_name, ". Skipping."))
    return(NULL)
  }
  
  purrr::map_dfr(existing_lag_cols, ~ run_single_lag_glm(panel_data_agg, .x))
})

# 過濾掉模型運行失敗（estimate為NA）的結果
all_lag_results <- all_lag_results %>% filter(!is.na(estimate))

if (nrow(all_lag_results) == 0) {
  stop("所有模型運行失敗或沒有有效結果，無法繪圖。")
}

# --- 4. 計算 RR 值和 95% 置信區間 ---
# 您希望污染物濃度固定到1，这通常意味着我们计算的是每增加一个单位污染物的RR值
# CI = estimate +/- 1.96 * std.error
# RR = exp(estimate)
# Lower CI = exp(estimate - 1.96 * std.error)
# Upper CI = exp(estimate + 1.96 * std.error)
cat("\n--- 正在計算相對風險 (RR) 及其 95% 置信區間 ---\n")
plot_data <- all_lag_results %>%
  mutate(
    RR = exp(estimate),
    lower_ci = exp(estimate - 1.96 * std.error),
    upper_ci = exp(estimate + 1.96 * std.error)
  )

# --- 5. 繪製滯後效應曲線圖 ---
cat("\n--- 正在繪製滯後效應曲線圖 ---\n")

# 創建結果文件夾
output_dir <- "lag_response_plots"
dir.create(output_dir, showWarnings = FALSE)
pollutant_labels <- c(
  "AQI" = "AQI",
  "NO2" = expression(NO[2]~"(µg/m"^3*")"),
  "SO2" = expression(SO[2]~"(µg/m"^3*")"),
  "O3" = expression(O[3]~"(µg/m"^3*")"),
  "CO" = expression(CO~"(mg/m"^3*")"),
  "PM2.5" = expression(PM[2.5]~"(µg/m"^3*")"),
  "PM10" = expression(PM[10]~"(µg/m"^3*")")
)

# c. 使用 for 循環遍歷每種污染物
for (pollutant_name in pollutants_to_analyze) {
  
  cat(paste0("  - Processing plot for: ", pollutant_name, "\n"))
  
  # i. 篩選出當前污染物的數據
  current_plot_data <- plot_data %>%
    filter(pollutant == pollutant_name)
  
  # 如果某污染物沒有有效數據（可能模型失敗），則跳過
  if(nrow(current_plot_data) == 0) {
    cat(paste0("    Skipping ", pollutant_name, " due to missing data.\n"))
    next 
  }
  
  # ii. 獲取當前污染物的標籤 (用於標題)
  #    如果 pollutant_labels 中沒有定義，就直接用污染物名字
  current_title_label <- pollutant_labels[pollutant_name]
  if (is.na(current_title_label)) {
    current_title_label <- pollutant_name
  }
  
  # iii. 為當前污染物創建 ggplot 對象
  single_lag_plot <- ggplot(current_plot_data, aes(x = lag, y = RR)) +
    geom_hline(yintercept = 1, linetype = "solid", color = "black") +
    geom_errorbar(aes(ymin = lower_ci, ymax = upper_ci), width = 0.2, color = "gray") +
    geom_point(color = "red", size = 2.5) +
    
    # 設置標籤和標題
    labs(
      x = "Lag (months)",
      y = "Relative Risk (RR)",
      title = current_title_label # 使用污染物標籤作為標題
    ) +
    
    scale_x_continuous(breaks = 0:3, labels = c("0", "1", "2", "3")) +
    theme_bw() + # 使用黑白主題
    theme(
      plot.title = element_text(hjust = 0.5, face = "bold", size = 14), # 居中標題
      axis.title = element_text(size = 12, face = "bold"),
      axis.text = element_text(size = 10, color = "black"), # 確保軸刻度可見
      panel.grid.major = element_line(color = "grey90", size = 0.5),
      panel.grid.minor = element_blank()
    )
  
  # iv. 定義輸出文件名 (替換掉標籤中的特殊字符，以防文件名錯誤)
  safe_filename <- stringr::str_replace_all(pollutant_name, "[^[:alnum:]_]", "_") # 將非字母數字下劃線替換為下劃線
  output_filename <- file.path(output_dir, paste0(safe_filename, "_lag_curve.png"))
  
  # v. 保存圖表
  ggsave(output_filename, plot = single_lag_plot, width = 5, height = 4.5, dpi = 300) # 可以調整尺寸
}

cat(paste0("\n所有獨立的滯後效應曲線圖已保存到: ", output_dir, "\n"))
cat("\n--- 所有分析流程執行完畢！ ---\n")