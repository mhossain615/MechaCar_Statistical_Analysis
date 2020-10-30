library(dplyr)


MechaCar_mpg <- read_csv("MechaCar_mpg.csv")

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
lm(formula = mpg ~ vehicle_length + ground_clearance + spoiler_angle + AWD + vehicle_weight, data = MechaCar_mpg)


# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + ground_clearance + spoiler_angle + AWD + vehicle_weight, data = MechaCar_mpg))
