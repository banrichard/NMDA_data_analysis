library(readxl)
library(dplyr)
library(purrr)
library(ggplot2)
library(broom)
library(stringr)
library(ordinal) # <-- 【新】加載 ordinal 包

# 加載您的自定義函數
source("functions.R") # 確保已加載【新】的 run_ordinal_dlm


# --- 2. 數據準備 ---
cat("--- 正在準備所有基礎數據 ---\n")
setwd("~/NMDA/")
# a. 加載原始數據
my.dat.raw <- readxl::read_xlsx("./NMDA_with_population_sex_ratio_age_portion.xlsx")
my.dat.raw<- my.dat.raw %>%relocate('sex_ratio_MvsW','age_014_protion', .before = `Date of onset1`)


symptom_columns <- c(
  "Seizures", "Memory dysfunction", "Psychiatric symptoms", "Coma", 
  "Dyskinesia/dystonia", "Brainstem dysfunction" 
  # "Language problem", "Gait instability and ataxia" # 如果需要，也加入
)
my.dat_prepared <- my.dat.raw %>%
  # 重命名 Brainstem dysfunction 列（如果需要）
  rename(
    `Brainstem dysfunction` = `Brainstem dysfunction（0=none; 1=gaze paresis; 2=tube feeding; 3=ventilator care due to hypoventilation）`
  ) %>%
  mutate(
    # --- 處理所有症狀列 ---
    
    # 【請根據您的實際數據，修改這部分】
    # 假設：Seizures, Memory dysfunction, Psychiatric symptoms, Coma, Dyskinesia 都是二元 (0/1)
    across(
      c("Seizures", "Memory dysfunction", "Psychiatric symptoms", "Coma", "Dyskinesia/dystonia"),
      ~ factor(., levels = c("0", "1"), labels = c("No", "Yes")) # 轉為二元因子
    ),
    
    # Brainstem dysfunction 是有序的
    `Brainstem dysfunction` = factor(
      `Brainstem dysfunction`,
      levels = c("0", "1", "2", "3", "1+2", "1+3", "2+3", "1+2+3"),
      ordered = TRUE
    )
  )

cat("\n\n==================== 數據診斷開始 ====================\n")
cat("--- 正在檢查【處理後】的症狀列數據分佈 ---\n\n")

# 這是我們要檢查的症狀列表
symptom_columns_to_check <- c(
  "Seizures", "Memory dysfunction", "Psychiatric symptoms", "Coma", 
  "Dyskinesia/dystonia", "Brainstem dysfunction"
)

# 循環遍歷並打印每個症狀的頻數表
for (symptom in symptom_columns_to_check) {
  
  if (!symptom %in% names(my.dat_prepared)) {
    cat(paste0("!!! 錯誤: 找不到列 '", symptom, "' !!!\n\n"))
    next
  }
  
  cat(paste0("--- 診斷: '", symptom, "' ---\n"))
  # 打印頻數表，並顯示 NA 的數量
  print(table(my.dat_prepared[[symptom]], useNA = "ifany"))
  cat("\n")
}

all_pollutant_names <- get_pollutant_list(data = my.dat_prepared, marker_column = "Date of onset1")
pollutants_to_analyze <- all_pollutant_names[!grepl("_24h$", all_pollutant_names)]
cat("--- 將分析以下污染物的 DLM 模型：---\n")
print(pollutants_to_analyze)
# =================================================================
pollutant_labels <- c(
  "AQI" = "AQI",
  "NO2" = expression(NO[2]~"(µg/m"^3*")"),
  "SO2" = expression(SO[2]~"(µg/m"^3*")"),
  "O3" = expression(O[3]~"(µg/m"^3*")"),
  "CO" = expression(CO~"(mg/m"^3*")"),
  "PM2.5" = expression(PM[2.5]~"(µg/m"^3*")"),
  "PM10" = expression(PM[10]~"(µg/m"^3*")")
)

# f. 創建結果文件夾
output_dir <- "lag_response_plots_symptoms"
dir.create(output_dir, showWarnings = FALSE)


# --- 3. 【核心循環】遍歷每個症狀，運行模型並繪圖 ---
cat("\n--- 開始循環分析每個症狀 ---\n")
for (current_symptom in symptom_columns) {
  
  cat(paste0("\n======================================================\n"))
  cat(paste0("          正在處理結局: ", current_symptom, "\n"))
  cat(paste0("======================================================\n"))
  
  # a. 【雙重循環】為當前症狀，運行所有污染物和所有滯後期
  all_results_for_symptom <- purrr::map_dfr(pollutants_to_analyze, ~{
    pollutant_name <- .x
    
    # 內層循環：遍歷 4 個滯後期
    purrr::map_dfr(0:3, ~{
      lag_num <- .x
      pollutant_col_name <- paste0(pollutant_name, "_M", lag_num)
      
      if (!pollutant_col_name %in% names(my.dat_prepared)) return(NULL)
      
      # 運行【新的】單滯後模型
      result_from_model <- run_single_lag_auto(
        data = my.dat_prepared,
        pollutant_col = pollutant_col_name,
        outcome_var = current_symptom
      )
      
      # --- !! 【關鍵修正】 !! ---
      # 在 mutate 之前，必須檢查返回的結果是否為 NULL
      if (!is.null(result_from_model)) {
        # 如果不是 NULL (即模型成功運行)，才添加標識
        result_from_model %>%
          mutate(pollutant = pollutant_name, lag = lag_num)
      } else {
        # 如果是 NULL (模型失敗或跳過)，返回一個空的 tibble
        # 這樣 map_dfr 就會安全地跳過它，而不會崩潰
        tibble() 
      }
      # --- 修正結束 ---
      
    })
  })
  
  # b. 檢查是否有結果
  if (nrow(all_results_for_symptom) == 0) {
    cat(paste0("--- 對於結局 ", current_symptom, " 沒有找到任何有效的模型結果，跳過繪圖。 ---\n"))
    next # 跳到下一個症狀
  }
  
  # c. 計算 OR 值和 95% 置信區間
  plot_data <- all_results_for_symptom %>%
    filter(!is.na(estimate)) %>%
    mutate(
      OR = exp(estimate),
      lower_ci = exp(estimate - 1.96 * std.error),
      upper_ci = exp(estimate + 1.96 * std.error)
    )
  
  # d. 繪製【當前症狀】的匯總圖 (和上次一樣)
  symptom_lag_plot <- ggplot(plot_data, aes(x = lag, y = OR)) +
    geom_hline(yintercept = 1, linetype = "solid", color = "black") +
    geom_errorbar(aes(ymin = lower_ci, ymax = upper_ci), width = 0.2, color = "gray") +
    geom_point(color = "red", size = 2.5) +
    facet_wrap(
      ~ pollutant, 
      scales = "free_y", 
      labeller = as_labeller(pollutant_labels, default = label_parsed)
    ) +
    labs(
      x = "Lag (months)",
      y = "Odds Ratio (OR)",
      title = paste("Lag-specific Odds Ratios for:", current_symptom)
    ) +
    scale_x_continuous(breaks = 0:3, labels = c("0", "1", "2", "3")) +
    theme_bw() +
    theme(
      plot.title = element_text(hjust = 0.5, face = "bold", size = 14),
      strip.text = element_text(size = 11, face = "bold"),
      strip.background = element_blank(),
      axis.title = element_text(size = 12, face = "bold"),
      axis.text = element_text(size = 10, color = "black"),
      panel.grid.major = element_line(color = "grey90", size = 0.5),
      panel.grid.minor = element_blank(),
      panel.spacing = unit(1.5, "lines")
    )
  
  # e. 保存當前症狀的匯總圖
  safe_filename <- stringr::str_replace_all(current_symptom, "[^[:alnum:]_]", "_")
  output_filename <- file.path(output_dir, paste0(safe_filename, "_lag_curve_OR.png"))
  ggsave(output_filename, plot = symptom_lag_plot, width = 10, height = 8, dpi = 300)
  
  cat(paste0("--- 已保存 ", current_symptom, " 的圖表到: ", output_filename, " ---\n"))
}

cat("\n--- 所有症狀的滯後效應圖均已生成！ ---\n")
