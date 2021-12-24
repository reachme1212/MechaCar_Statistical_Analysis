# MechaCar_Statistical_Analysis using R

**Scenario:**

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.

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






