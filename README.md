# MechaCar_Statistical_Analysis using R

**Scenario:**

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.

**Deliverable 1**

**Hypothesis:**

The null hypothesis is that there is zero percent correlation or relationship between the dependent variable(mpg) and the independent variable(s) and the alternative hypothesis is there is more than zero percent correlation or relationship between the dependant and independant variables.

in general the researchers try to reject the null hypothesis and prove the alternate hypothesis,Two variables show high correlation Vehicle length and ground clearance, so it’s safe to say that we can reject our null hypothesis. 

**1.Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

From the output of the linear model, we see that vehicle length and ground clearance has the highest impact on predicting mpg with very small p-values, they also have high correlation percentage.

![Correlation](images/cor.PNG)

![Coefficients](images/corff_r2.PNG)
 

**2.Is the slope of the linear model considered to be zero? Why or why not?**

From the equation of the linear model, we see that all coefficients of our predictor variables are non-zero, therefore the slope of our linear model is non-zero. 

**3.Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

Our R squared value is 71% with all the variables, this mean this model predicts with 71% accuracy, I would say this should be improved , we do need a decent 95% to be really confident on the model and carry forward with the production.

**Deliverable 2**

The MechaCar “Suspension_Coil.csv” dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots.

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.Total summary PSI variance shows 62.29 , however when we see the lot summary lot3 has a higher than normal variance at 170.28.

Box plot also shows Lot3 has too many outliers 

![Total summary](images/tot_summary.PNG)

![Lot summary](images/lot_summary.PNG)

![boxplot](images/psi_boxplot.PNG)



**Deliverable 3**

Performing t.test() function to determine if the PSI across all manufacturing lots , and they are statistically different from the population mean of 1,500 pounds per square inch.

For lot 1 and lot 2 and lot 3 the p value are 1, 0.60 , 0.04 respectively, The smaller the p-value, the stronger the evidence that you should reject the null hypothesis. A p-value less than 0.05 (typically ≤ 0.05) is statistically significant only lot 3 fits that definition.

![test population](images/ttest_pop.PNG)

![test lot 1](images/ttest_lot1.PNG)

![test lot 2](images/ttest_lot2.PNG)

![test lot 3](images/ttest_lot3.PNG)
