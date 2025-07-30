getwd()
library(openxlsx)

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

write.xlsx(reg.dat, "guangdong_all_years_summary_with_sex_ratio_age_portion.xlsx")
