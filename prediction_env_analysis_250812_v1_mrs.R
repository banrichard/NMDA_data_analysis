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

reg.dat$CSFrank=factor(reg.dat$CSFrank,ordered = TRUE)

reg.dat$age_014_protion=as.numeric(reg.dat$age_014_protion)

names(reg.dat)[3]<-"Gender"
names(reg.dat)[7]<-"Marrital_status"
reg.dat$Age<- as.numeric(reg.dat$Age)

reg.dat.z<-reg.dat[grepl("Z", reg.dat$ID, ignore.case=TRUE),]

reg.dat.r<-reg.dat[!reg.dat$ID %in% reg.dat.z$ID,]

unique(reg.dat.z$`Residential address`)
unique(reg.dat.r$`Residential address`)
table(reg.dat.z$`Residential address`)
table(reg.dat.r$`Residential address`)

############## ordinal regression (proportional odds logistic model)#################

# Define pollutants to loop over
pollutant_list <- sub("_M0.*", "", names(reg.dat)[32:43])

# Define lags
lags <- 0:3

# Define common covariates
covariates <- c("Age" , "Gender", "Marrital_status")  # Add your covariates

# Store results
model_list <- list()  # To store models
model_summaries <- list()  # To store summaries

# Loop over each pollutant
for (p in pollutant_list) {
  
  # Step 1: Generate lagged pollutant names
  lag_terms <- paste0(p, "_M", lags)
  
  # Step 2: Check if all lag terms exist in the data
  lag_terms <- lag_terms[lag_terms %in% names(reg.dat.z)]
  
  if (length(lag_terms) == 0) {
    warning(paste0("No lagged terms found for pollutant: ", p))
    next
  }
  
  # Step 3: Build formula
  outcome <- "as.factor(mRS)"  # assuming mRS is your severity score
  predictors <- paste(c(lag_terms, covariates), collapse = " + ")
  formula <- as.formula(paste(outcome, "~", predictors))
  
  # Step 4: Fit model
  model <- polr(formula, data = reg.dat.z, Hess = TRUE)
  
  # Step 5: Save model and summary
  model_list[[p]] <- model
  #model_summaries[[p]] <- summary(model)
  # Extract coefficients table
  ctab <- coef(summary(model_list[[p]]))
  
  # Compute p-values using t-distribution
  pvals <- 2 * pt(abs(ctab[, "t value"]), df = Inf, lower.tail = FALSE)
  format_pvals <- function(p, digits = 3, threshold = 0.001) {
    formatted <- ifelse(p < threshold, 
                        paste0("<", format(threshold, scientific = FALSE)),
                        format(round(p, digits), nsmall = digits))
    return(formatted)
  }
  pvals <- format_pvals(pvals)
  
  # Round coefficient values to 3 digits
  ctab_rounded <- round(ctab, 3)
  
  # Combine with formatted p-values
  ctab_final <- cbind(ctab_rounded, pvals)
  colnames(ctab_final)[ncol(ctab_final)] <- "Pr(>|t|)"
  
  # Save to model_summaries
  model_summaries[[p]] <- ctab_final
  
  # Optional: Print a message
  cat("✅ Finished model for pollutant:", p, "\n")
}


output_folder <- "./report_result_prediction_mRS"
dir.create(output_folder, showWarnings = FALSE)

for (pollutant in names(model_summaries)) {
  
  # Get formatted coefficient table
  coef_table <- model_summaries[[pollutant]]
  
  # Convert to data frame and add row names
  coef_table <- as.data.frame(coef_table)
  coef_table <- tibble::rownames_to_column(coef_table, var = "Term")
  
  # Make kable
  table_kable <- kable(coef_table, format = "html", align = "c", 
                       caption = paste0("Model Summary: ", pollutant)) %>%
    kable_styling(bootstrap_options = c("striped", "hover", "condensed")) %>%
    column_spec(5, background = ifelse(coef_table$`Pr(>|t|)` == "<0.001" | 
                                         as.numeric(coef_table$`Pr(>|t|)`) < 0.05, 
                                       "#F8766D", "#FFFFFF")) %>%
    row_spec(0, bold = TRUE)
  
  # Save as HTML
  file_path <- file.path(output_folder, paste0("summary_", pollutant, ".html"))
  cat(table_kable, file = file_path)
  
  cat("✅ Saved summary for:", pollutant, "\n")
}


########## the above is the predicted model using reg.dat.z ############
######### Now for the prediction on reg.dat.r ################
######### since the outcome is mRS, so this is eventually the multiple class prediction problem ##########

# Define a vector to store metrics
metric_list <- list()

# Loop over each pollutant model
for (pollutant in names(model_list)) {
  
  # Step 1: Get the model
  model <- model_list[[pollutant]]
  
  # Step 2: Predict severity class on test data
  pred_class <- predict(model, newdata = reg.dat.r)
  
  # Step 3: Get true severity
  true <- reg.dat.r$mRS  # assuming mRS is your severity outcome
  
  # Step 4: Compute metrics
  accuracy <- mean(pred_class == true)
  mae <- mean(abs(as.numeric(pred_class) - as.numeric(true)))
  mse <- mean((as.numeric(pred_class) - as.numeric(true))^2)
  
  # Step 5: Confusion matrix (optional, for more detail)
  conf_matrix <- table(Predicted = pred_class, True = true)
  
  # Step 6: Save metrics
  metric_list[[pollutant]] <- list(
    accuracy = accuracy,
    mae = mae,
    mse = mse,
    confusion_matrix = conf_matrix
  )
}

# Convert metric_list to a data frame
metric_df <- do.call(rbind, lapply(metric_list, function(x) {
  data.frame(
    Accuracy = x$accuracy,
    MAE = x$mae,
    MSE = x$mse
  )
}))

# Add row names as a column
metric_df <- data.frame(Pollutant = rownames(metric_df), metric_df, row.names = NULL)

# Round values for cleaner display
metric_df$Accuracy <- round(metric_df$Accuracy, 3)
metric_df$MAE <- round(metric_df$MAE, 3)
metric_df$MSE <- round(metric_df$MSE, 3)

# Print as a nice table
#kable(metric_df, caption = "Model Performance on Test Data", align = "c")

# Make sure metric_df is built and Accuracy is numeric
html_table<- metric_df %>%
  mutate(Accuracy = round(Accuracy, 3)) %>%
  kable("html", align = "c", caption = "Model Performance on Other Hospital's Data") %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"), full_width = FALSE) %>%
  column_spec(2, background = "#F8766D", color = "white") %>%   # Highlight Accuracy column
  column_spec(1, bold = TRUE) %>%                               # Make Pollutant bold
  row_spec(which.max(metric_df$Accuracy),                       # Highlight best row
           bold = TRUE, color = "white", background = "#1f77b4")
 
# Define output folder
output_folder <- "./report_result_prediction_mRS"
dir.create(output_folder, showWarnings = FALSE)

# Save as HTML file
file_path_html <- file.path(output_folder, "prediction_performance_table.html")
cat(html_table, file = file_path_html)

cat("✅ HTML table saved to:", file_path_html, "\n")
