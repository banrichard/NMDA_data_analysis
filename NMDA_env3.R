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
library(MASS)    # for polr()
library(car)     # for Anova() for significance tests
library(effects) # to visualize effects
library(broom)
library(gridExtra)
library(grid)
library(magick)
library(kableExtra)
setwd("/Users/shij/Documents/GitHub/NMDA_data_analysis/")

###############Data checking

my.dat<-read_xlsx("./data/air_quality_new/NMDA1_with_pollution.xlsx")
View(my.dat)
na_counts <- colSums(is.na(my.dat))
na_summary <- data.frame(
  column = names(na_counts),
  na_count = as.vector(na_counts)
)
# Sort, by the highest NA count:
na_summary[order(-na_summary$na_count), ]
View(na_summary)

###############Zero-inflated-Poisson for AQI

reg.dat.severity<-my.dat[,c(1,14:22,29:77)]
#  count(`Residential address`, `Date of onset1`, AQI_M0,AQI_M1,AQI_M2,AQI_M3)
#View(reg.dat)
reg.dat.severity$mRS <- ordered(reg.dat.severity$mRS, 
                        levels = c(1, 2, 3, 4, 5))

model1 <- polr(mRS ~ AQI_M0, data = reg.dat.severity, Hess = TRUE)
summary(model1)
Anova(model1)

model2 <- polr(mRS ~ AQI_M1, data = reg.dat.severity, Hess = TRUE)
summary(model2)
Anova(model2)

model3 <- polr(mRS ~ AQI_M2, data = reg.dat.severity, Hess = TRUE)
summary(model3)
Anova(model3)

model4 <- polr(mRS ~ AQI_M3, data = reg.dat.severity, Hess = TRUE)
summary(model4)
Anova(model4)

model5 <- polr(mRS ~ AQI_M0+ AQI_M1, data = reg.dat.severity, Hess = TRUE)
summary(model5)
Anova(model5)

model6 <- polr(mRS ~ AQI_M0+ AQI_M1+ AQI_M2, data = reg.dat.severity, Hess = TRUE)
summary(model6)
Anova(model6)

model7 <- polr(mRS ~ AQI_M0+ AQI_M1+ AQI_M2 + AQI_M3, data = reg.dat.severity, Hess = TRUE)
summary(model7)
Anova(model7)

model_list <- list(model1, model2, model3, model4, model5, model6, model7)
names(model_list) <- paste0("Model", 1:7)

# Function to tidy each model with Wald p-values
tidy_polr <- function(model, model_name) {
  # Get coefficients and SE
  coef_table <- coef(summary(model))
  # Compute p-values
  p_values <- 2 * pt(abs(coef_table[, "t value"]), df = Inf, lower.tail = FALSE)
  # Create data frame
  res <- data.frame(
    term = rownames(coef_table),
    estimate = coef_table[, "Value"],
    std.error = coef_table[, "Std. Error"],
    statistic = coef_table[, "t value"],
    p.value = p_values,
    model = model_name
  )
  res
}

# Apply to all models
all_model_summaries <- map2_df(model_list, names(model_list), tidy_polr)

all_model_summaries$signif <- cut(
  all_model_summaries$p.value,
  breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf),
  labels = c("***", "**", "*", ".", "")
)

# View combined results
print(all_model_summaries)

# Create your HTML table as a character string
AQI_table<-kable(all_model_summaries, digits = 4, align = "c", caption = "Summary of AQI Results", format = "html")

# Generate Markdown table
AQI_table_md <- kable(all_model_summaries, 
                      digits = 4, 
                      align = "c", 
                      caption = "Summary of AQI Results", 
                      format = "markdown")

# Save it to a Markdown file
writeLines(AQI_table_md, "~/severity_result/AQI_table_summary.md")

