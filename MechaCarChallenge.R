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


#Challenge 3
# write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspension_Coil$PSI,mu=1500)

# write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
Lot1 <- subset(Suspension_Coil,Manufacturing_Lot=="Lot1")
t.test(log10(Lot1$PSI),mu=mean(log10(Suspension_Coil$PSI)))

Lot2 <- subset(Suspension_Coil,Manufacturing_Lot=="Lot2")
t.test(log10(Lot2$PSI),mu=mean(log10(Suspension_Coil$PSI)))

Lot3 <- subset(Suspension_Coil,Manufacturing_Lot=="Lot3")
t.test(log10(Lot3$PSI),mu=mean(log10(Suspension_Coil$PSI)))
