library(MASS)
library(ordinal)
library(stringr)
library(writexl)
library(tidyverse)
library(broom)
library(knitr)

setwd("/Users/shij/Documents/GitHub/NMDA_data_analysis/")
reg.dat<-readxl::read_xlsx("NMDA_with_population_sex_ratio_age_portion.xlsx")

unique(reg.dat$`anti-NMDAR antibody titer in CSF`)

reg.dat$CSFrank<-NA
for (i in 1:nrow(reg.dat)) {
  if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="+" ) {
    reg.dat$CSFrank[i]=1
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1：1000" ) {
    reg.dat$CSFrank[i]=1
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:320" ) {
    reg.dat$CSFrank[i]=2
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:300" ) {
    reg.dat$CSFrank[i]=2
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:100+" ) {
    reg.dat$CSFrank[i]=3
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:100" ) {
    reg.dat$CSFrank[i]=3
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="positive" ) {
    reg.dat$CSFrank[i]=3
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:32" ) {
    reg.dat$CSFrank[i]=4
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:30" ) {
    reg.dat$CSFrank[i]=4
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="++" ) {
    reg.dat$CSFrank[i]=4
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="4.8611111111111112E-2" ) {
    reg.dat$CSFrank[i]=5
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="6.25E-2" ) {
    reg.dat$CSFrank[i]=6
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="6.3888888888888884E-2" ) {
    reg.dat$CSFrank[i]=6
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:10" ) {
    reg.dat$CSFrank[i]=7
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:3.2" ) {
    reg.dat$CSFrank[i]=8
  }else if( reg.dat$`anti-NMDAR antibody titer in CSF`[i]=="1:1" ) {
    reg.dat$CSFrank[i]=9
  }
}  
  
reg.dat$CSFrank=factor(reg.dat$CSFrank,ordered = TRUE)

reg.dat$age_014_protion=as.numeric(reg.dat$age_014_protion)

#my_model<- clm(CSFrank ~ AQI_M0 + sex_ratio_MvsW + age_014_protion + offset(log(population)), data=reg.dat)  
#summary(my_model)
  
main_folder <- "/Users/shij/Documents/GitHub/NMDA_data_analysis/"
source("functions.R")  

start_col_index <- which(names(reg.dat) == "Date of onset1")
end_col_index <- which(names(reg.dat) == "sex_ratio_MvsW")

# 获取 "Date of onset1" 之后的所有列名
all_pollutant_lag_cols <- names(reg.dat)[(start_col_index + 1):(end_col_index-1)]

# 移除 "_M0", "_M1" 等后缀，得到污染物的基础名称
pollutant_base_names <- stringr::str_remove(all_pollutant_lag_cols, "_M\\d$")

# 获取不重复的污染物列表，这就是我们要循环的对象
pollutants_to_analyze <- unique(pollutant_base_names)

covariates <- c("sex_ratio_MvsW", "age_014_protion")

#  【关键】一行代码完成所有保存工作！
output_folder <- "./report_result_csf_clm"
dir.create(output_folder, showWarnings = FALSE)

# List to store results (optional)
results_list <- list()

# Loop through each pollutant
for (pollutant in pollutants_to_analyze) {
  
  cat("\n=========================================\n")
  cat("          正在分析污染物: ", pollutant, "\n")
  cat("=========================================\n")
  
  # Step 1: Get lagged terms
  lag_terms <- paste0(pollutant, "_M", 0:3)
  
  # Step 2: Build formula
  formula_rhs <- paste(c(lag_terms, covariates), collapse = " + ")
  model_formula <- as.formula(paste("CSFrank ~", formula_rhs, "+ offset(log(population))"))
  
  # Step 3: Fit model
  model <- ordinal::clm(model_formula, data = reg.dat)
  
  # Step 4: Tidy and add significance stars
  model_summary <- broom::tidy(model) %>%
    mutate(
      signif = cut(
        p.value,
        breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf),
        labels = c("***", "**", "*", ".", "")
      )
    )
  
  # Step 5: Save HTML report
  html_table <- knitr::kable(model_summary, digits = 4, align = "c",
                             caption = paste0("Ordinal Regression Results for ", pollutant),
                             format = "html")
  
  output_file <- file.path(output_folder, paste0(pollutant, "_summary.html"))
  cat(html_table, file = output_file)
  
  # Step 6: Optional - store results
  results_list[[pollutant]] <- list(
    model = model,
    summary_table = model_summary
  )
  
  # Print to console
  print(model_summary)
}
  
  
  