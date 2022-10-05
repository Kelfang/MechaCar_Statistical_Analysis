# Deliverable 1, step 3.import library
library(dplyr) 

# 4. read file
mecha_data <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# check file data
head(mecha_data) 

# 5. perform linear regression
mecha_summary <- lm(mpg ~ vehicle_weight + vehicle_length + spoiler_angle + 
                      ground_clearance + AWD, data=mecha_data) 

# 6.summarize to determine p-value and r-squared value
summary(mecha_summary)

# Deliverable 2, step 2. import and read file. 
suspension_table <- read.csv(file="Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# 3. create a total summary dataframe 
total_summary <- suspension_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# 4. group summary data by manufacturing lot
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups="keep")

# Deliverable 3, step 1. use t.test function to determine PSI data
t.test(suspension_table$PSI, mu=1500)

# 2. write three more RScripts using t.test function to determine PSI data by manufacturing lot
t.test(subset(suspension_table,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(suspension_table,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_table,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)