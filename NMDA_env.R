library(readxl)
library(lubridate)
library(dplyr)
library(stringr)
library(tidyr)
library(writexl)
library(purrr)
source("functions.R")
setwd("/Users/banlujie/NMDA")

##Load data

NMDA1<-read_xlsx("/Users/banlujie/NMDA/data/air_quality/NMDA_1.xlsx")
NMDA1 <- NMDA1 %>%
  mutate(`Date of onset` = clean_mixed_dates(`Date of onset`))
summary(NMDA1)

##Data cleaning
{
  City<-c("清远","Qingyuan","广州","Guangzhou","东莞","Dongguan","韶关","Shaoguan",
          "深圳","Shenzhen","汕尾","Shanwei","惠州","Huizhou","茂名","Maoming",
          "湛江","Zhanjiang","汕头","Shantou","揭阳","Jieyang","珠海","Zhuhai",
          "阳江","Yangjiang","梅州","Meizhou","佛山","Foshan","河源","Heyuan",
          "江门","Jiangmen","中山","Zhongshan","云浮","Yunfu","肇庆","Zhaoqing","潮州","Chaozhou")
  NMDA1[!(NMDA1$`Residential address` %in% City),]
  
  NMDA1[NMDA1$`Residential address`=="shantou",]$`Residential address`="Shantou"
  NMDA1[NMDA1$`Residential address`=="shanwei",]$`Residential address`="Shanwei"
  NMDA1[NMDA1$`Residential address`=="jieyang",]$`Residential address`="Jieyang"

}
NMDA1$`Date of onset` <- format(NMDA1$`Date of onset`, "%Y-%m")
city_map <- data.frame(
  # stringsAsFactors = FALSE 是一个好习惯，防止文本被当成因子处理
  stringsAsFactors = FALSE,
  
  # 中文列 (需要和您数据中的名称完全对应)
  city_cn = c(
    "广州", "深圳", "珠海", "汕头", "佛山", "韶关", "湛江", "肇庆", 
    "江门", "茂名", "惠州", "梅州", "汕尾", "河源", "阳江", "清远", 
    "东莞", "中山", "潮州", "揭阳", "云浮"
  ),
  
  # 对应的英文列
  city_en = c(
    "Guangzhou", "Shenzhen", "Zhuhai", "Shantou", "Foshan", "Shaoguan", "Zhanjiang", "Zhaoqing",
    "Jiangmen", "Maoming", "Huizhou", "Meizhou", "Shanwei", "Heyuan", "Yangjiang", "Qingyuan",
    "Dongguan", "Zhongshan", "Chaozhou", "Jieyang", "Yunfu"
  )
)

city_recode_vector <- setNames(city_map$city_en, city_map$city_cn)


main_folder <- "~/NMDA/data/air_quality/month"

# 4. 一行代码，处理所有子文件夹中的所有文件！
all_metrics_summary <- process_all_subfolder_data(
  main_folder_path = main_folder,
  city_map_df = city_map
)

final_patient_data <- add_lagged_exposure(
  patient_data = NMDA1,
  summary_data_wide = all_metrics_summary, # <-- 传入的是宽格式数据
  
  # 下面的参数通常不需要改，除非您的列名不同
  date_col_patient = "Date of onset",
  city_col_patient = "Residential address",
  date_col_summary = "year_month",
  city_col_summary = "city",
  
  lags_vector = 0:3
)
patient_output_path <- "/Users/banlujie/NMDA/data/air_quality/NMDA1_with_pollution.xlsx"


write_xlsx(final_patient_data, path = patient_output_path)
