## PrepData.R
## - Prepares the "household_power_df" dataframe that will be used for plotting exercises
## - Reads the "household_power_consumption.txt" dataset, then creates a subset based on the targeted
##   date values; it creates a "DateTime" variable, and casts the variables that are to be plotted as numeric
## - The resulting dataframe is written to a text file, and subsequent executions of the PrepData script
##   will determine whether the df dataset exists, and if so, will read that into storage.
if(!file.exists("household_power_df.txt")){
household_power_df<-read.csv("household_power_consumption.txt",header=TRUE,stringsAsFactors=FALSE,sep=";")
household_power_df$Date<-as.Date(household_power_df$Date,format="%d/%m/%Y")
household_power_df<-subset(household_power_df,Date>="2007-02-01"&Date<="2007-02-02")
household_power_df$Global_active_power<-as.numeric(household_power_df$Global_active_power)
household_power_df$Global_reactive_power<-as.numeric(household_power_df$Global_reactive_power)
household_power_df$Voltage<-as.numeric(household_power_df$Voltage)
household_power_df$Sub_metering_1<-as.numeric(household_power_df$Sub_metering_1)
household_power_df$Sub_metering_2<-as.numeric(household_power_df$Sub_metering_2)
household_power_df$Sub_metering_3<-as.numeric(household_power_df$Sub_metering_3)
household_power_df<-cbind(DateTime=strptime(paste(household_power_df$Date, household_power_df$Time),"%Y-%m-%d %H:%M:%S"),household_power_df)
write.table(household_power_df,"household_power_df.txt",row.names=FALSE,sep=";")
}else
{
household_power_df<-read.csv("household_power_df.txt",header=TRUE,stringsAsFactors=FALSE,sep=";")
household_power_df$Date<-as.Date(household_power_df$Date,format="%d/%m/%Y")
household_power_df$Global_active_power<-as.numeric(household_power_df$Global_active_power)
household_power_df$Global_reactive_power<-as.numeric(household_power_df$Global_reactive_power)
household_power_df$Voltage<-as.numeric(household_power_df$Voltage)
household_power_df$Sub_metering_1<-as.numeric(household_power_df$Sub_metering_1)
household_power_df$Sub_metering_2<-as.numeric(household_power_df$Sub_metering_2)
household_power_df$Sub_metering_3<-as.numeric(household_power_df$Sub_metering_3)
household_power_df$DateTime<-strptime(household_power_df$DateTime,"%Y-%m-%d %H:%M:%S")
}

