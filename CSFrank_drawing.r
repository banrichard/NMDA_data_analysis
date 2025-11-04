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
my.dat.raw$CSFrank<-NA
for (i in 1:nrow(my.dat.raw)) {
  if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="+" ) {
    my.dat.raw$CSFrank[i]=1
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1：1000" ) {
    my.dat.raw$CSFrank[i]=1
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:320" ) {
    my.dat.raw$CSFrank[i]=1
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:300" ) {
    my.dat.raw$CSFrank[i]=1
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:100+" ) {
    my.dat.raw$CSFrank[i]=2
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:100" ) {
    my.dat.raw$CSFrank[i]=2
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="positive" ) {
    my.dat.raw$CSFrank[i]=1
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:32" ) {
    my.dat.raw$CSFrank[i]=2
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:30" ) {
    my.dat.raw$CSFrank[i]=2
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="++" ) {
    my.dat.raw$CSFrank[i]=3
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:10" ) {
    my.dat.raw$CSFrank[i]=3
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:3.2" ) {
    my.dat.raw$CSFrank[i]=3
  }else if( my.dat.raw$`anti-NMDAR antibody titer in CSF`[i]=="1:1" ) {
    my.dat.raw$CSFrank[i]=3
  }
}  

my.dat.raw$CSFrank=factor(my.dat.raw$CSFrank,ordered = TRUE)

my.dat.raw <- my.dat.raw %>%
  rename(
    `Brainstem dysfunction` = `Brainstem dysfunction（0=none; 1=gaze paresis; 2=tube feeding; 3=ventilator care due to hypoventilation）`,
    `Gender` = `Gender（0=male,1=female）`,
  ) 
# b. 【關鍵】準備結局變量
my.dat_prepared <- my.dat.raw %>%
  mutate(
    # 確保 CSFrank 是正確設定的【有序因子】
    CSFrank = factor(
      CSFrank, 
      levels = c("1", "2", "3"), 
      labels = c("Weak", "Positive", "Strong"), 
      ordered = TRUE
    )
  )
my.dat_prepared <- my.dat_prepared %>%
  relocate(CSFrank, .before = `Date of onset1`)


# c. 獲取污染物列表 (並過濾 _24h)
all_pollutant_names <- get_pollutant_list(data = my.dat_prepared, marker_column = "Date of onset1")
pollutants_to_analyze <- all_pollutant_names[!grepl("_24h$", all_pollutant_names)]
cat("--- 將分析以下污染物的 DLM 模型：---\n")
print(pollutants_to_analyze)


# --- 3. 運行所有污染物的 DLM 模型並收集結果 ---
cat("\n--- 正在運行所有污染物的有序 DLM 模型 ---\n")

all_lag_results <- purrr::map_dfr(pollutants_to_analyze, ~{
  run_ordinal_dlm(
    data = my.dat_prepared,
    pollutant_name = .x,
    outcome_var = "CSFrank"
  )
})

# 過濾掉模型運行失敗（estimate為NA）的結果
all_lag_results <- all_lag_results %>% filter(!is.na(estimate))

if (nrow(all_lag_results) == 0) {
  stop("所有模型運行失敗或沒有有效結果，無法繪圖。")
}

# --- 4. 計算 OR 值和 95% 置信區間 ---
cat("\n--- 正在計算优势比 (OR) 及其 95% 置信區間 ---\n")
plot_data <- all_lag_results %>%
  mutate(
    OR = exp(estimate), # <-- 這是 Odds Ratio
    lower_ci = exp(estimate - 1.96 * std.error),
    upper_ci = exp(estimate + 1.96 * std.error)
  )

# --- 5. 循環繪製並保存每個污染物的獨立圖表 ---
cat("\n--- 正在為每個污染物繪製並保存獨立的圖表 ---\n")

# a. 創建結果文件夾
output_dir <- "lag_response_plots_ordinal_dlm"
dir.create(output_dir, showWarnings = FALSE)

# b. 自定義污染物標籤 (用於圖表標題)
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
  
  current_plot_data <- plot_data %>% filter(pollutant == pollutant_name)
  if(nrow(current_plot_data) == 0) {
    cat(paste0("    Skipping ", pollutant_name, " due to missing data.\n"))
    next 
  }
  
  current_title_label <- pollutant_labels[pollutant_name]
  if (is.na(current_title_label)) { current_title_label <- pollutant_name }
  
  # iii. 為當前污染物創建 ggplot 對象
  single_lag_plot <- ggplot(current_plot_data, aes(x = lag, y = OR)) + # <-- Y 軸是 OR
    geom_hline(yintercept = 1, linetype = "solid", color = "black") +
    geom_errorbar(aes(ymin = lower_ci, ymax = upper_ci), width = 0.2, color = "gray") +
    geom_point(color = "red", size = 2.5) +
    
    # 設置標籤和標題
    labs(
      x = "Lag (months)",
      y = "Odds Ratio (OR)", # <-- Y 軸標籤是 OR
      title = current_title_label
    ) +
    
    scale_x_continuous(breaks = 0:3, labels = c("0", "1", "2", "3")) +
    theme_bw() +
    theme(
      plot.title = element_text(hjust = 0.5, face = "bold", size = 14),
      axis.title = element_text(size = 12, face = "bold"),
      axis.text = element_text(size = 10, color = "black"),
      panel.grid.major = element_line(color = "grey90", size = 0.5),
      panel.grid.minor = element_blank()
    )
  
  # iv. 定義輸出文件名
  safe_filename <- stringr::str_replace_all(pollutant_name, "[^[:alnum:]_]", "_")
  output_filename <- file.path(output_dir, paste0(safe_filename, "_lag_curve_OR.png"))
  
  # v. 保存圖表
  ggsave(output_filename, plot = single_lag_plot, width = 5, height = 4.5, dpi = 300)
}

cat(paste0("\n所有獨立的【抗體滴度 OR】滯後效應曲線圖已保存到: ", output_dir, "\n"))
cat("\n--- 所有分析流程執行完畢！ ---\n")
