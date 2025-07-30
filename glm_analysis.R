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
source("functions.R")

setwd("~/NMDA/")
main_folder <- "~/NMDA/data/air_quality_new/month"
my.dat<-read_xlsx("./data/air_quality_new/NMDA1_with_pollution.xlsx")
population <- read_xlsx("./data/guangdong_population.xlsx")
population_long <- population %>%
  
  # a. 筛选掉第一行“广东省”的汇总数据
  filter(City != "Guangdong") %>%
  
  # b. 【核心】使用 pivot_longer 将年份列从宽转为长
  pivot_longer(
    # 选中所有从 "2014" 到 "2024" 的列
    cols = `2014`:`2024`,
    # 新的、存放年份的列，我们命名为 "year"
    names_to = "year",
    # 新的、存放人口数的列，我们命名为 "population"
    values_to = "population"
  ) %>%
  
  # c. 将 year 列从文本转换为数值，便于后续匹配
  mutate(year = as.integer(year))

my.dat <- my.dat %>%
  mutate(
    # 从 "YYYY-MM" 格式的文本中，提取前4个字符并转为数值
    year = as.integer(substr(`Date of onset1`, 1, 4))
  )%>%
  relocate(year, .before = `Date of onset1`)

my.dat <- left_join(
  my.dat,
  population_long,
  # 【关键】指定使用两个列来进行匹配
  by = c("Residential address" = "City", "year" = "year")
) %>%
  relocate(population, .before = `Date of onset1`)



na_counts <- colSums(is.na(my.dat))
na_summary <- data.frame(
  column = names(na_counts),
  na_count = as.vector(na_counts)
)
# Sort, by the highest NA count:
na_summary[order(-na_summary$na_count), ]


city_map <- get_city_map()

all_metrics_summary <- process_all_subfolder_data(
  main_folder_path = main_folder,
  city_map_df = city_map
)



start_col_index <- which(names(my.dat) == "Date of onset1")

# 获取 "Date of onset1" 之后的所有列名
all_pollutant_lag_cols <- names(my.dat)[(start_col_index + 1):ncol(my.dat)]

# 移除 "_M0", "_M1" 等后缀，得到污染物的基础名称
pollutant_base_names <- str_remove(all_pollutant_lag_cols, "_M\\d$")

# 获取不重复的污染物列表，这就是我们要循环的对象
pollutants_to_analyze <- unique(pollutant_base_names)

list_of_final_panels <- purrr::map(pollutants_to_analyze, ~{
  
  cat(paste0("\n正在为 '", .x, "' 生成完整的面板数据...\n"))
  
  create_final_panel_data(
    pollutant_name = .x,
    case_data = my.dat,
    summary_wide_data = all_metrics_summary,
    city_map = city_map
  )
})
output_excel_path <- "./all_pollutants_panels.xlsx"

# 4. 【关键】一行代码完成所有保存工作！
writexl::write_xlsx(list_of_final_panels, path = output_excel_path)

cat("所有污染物的面板数据已成功保存到单个Excel文件的不同工作表中:\n", output_excel_path, "\n")
names(list_of_final_panels) <- pollutants_to_analyze
list_of_final_panels <- purrr::map(
  list_of_final_panels, 
  ~{
    # .x 代表当前正在处理的数据框 (例如，第一次是 AQI 的面板数据)
    
    # 筛选出 year_month 大于或等于 "2014-08" 的所有行
    filtered_df <- .x %>%
      dplyr::filter(`Date of onset1` >= "2014-08")
    
    # 返回筛选后的数据框
    return(filtered_df)
  }
)

list_of_glm_results <- purrr::map(pollutants_to_analyze, ~{
  
  pollutant_name <- .x
  cat(paste0("\n正在为 ", pollutant_name, " 运行 GLM 模型...\n"))
  
  # 从列表中获取对应污染物的数据面板
  current_panel <- list_of_final_panels[[pollutant_name]]
  
  # 调用我们新的 GLM 分析函数
  run_glm_analysis_with_offset(
    panel_data = current_panel,
    pollutant_name = pollutant_name
  )
})

names(list_of_glm_results) <- pollutants_to_analyze
for (pollutant in pollutants_to_analyze) {
  
  # --- 打印一个标题，方便区分 ---
  cat("\n=========================================\n")
  cat("          分析结果: ", pollutant, "\n")
  cat("=========================================\n")
  
  # --- 从大列表中，根据当前的污染物名称提取对应的结果 ---
  current_result <- list_of_glm_results[[pollutant]]$summary_table
  glm_summary <- current_result %>%
    mutate(
      # cut() 函数会根据我们设定的 p.value 区间，自动给出对应的星号标签
      signif = cut(
        p.value, # 直接使用 broom::tidy 生成的 p.value 列
        breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf),
        labels = c("***", "**", "*", ".", "") # 从极度显著到不显著
      )
    )
  estbeta_from_glm <- current_result %>%
    
    mutate(term_type = if_else(term == "(Intercept)", "Intercept", "Slope")) %>%

    select(model, term_type, estimate) %>%
    
    # c. 使用 pivot_wider 将长表转为宽表
    #    现在每一行是一个模型，有 Intercept 和 Slope 两列
    tidyr::pivot_wider(
      names_from = term_type,
      values_from = estimate
    ) %>%
    
    # d. (可选但推荐) 确保行顺序是 M0, M1, M2, M3
    arrange(model) %>%
    
    # e. 只选择截距和斜率这两列
    select(Intercept, Slope) %>%
    
    # f. 转换为绘图代码所需的【矩阵】格式
    as.matrix()
  print(estbeta_from_glm)
  y <- 0:3

  x <- seq(min(my.dat[, paste0(pollutant, "_M0")], na.rm=T), max(my.dat[, paste0(pollutant, "_M0")], na.rm=T), length.out = 50) 
  z <- outer(x, y, function(x, y) exp(estbeta_from_glm[(y + 1), 1] + x * estbeta_from_glm[(y + 1), 2]))
  
  output_filename <- paste0("./result_figure_glm/",pollutant, "_month.jpeg")
  x_label <- paste("\n", pollutant)
  
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
  # 例如，打印该污染物的汇总表
  analysis_table<-kable(glm_summary, digits = 4, align = "c", caption = paste0("Summary of ",pollutant," Results"), format = "html")
  
  # Write it to an HTML file
  print(glm_summary)
  cat(analysis_table, file = paste0("./report_result_glm/",pollutant,"_summary.html"))  
}

##### effect between two pollutants


canonical_pollutants <- tibble(original_name = pollutants_to_analyze) %>%
  # 创建一个“基础名称”，方法是移除 "_24h" 或类似后缀
  mutate(base_name = str_remove(original_name, "_.*h$")) %>%
  # 按基础名称分组
  group_by(base_name) %>%
  # 在每个组内，找出名字最短的那个作为“代表”
  summarise(
    canonical_name = original_name[which.min(nchar(original_name))]
  ) %>%
  # 拉出最终的代表列表
  pull(canonical_name)

cat("已筛选出用于配对的“代表性”污染物列表：\n")
print(canonical_pollutants)
# > [1] "AQI"   "CO"    "O3"    "PM2.5" ... (这里将不再包含 CO_24h, O3_24h 等)


# 3. 【最终】仅使用这个干净的、代表性的列表来生成所有可能的配对
valid_pairs_matrix <- combn(canonical_pollutants, 2)

# 转换为列表格式，以供后续循环使用
valid_pairs <- as.list(as.data.frame(valid_pairs_matrix))

cat("\n已根据代表性污染物，生成所有有效的、无冗余的配对：\n")
print(head(valid_pairs))


two_way_results_list <- list()

# 2. 开始循环遍历每一个有效的污染物配对
for (pair in valid_pairs) {
  
  p1 <- pair[1]
  p2 <- pair[2]
  pair_name <- paste0(p1, "_x_", p2) # 创建一个唯一的配对名称
  
  cat(paste0("\n--- 正在分析配对: ", pair_name, " ---\n"))
  
  # 获取这两个污染物对应的、已经补全了零值的面板数据
  # 我们需要一个同时包含这两个污染物滞后列的数据
  # 这需要我们先将两个面板数据连接起来
  panel1 <- list_of_final_panels[[p1]] %>% select(-n) # 取出面板1，去掉n列
  panel2 <- list_of_final_panels[[p2]] # 取出面板2，保留n列
  
  # 将两个面板数据按城市和月份合并
  combined_panel <- dplyr::left_join(
    panel2, 
    panel1, 
    by = c("Residential address" = "Residential address", "Date of onset1" = "Date of onset1")
  )
  
  # 为这个配对的 4 个滞后期都运行模型
  # purrr::map_dfr 会将四个滞后期的模型结果合并成一个数据框
  all_lags_summary <- purrr::map_dfr(0:3, ~{
    run_two_pollutant_glm(
      panel_data = combined_panel,
      pollutant1 = p1,
      pollutant2 = p2,
      lag_period = .x # .x 代表当前的滞后期 0, 1, 2, 3
    )
  }, .id = "lag") # .id 会创建一个新列，标记这是哪个滞后期 (1=M0, 2=M1, ...)
  
  # 将这个配对的所有结果存入大列表中
  two_way_results_list[[pair_name]] <- all_lags_summary
}

# --- 分析完成！ ---

# 3. 将所有结果合并成一个最终的大表
final_two_way_summary <- dplyr::bind_rows(two_way_results_list, .id = "interaction_pair")

# 查看最终结果
print(head(final_two_way_summary))

final_two_way_summary <- final_two_way_summary %>%
  mutate(
    # cut() 函数会根据我们设定的 p.value 区间，自动给出对应的星号标签
    signif = cut(
      p.value, # 直接使用 broom::tidy 生成的 p.value 列
      breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf),
      labels = c("***", "**", "*", ".", "") # 从极度显著到不显著
    )
  )

inter_analysis_table<-kable(final_two_way_summary, digits = 4, align = "c", caption = paste0("Summary of Pollutant Interaction Results"), format = "html")

# Write it to an HTML file
print(inter_analysis_table)
cat(inter_analysis_table, file = paste0("./report_result/interaction_summary.html"))  

# 您可以筛选出您最关心的交互项结果
# 交互项的 term 列通常以 ":" 分隔
interaction_effects <- final_two_way_summary %>%
  filter(stringr::str_detect(term, ":")) %>%
  arrange(p.value) # 按p值排序，查看最显著的交互作用

cat("\n所有分析中最显著的交互效应：\n")
print(head(interaction_effects))
