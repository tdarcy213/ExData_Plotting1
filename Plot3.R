## Plot3.R
## - Invokes PrepData.R script, to read data into household power dataframe
## - Launches a "png" graphics device
## - Creates a plot of Sub_metering_1 over DateTime
## - Annotates the plot with additonal points for Sub_metering_2 and Sub_metering_3 observations
source("PrepData.R")
png(filename="Plot3.png",width=480,height=480)
with(household_power_df,plot(household_power_df$DateTime,household_power_df$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering"))
points(household_power_df$DateTime,household_power_df$Sub_metering_2,col="red",type="l")
points(household_power_df$DateTime,household_power_df$Sub_metering_3,col="blue",type="l")
legend("topright",lwd=1,col=(c("black","red","blue")),legend=(c("Sub_metering_1","Sub_metering_2","Sub_metering_3")))
dev.off()
