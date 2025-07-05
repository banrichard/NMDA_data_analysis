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

reg.dat<-my.dat %>%
  count(`Residential address`, `Date of onset1`, AQI_M0,AQI_M1,AQI_M2,AQI_M3)
View(reg.dat)

zerotrunc_model1 <- vglm(n ~ AQI_M0, pospoisson, data = reg.dat)
summary(zerotrunc_model1)

zerotrunc_model2 <- vglm(n ~ AQI_M1, pospoisson, data = reg.dat)
summary(zerotrunc_model2)

zerotrunc_model3 <- vglm(n ~ AQI_M2, pospoisson, data = reg.dat)
summary(zerotrunc_model3)

zerotrunc_model4 <- vglm(n ~ AQI_M3, pospoisson, data = reg.dat)
summary(zerotrunc_model4)

sapply(reg.dat, range)

estbeta<-matrix(data = NA, ncol = 2, nrow = 4)

estbeta[1,]=coef(zerotrunc_model1)
estbeta[2,]=coef(zerotrunc_model2)
estbeta[3,]=coef(zerotrunc_model3)
estbeta[4,]=coef(zerotrunc_model4)

aqi_results <- run_pollutant_analysis(
  input_data = my.dat, 
  pollutant_name = "AQI"
)
estbeta <- aqi_results$summary_table %>%
  
  # 这一步不变
  mutate(term_type = if_else(term == "(Intercept)", "Intercept", "Slope")) %>%
  
  select(model, term_type, Estimate) %>%
  tidyr::pivot_wider(names_from = term_type, values_from = Estimate) %>%
  # --- 修改结束 ---
  
  # 后续步骤不变
  # arrange(model) %>% # 可选的排序
  select(Intercept, Slope) %>%
  as.matrix()

#### Drawing
y=c(0:3)
x <- seq(15, 90, length=50)
z<- outer(x, y, function(x, y) exp(estbeta[(y+1),1]+x*estbeta[(y+1),2]))

jpeg("AQI_month.jpeg", width = 560, height = 500)
persp(x, y, z, theta=45, phi=30, expand=0.75, col="#8491B4",xlab = "\nAQI",
      ylab = "\nLag (Month)",
      zlab = "\n\nIncidence Risk Ratio",ticktype = "detailed")
dev.off()

extract_vglm_coeffs <- function(fit, model_name) {
  co <- as.data.frame(summary(fit)@coef3)
  co$term <- rownames(co)
  co$model <- model_name
  rownames(co) <- NULL
  co[, c("term", "Estimate", "Std. Error", "z value", "Pr(>|z|)")]
}

# fits <- list(zerotrunc_model1 = zerotrunc_model1, zerotrunc_model2 = zerotrunc_model2, 
#              zerotrunc_model3 = zerotrunc_model3, zerotrunc_model4 = zerotrunc_model4)

fits <- aqi_results$models

all_summary <- do.call(rbind, Map(extract_vglm_coeffs, fits, names(fits)))

#Add significance stars
all_summary$signif <- cut(
  all_summary$`Pr(>|z|)`,
  breaks = c(-Inf, 0.001, 0.01, 0.05, 0.1, Inf),
  labels = c("***", "**", "*", ".", "")
)

print(all_summary)

# Create your HTML table as a character string
AQI_table<-kable(all_summary, digits = 4, align = "c", caption = "Summary of AQI Results", format = "html")

# Write it to an HTML file
cat(AQI_table, file = "AQI_summary.html")

