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

y=c(0:3)
x <- seq(15, 90, length=50)
z<- outer(x, y, function(x, y) exp(estbeta[(y+1),1]+x*estbeta[(y+1),2]))

jpeg("AQI_month.jpeg", width = 560, height = 500)
persp(x, y, z, theta=45, phi=30, expand=0.75, col="#8491B4",xlab = "\nAQI",
      ylab = "\nLag",
      zlab = "\n\nIncidence Risk Ratio",ticktype = "detailed")
dev.off()


