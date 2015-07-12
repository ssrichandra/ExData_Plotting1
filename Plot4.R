#Multi chart page using PLOT2.R, new plot of datetime vs Voltage, 
  #Plot3.R, and new plot of datetime vs. Global Reactive Power

#Save file details
png(filename="./plot4.png")

#Start plot
    #Page formatting option setting
  
    par(mfrow=c(2,2))
    
    par(mar=c(4,4,1,1))
    
    #Chart 1: Plot1.R
    
      plot2_x<-data$date_time
      plot2_y<-data$Global_active_power
      plot(plot2_x,plot2_y, type="s", xlab="",ylab="Global Active Power")
      
    #Chart 2: 
      plot4_x<-data$date_time
      plot4_y2<-data$Voltage
      plot(plot4_x,plot4_y2,type="s",xlab="datetime",ylab="Voltage")
      
    #Chart 3: Plot3.R
      plot3_x<-data$date_time
      plot3_y1<-data$Sub_metering_1
      plot3_y2<-data$Sub_metering_2
      plot3_y3<-data$Sub_metering_3
      plot(plot3_x,plot3_y1, type = "s", xlab="",ylab="Energy Sub Metering")
      lines(plot3_x,plot3_y2, col="red")
      lines(plot3_x,plot3_y3, col="blue")
      
      legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
             pch="__", col=c("black","red","blue"))
    
    #Chart 4: 
      plot4_y4<-data$Global_reactive_power
      plot(plot4_x,plot4_y4,xlab="datetime",ylab="Global_reactive_power", type="s")
      
  
  dev.off()

