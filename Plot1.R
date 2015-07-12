#Create a histogram of the Global Active Power usage for 2007-02-01 to 2007-02-02
#Important: Running this script assumes you have the data loaded, but not subsetted yet, and you have datetime col!
  #if you dont, use this section (remove the hashes though!)
    #library(data.table)
    #setwd() <---enter in your wd here first!
      #DT<-fread("./raw_data/household_power_consumption.txt",sep=";",na.string="?")
      #DT$Date<-as.Date(DT$Date,"%d/%m/%Y")
      #data<-DT[DT$Date >= as.Date("2007-02-01") & DT$Date <= as.Date("2007-02-02")]
      #data$Global_active_power<-as.numeric(data$Global_active_power)
      #data$Global_reactive_power<-as.numeric(data$Global_reactive_power)
      #data$Voltage<-as.numeric(data$Voltage)
      #data$Global_intensity<-as.numeric(data$Global_intensity)
      #data$Sub_metering_1<-as.numeric(data$Sub_metering_1) 
      #data$Sub_metering_2<-as.numeric(data$Sub_metering_2)
      #data$Sub_metering_3<-as.numeric(data$Sub_metering_3)
      #data<-within(data,{date_time=as.POSIXct(paste(data$Date,data$Time))})
  
#-----Start of Plotting--------#

png(filename="./plot1.png")

hist(data$Global_active_power,col="orange", xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power")

dev.off()

#-----End of Plotting ---------#
