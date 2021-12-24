library(dplyr)
library(tidyverse)
library(ggplot2)
#import Suspension_Coil.csv file to data frame mecha_coil
mecha_coil = read.csv(file='data/Suspension_Coil.csv')

#check dataframe
head(mecha_coil)

#Data frame 
total_summary <- mecha_coil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 

lot_summary <- mecha_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep') 

#chart
plt <- ggplot(mecha_coil,aes(x=Manufacturing_Lot,y=PSI))
plt + geom_boxplot() 

# ttest 
t.test(mecha_coil$PSI,mu=1500)

# ttest for all lots 
lot1 <- subset(mecha_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
