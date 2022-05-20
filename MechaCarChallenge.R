# # # Deliverable 1 # # #

# 3. dplyr package
library(dplyr)

# 4. import MechaCar DF
mecha_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# 5. linear regression lm() function w/ six variables
mecha_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_df)

# 6. summary() function
summary(mecha_model)



# # # Deliverable 2 # # #

# 2 import Suspension DF
suspension_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# 3. total summary
total_summary <- suspension_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# 4. lot summary
lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')



# # # Deliverable 3 # # #
# 1. t.test() function
t.test(suspension_df$PSI,mu=1500)

# 2. t.test() by lots (3)
lot1 <- subset(suspension_df, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension_df, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension_df, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)