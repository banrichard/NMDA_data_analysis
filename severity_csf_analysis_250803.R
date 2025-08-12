library(MASS)
library(ordinal)
library(stringr)
library(writexl)
library(tidyverse)
library(broom)
library(knitr)
library(kableExtra)
library(dplyr)
library(tibble)

setwd("/Users/shij/Documents/GitHub/NMDA_data_analysis/")
reg.dat<-readxl::read_xlsx("NMDA_with_population_sex_ratio_age_portion.xlsx")

unique(reg.dat$`anti-NMDAR antibody titer in CSF`)
table(reg.dat$`anti-NMDAR antibody titer in CSF`)

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

unique(reg.dat$mRS)
table(reg.dat$mRS)
reg.dat$mRS=as.numeric(reg.dat$mRS)

##########################################
########## Kendall's tau ################

kt<-cor.test(reg.dat$CSFrank,reg.dat$mRS, method = "kendall")

####### 无论positive归类在第几档滴度，CSF滴度和mRS都关系显著，呈现负相关 #######

##########################################
########## Spearman's rho ################

sr<-cor.test(reg.dat$CSFrank,reg.dat$mRS, method = "spearman")

####### 无论positive归类在第几档滴度，CSF滴度和mRS都关系显著，呈现负相关 #######

##########################################
########## ordinal logistic regression ################

reg.dat$mRS=as.factor(reg.dat$mRS)
olrresult<-clm(mRS ~ CSFrank, data=reg.dat)
summary(olrresult)

####### 无论positive归类在第几档滴度，CSF滴度和mRS都关系显著，呈现负相关 #######


##############################################

# 1. Kendall's Tau
kt_est <- kt$estimate[[1]]
kt_stat <- kt$statistic[[1]]
kt_p <- kt$p.value

# 2. Spearman's Rho
sr_est <- sr$estimate[[1]]
sr_stat <- NA
sr_p <- sr$p.value

# 3. Ordinal Logistic Regression
tidy_model <- tidy(olrresult)
or_est <- tidy_model$estimate[tidy_model$term == "CSFrank"]
or_stat <- tidy_model$statistic[tidy_model$term == "CSFrank"]
or_p <- tidy_model$p.value[tidy_model$term == "CSFrank"]

# Combine results into a data frame
results_pic <- tibble::tribble(
  ~Method,            ~Estimate, ~`z-value`, ~`p-value`, ~Direction,
  "Kendall’s Tau",     kt_est,    kt_stat,    kt_p,       ifelse(kt_est < 0, "Negative", "Positive"),
  "Spearman’s Rho",    sr_est,    sr_stat,    sr_p,       ifelse(sr_est < 0, "Negative", "Positive"),
  "Ordinal Regression", or_est,   or_stat,    or_p,       ifelse(or_est < 0, "Negative", "Positive")
)

# Round numbers for display
results_pic <- results_pic %>%
  mutate(
    Estimate = round(Estimate, 3),
    `z-value` = ifelse(!is.na(`z-value`), round(`z-value`, 3), NA_character_),
    `p-value` = round(`p-value`, 4)
  )

# Print the table using kable
html_table<-kable(results_pic, booktabs = TRUE, caption = "Correlation and Regression Results Between CsfRank and mRS") %>%
  kableExtra::kable_styling(latex_options = "striped")

# ---- Step 2: Define output folder ----
output_folder <- "./report_result_csf_mRS"
dir.create(output_folder, showWarnings = FALSE)

# ---- Step 3: Save HTML table to file # Wrap in simple HTML structure (without internal dependencies) ----
output_file <- file.path(output_folder, "correlation_results_table.html")

html_content <- paste0(
  "<!DOCTYPE html>
  <html>
  <head>
    <meta charset='utf-8'/>
    <title>Correlation Results</title>
    <style>
      table {
        width: auto;
        margin-left: auto;
        margin-right: auto;
        border-collapse: collapse;
        font-family: sans-serif;
      }
      thead {
        background-color: #f2f2f2;
      }
      td, th {
        padding: 6px 12px;
        border: 1px solid #ccc;
      }
      caption {
        caption-side: top;
        font-weight: bold;
        margin: 10px;
      }
    </style>
  </head>
  <body>",
  html_table,
  "</body></html>"
)

# ---- Step 4: Write to file ----
writeLines(html_content, output_file)

# ---- Step 5: Confirm output path ----
cat("✅ HTML table saved at:\n", normalizePath(output_file), "\n")
  