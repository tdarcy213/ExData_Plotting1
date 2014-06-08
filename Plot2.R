## Plot2.R
## - Invokes PrepData.R script, to read data into household power dataframe
## - Launches a "png" graphics device
## - creates a plot of Global_active_power over DateTime values
source("PrepData.R")
png(filename="Plot2.png",width=480,height=480)
with(household_power_df,plot(household_power_df$DateTime,household_power_df$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)"))
dev.off()

