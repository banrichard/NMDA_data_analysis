library(readxl)
library(writexl)
library(dplyr)
library(stringr)
library(purrr)
library(tidyr)
library(VGAM)
library(knitr)
library(corrplot)
source("functions.R") # 确保其中有 get_pollutant_list 和 run_vglm_analysis 函数

# --- 2. 数据准备 ---
setwd("/Users/shij/Documents/GitHub/NMDA_data_analysis/250920/Q4_titer_severity_analysis_report/")
# a. 读取原始病人数据
my.dat <- readxl::read_xlsx("./NMDA_with_population_sex_ratio_age_portion.xlsx")%>%
  relocate(sex_ratio_MvsW,age_014_protion, .before = `Date of onset1`)
my.dat <- my.dat %>%
  rename(
    # 新名字 = `舊的、又長又亂的名字`
    `Brainstem dysfunction` = `Brainstem dysfunction（0=none; 1=gaze paresis; 2=tube feeding; 3=ventilator care due to hypoventilation）`
  )

# b. 准备城市名字典（用于获取完整的城市列表，以防万一）
city_map <- get_city_map()

my.dat$CSFrank<-NA
for (i in 1:nrow(my.dat)) {
  if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="+" ) {
    my.dat$CSFrank[i]=3
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1：1000" ) {
    my.dat$CSFrank[i]=1
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:320" ) {
    my.dat$CSFrank[i]=1
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:300" ) {
    my.dat$CSFrank[i]=1
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:100+" ) {
    my.dat$CSFrank[i]=2
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:100" ) {
    my.dat$CSFrank[i]=2
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="positive" ) {
    my.dat$CSFrank[i]=2
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:32" ) {
    my.dat$CSFrank[i]=2
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:30" ) {
    my.dat$CSFrank[i]=2
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="++" ) {
    my.dat$CSFrank[i]=3
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:10" ) {
    my.dat$CSFrank[i]=3
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:3.2" ) {
    my.dat$CSFrank[i]=3
  }else if( my.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:1" ) {
    my.dat$CSFrank[i]=3
  }
}  

my.dat$CSFrank=factor(my.dat$CSFrank,ordered = TRUE)

my.dat2<- my.dat[!is.na(my.dat$CSFrank),]

my.dat2$mRS=as.numeric(my.dat2$mRS)
my.dat2$CSFrank=as.numeric(my.dat2$CSFrank)

# Spearman
cor.test(my.dat2$mRS, my.dat2$CSFrank, method = "spearman")

# Kendall
cor.test(my.dat2$mRS, my.dat2$CSFrank, method = "kendall")


# Spearman
cor.test(my.dat2$`ICU admission`, my.dat2$CSFrank, method = "spearman")

# Kendall
cor.test(my.dat2$`ICU admission`, my.dat2$CSFrank, method = "kendall")





