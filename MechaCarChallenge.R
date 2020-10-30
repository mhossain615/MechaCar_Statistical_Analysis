library(dplyr)


MechaCar_mpg <- read_csv("MechaCar_mpg.csv")

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
lm(formula = mpg ~ vehicle_length + ground_clearance + spoiler_angle + AWD + vehicle_weight, data = MechaCar_mpg)


# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + ground_clearance + spoiler_angle + AWD + vehicle_weight, data = MechaCar_mpg))

# Challenge 2
Suspension_Coil <- read_csv("Suspension_Coil.csv")


#Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.

#first
total_summary <- summarize(.data=MechaCar_mpg ,Mean=mean(Suspension_Coil$PSI), Median=median(Suspension_Coil$PSI), Variance=var(Suspension_Coil$PSI),SD=sd(Suspension_Coil$PSI), .groups='keep')
#second
lot_summary = Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


