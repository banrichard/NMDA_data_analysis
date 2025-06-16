library(readxl)
library(lubridate)
library(dplyr)
library(stringr)
library(tidyr)
source("functions.R")
setwd("/Users/banlujie/NMDA")

##Load data

NMDA1<-read_xlsx("/Users/banlujie/NMDA/data/air_quality/NMDA_1.xlsx")
NMDA1 <- NMDA1 %>%
  mutate(`Date of onset` = clean_mixed_dates(`Date of onset`))
summary(NMDA1)
AQI<-read_xlsx("~/NMDA/data/air_quality/month/AQI/2014_AQI_monthly.xlsx")

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
aqi_data_cleaned <- AQI %>%
  mutate(
    # 统一处理城市名列：移除“市”字，并去掉首尾空格
    # across() 可以对指定的列进行操作，这里我们假设列名叫'city'
    across(city, ~ str_trim(str_remove(.x, "市")))
  )

aqi_folder_path <- "~/NMDA/data/air_quality/month/AQI" 

# 4. Run the function!
# This single line executes the entire workflow for all 10 years of data.
all_years_summary <- process_yearly_aqi_data(
  folder_path = aqi_folder_path,
  city_map_df = city_map,
  value_name = "aqi" # We specify the values represent "aqi"
)
