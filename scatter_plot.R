library(MASS)
library(ordinal)
library(stringr)
library(writexl)
library(tidyverse)
library(broom)
library(knitr)
library(kableExtra)
library(ggplot2)
library(tibble)
library(dplyr)
library(stringr)

setwd("/Users/shij/Documents/GitHub/NMDA_data_analysis/")
reg.dat<-readxl::read_xlsx("NMDA_with_population_sex_ratio_age_portion.xlsx")

reg.dat$CSFrank<-NA
for (i in 1:nrow(reg.dat)) {
  if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="+" ) {
    reg.dat$CSFrank[i]=1
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1：1000" ) {
    reg.dat$CSFrank[i]=1
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:320" ) {
    reg.dat$CSFrank[i]=1
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:300" ) {
    reg.dat$CSFrank[i]=1
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:100+" ) {
    reg.dat$CSFrank[i]=2
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:100" ) {
    reg.dat$CSFrank[i]=2
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="positive" ) {
    reg.dat$CSFrank[i]=1
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:32" ) {
    reg.dat$CSFrank[i]=2
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:30" ) {
    reg.dat$CSFrank[i]=2
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="++" ) {
    reg.dat$CSFrank[i]=3
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:10" ) {
    reg.dat$CSFrank[i]=3
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:3.2" ) {
    reg.dat$CSFrank[i]=3
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:1" ) {
    reg.dat$CSFrank[i]=3
  }
}  

names(reg.dat)[6]<- "Residential_address"
reg.dat <- reg.dat %>%
  mutate(hospital = case_when(
    str_starts(ID, "SH") ~ 4,
    str_starts(ID, "Z") ~ 1,
    str_starts(ID, "S") ~ 2,
    str_starts(ID, "G") ~ 3,
    TRUE ~ 0  # 默认组，适用于不匹配任何规则的值
  ))

reg.dat$hospital<-as.character(reg.dat$hospital)

reg.dat[reg.dat$hospital=="1",]$hospital<-"Z"
reg.dat[reg.dat$hospital=="2",]$hospital<-"S"
reg.dat[reg.dat$hospital=="3",]$hospital<-"G"
reg.dat[reg.dat$hospital=="4",]$hospital<-"SH"

p1 <- ggplot(reg.dat, aes(x = mRS, y = CSFrank, color = hospital)) +
  geom_point(size = 2, position = position_jitter(width = 0.2, height = 0.2)) +
  labs(title = "Scatterplot of mRS vs CSFrank, grouped by hospital",
       x = "mRS",
       y = "CSFrank") +
  theme_minimal() +
  theme(
    panel.background = element_rect(fill = "white"),
    plot.background = element_rect(fill = "white")
  )

p2 <- ggplot(reg.dat, aes(x = mRS, y = CSFrank, color = Residential_address)) +
  geom_point(size = 2, position = position_jitter(width = 0.2, height = 0.2)) +
  labs(title = "Scatterplot of mRS vs CSFrank, grouped by hospital",
       x = "mRS",
       y = "CSFrank") +
  theme_minimal() +
  theme(
    panel.background = element_rect(fill = "white"),
    plot.background = element_rect(fill = "white")
  )

# ---- Step 1: Define output folder ----
output_folder <- "./report_scatterplot"
dir.create(output_folder, showWarnings = FALSE)

ggsave(
  filename = file.path(output_folder, "scatterplot_mRS_CSFrank_hospital.png"),
  plot = p1,
  width = 7.5,   # inches
  height = 5,    # inches
  dpi = 300      # optional: high quality for reports
)

ggsave(
  filename = file.path(output_folder, "scatterplot_mRS_CSFrank_city.png"),
  plot = p2,
  width = 12,   # inches
  height = 6,    # inches
  dpi = 300      # optional: high quality for reports
)
















