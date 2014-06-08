## Plot1.R
## - Invokes PrepData.R script, to read data into household power dataframe
## - Launches a "png" graphics device
## - creates histogram that depicts Global_active_power frequencies
source("PrepData.R")
png(filename="Plot1.png",width=480,height=480)
hist(household_power_df$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
