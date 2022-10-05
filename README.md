# MechaCar Statistical Analysis

## Project Overview

The motivation behind this project is to assist AutoRUs’ manufacturing team with production troubles on the newest prototype, the MechaCar. The following actions were taken:

*	Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
*	Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
*	Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
*	Design a statistical study to compare vehicle performance of the MechaCar vehicle against vehicles from other manufacturers. 

## Resources
* R – programming language
* R Studio
* Data Sources: .csv files

## Linear Regression to Predict MPG

<sub>Linear Regression</sub>

![linear_regression_mpg](https://github.com/Kelfang/MechaCar_Statistical_Analysis/blob/main/images/linear_regression_mpg.png)

1.	As indicated in the image above by the orange boxes, the two most notable variables in our dataset that show a non-random impact on the miles per gallon (MPG) are the ***ground clearance*** and ***vehicle length***.  
2.	The slope of the linear model cannot be considered zero, since the *p*-value is listed as 5.35 x 10<sup>-11</sup> (see the red box above). This indicates that there is sufficient evidence to reject our null hypothesis. 
3.	 The R-squared value of 0.7149, within the black box above, indicates that this model is approximately 71% accurate. While there are some unconsidered factors, this could be deemed a good start. 

## Summary Statistics on Suspension Coils

<sub>Total Summary Suspension Coils</sub>

![total_summary_coils](https://github.com/Kelfang/MechaCar_Statistical_Analysis/blob/main/images/total_summary_coils.png)

<sub>Total Summary Suspension Coils by Manufacturing Lot</sub>

![manufacture_lot_total_summary](https://github.com/Kelfang/MechaCar_Statistical_Analysis/blob/main/images/manufacture_lot_total_summary.png)


The variance of all the lots shown in the Total Summary Suspension Coils image, is well below the 100 PSI threshold at 62.29356. However, you can see that Lot 3 is well above that threshold at 170.29. 

## T-Tests on Suspension Coils

<sub>T-test on Suspension Coils</sub>
![t_test_all_coils](https://github.com/Kelfang/MechaCar_Statistical_Analysis/blob/main/images/t_test_all_coils.png)

•	The results of the T-test for all suspension coils indicates that they are not different from the population mean and the *p*-value is not low enough for us to reject the null hypothesis.


<sub>T-test on **LOT 1** Suspension Coils</sub>
![t_test_lot_1](https://github.com/Kelfang/MechaCar_Statistical_Analysis/blob/main/images/t_test_lot_1.png)

•	The T-test for the suspension coils for Lot 1 shows that the *p*-value is not low enough for us to reject the null hypothesis.


<sub>T-test on **LOT 2** Suspension Coils</sub>
![t_test_lot_2](https://github.com/Kelfang/MechaCar_Statistical_Analysis/blob/main/images/t_test_lot_2.png)

•	The T-test for the suspension coils for Lot 2 shows that the *p*-value is not low enough for us to reject the null hypothesis.


<sub>T-test on **LOT 3** Suspension Coils</sub>
![t_test_lot_3](https://github.com/Kelfang/MechaCar_Statistical_Analysis/blob/main/images/t_test_lot_3.png)

•	The T-test for the suspension coils for Lot 3 shows that the *p*-value IS low enough for us to reject the null hypothesis. In the image above, it’s coming in at 0.04168. This lot should be isolated for further evaluation or removed from production.



## Study Design: MechaCar vs. Competition
Within the United States, it’s not a surprise that SUVs are the most popular vehicle type in 45 of the 50 states[^1]. Driving around, just about anywhere, you can't miss them. While everyone has their list of "must haves", and they likely vary from one person to the next, I can’t help but wonder if roomy interiors make vehicles easier to sell. People want to be comfortable so it makes sense that size matters. Is bigger better?

### Metric to Test
Determine the interior cabin space, in cubic inches, of the MechaCar and compare the interior volume to the competition within the same vehicle type.

### Null and Alternate Hypothesis
* **Null:** MechaCar’s interior cabin space is similar to competitor vehicles within the same class.
* **Alternative:** MechaCar’s interior cabin space is well above *or* well below competitor vehicles within the same class.

### Statistical Test 
The two-sample t-test should be used for this study. It makes the most sense to compare if the interior cabin space of the MechaCar and competitors are equal.

### Data Required
We would need to collect the total interior cabin space (in cubic inches) from all the competitors’ vehicles and the MechaCar.


[^1]: Statistic from iSeeCars.com - https://www.iseecars.com/popular-vehicle-type-by-state-study
