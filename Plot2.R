#Create Line Chart of Global Active Power over time

  #Set up x and y variables

    plot2_x<-data$date_time
    plot2_y<-data$Global_active_power

    
  #Save as File
    
    png(filename="./plot2.png")
    
  #formatting option setting
    par(mar=c(3,4,1,1))
    
  #-------Start Plot--------
    plot(plot2_x,plot2_y, type="s", xlab="",ylab="Global Active Power")
    
    dev.off()
  
