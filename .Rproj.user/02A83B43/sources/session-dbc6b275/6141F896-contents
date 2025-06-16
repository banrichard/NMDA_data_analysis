library(readxl)
library(lubridate)
library(dplyr)
library(stringr)
source("functions.R")
setwd("/Users/banlujie/NMDA")

##Load data

NMDA1<-read_xlsx("/Users/banlujie/NMDA/data/air_quality/NMDA_1.xlsx")
NMDA1 <- NMDA1 %>%
  mutate(`Date of onset` = clean_mixed_dates(`Date of onset`))
summary(NMDA1)
AQI<-read_xlsx("~/NMDA//data/air_quality/month/AQI/2014_AQI_monthly.xlsx")

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

