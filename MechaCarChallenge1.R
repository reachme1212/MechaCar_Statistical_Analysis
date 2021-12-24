library(dplyr)
library(tidyverse)

#import MechaCar_mpg.csv file to data frame mecha_mpg
mecha_mpg = read.csv(file='data/MechaCar_mpg.csv')

#check dataframe
head(mecha_mpg)

#linear regression 
lm_model1=lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg) #create linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg)) #summarize linear model

MPG=mecha_mpg$mpg
Vehicle_Weight=mecha_mpg$vehicle_weight

#plot mpg (dependent variable ) against some other variables to see association between variables 
plt <- ggplot(mecha_mpg,aes(x=Vehicle_Weight,y=MPG))
plt + geom_point() + geom_smooth(method=lm)

summary(MPG - lm_model$fitted.values)

#checking data distribution 
ggplot(mecha_mpg,aes(x=Vehicle_Weight)) + geom_density() 

#Shapiro-Wilk Normality Test
shapiro.test(mecha_mpg$mpg)

#test pvalue
pf(22.07,5,44, lower.tail=FALSE)

# eliminate the independent variables that have little impact on predicting mpg 
lm_model2 =lm(mpg ~ vehicle_length + ground_clearance, data=mecha_mpg)
summary(lm(mpg ~ vehicle_length + ground_clearance, data=mecha_mpg)) 

#Low correlation 
cor(mecha_mpg$vehicle_weight,mecha_mpg$mpg)
cor(mecha_mpg$spoiler_angle,mecha_mpg$mpg)

#high Correlation
cor(mecha_mpg$vehicle_length,mecha_mpg$mpg)
cor(mecha_mpg$ground_clearance,mecha_mpg$mpg)


