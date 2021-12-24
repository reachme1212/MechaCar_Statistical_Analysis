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


