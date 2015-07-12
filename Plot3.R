#Sub Metering Line Chart

#Set variables
  plot3_x<-data$date_time
  plot3_y1<-data$Sub_metering_1
  plot3_y2<-data$Sub_metering_2
  plot3_y3<-data$Sub_metering_3
  
#Start Plot
  
  png(filename="./plot3.png")
  
  #Set formatting option settings
    par(mar=c(3,4,1,1))
  

plot(plot3_x,plot3_y1, type = "s", xlab="",ylab="Energy Sub Metering")
lines(plot3_x,plot3_y2, col="red")
lines(plot3_x,plot3_y3, col="blue")

legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
        pch="__", col=c("black","red","blue"))
  
  dev.off()