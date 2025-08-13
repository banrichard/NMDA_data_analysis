getwd()
library(openxlsx)
library(dplyr)
library(tidyr)

age.sex.dat<-readxl::read_xlsx("Age_sex.xlsx")
View(age.sex.dat)
age.portion.dat<-readxl::read_xlsx("Age_sex.xlsx",sheet = 2)
View(age.portion.dat)

reg.dat<-readxl::read_xlsx("guangdong_all_years_summary.xlsx")

reg.dat$year <- substr(reg.dat$year_month, 1, 4)
reg.dat$year<-as.numeric(reg.dat$year)

reg.dat$sex_ratio=NA

for (irow in 1:nrow(reg.dat)) {
  if(reg.dat$year[irow]==2024){
    rownumber=which(age.sex.dat[c(6:27),2]==reg.dat$city[irow])+5
    reg.dat$sex_ratio[irow]=as.numeric(age.sex.dat[rownumber,66])
  }else if(reg.dat$year[irow]==2014) {
    rownumber=which(age.sex.dat[c(6:27),2]==reg.dat$city[irow])+5
    reg.dat$sex_ratio[irow]=100*as.numeric(age.sex.dat[rownumber,4])/as.numeric(age.sex.dat[rownumber,3])
  }else{
    rownumber=which(age.sex.dat[c(6:27),2]==reg.dat$city[irow])+5
    colnumber=(reg.dat$year[irow]-2015)*7+10
    reg.dat$sex_ratio[irow]=as.numeric(age.sex.dat[rownumber,colnumber])
  }
}

colnames(reg.dat)[16]<-"sex_ratio_MvsW"

#write.xlsx(reg.dat, "NMDA_with_population_sex_ratio.xlsx")

reg.dat$age_014_protion=NA

for (irow in 1:nrow(reg.dat)) {
  rownumber=which(age.portion.dat[,9]==reg.dat$city[irow])
  reg.dat$age_014_protion[irow]=age.portion.dat[rownumber,3]
}

######################### population ################
reg.dat$population=NA
population.dat<-readxl::read_xlsx("guangdong_population.xlsx")
View(population.dat)

for (i in 1:nrow(reg.dat)){
  reg.dat$population[i]= as.numeric(population.dat[which(population.dat$City==reg.dat$city[i]),as.numeric(reg.dat$year[i]-2012)])
}

################ number of incidence cases for each city and each month #######

inc.dat<-readxl::read_xlsx("NMDA_with_population_sex_ratio_age_portion.xlsx")
View(inc.dat)

summary_inc <- inc.dat %>%
  group_by(`Residential address`, `Date of onset1`) %>%
  summarise(count = n(), .groups = 'drop')

print(summary_inc)

names(summary_inc)=c("city","year_month","count")

reg.dat <- reg.dat %>%
  left_join(summary_inc, by = c("city", "year_month")) %>%
  rename(inc_count = count) 

reg.dat$inc_count[is.na(reg.dat$inc_count)] <- 0

###########################################
write.xlsx(reg.dat, "guangdong_all_years_summary_with_sex_ratio_age_portion.xlsx")
