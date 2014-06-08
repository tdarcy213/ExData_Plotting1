## Plot4.R
## - Invokes PrepData.R script, to read data into household power dataframe
## - Launches a "png" graphics device
## - creates a 2X2 graphics array that will consist of Global_active, Voltage, 
## - Sub_metering, and Global_reactive plots
source("PrepData.R")
png(filename="Plot4.png",width=480,height=480)
par(mfrow=c(2,2))
with(household_power_df,plot(household_power_df$DateTime,household_power_df$Global_active_power,type="l",xlab="",ylab="Global Active Power"))
with(household_power_df,plot(household_power_df$DateTime,household_power_df$Voltage,type="l",xlab="datetime",ylab="Voltage"))
with(household_power_df,plot(household_power_df$DateTime,household_power_df$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering"))
points(household_power_df$DateTime,household_power_df$Sub_metering_2,col="red",type="l")
points(household_power_df$DateTime,household_power_df$Sub_metering_3,col="blue",type="l")
legend("topright",bty="n",cex=0.9,lwd=1,col=(c("black","red","blue")),legend=(c("Sub_metering_1","Sub_metering_2","Sub_metering_3")))
with(household_power_df,plot(household_power_df$DateTime,household_power_df$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power"))
dev.off()