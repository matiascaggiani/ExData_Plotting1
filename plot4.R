## Set WD & Load Data##

setwd("~/Desktop/courseProject_1")

Data = read.table(file = "household_power_consumption.txt",header = TRUE,sep = ";",dec = ".",na.strings = "?")

Data2=subset(x = Data,strptime(Data$Date,"%d/%m/%Y") == strptime("01/02/2007","%d/%m/%Y") | strptime(Data$Date,"%d/%m/%Y") == strptime("02/02/2007","%d/%m/%Y"))

## Plot 4 ##
png(filename = "plot4.png",width = 480,height = 480)
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(Data2, {
  
  plot(Data2$Global_active_power, type="l", 
       ylab="Global Active Power", xlab="",xaxt="n")
  axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))
  
  plot(Data2$Voltage, type="l", ylab="Voltage", xlab="",xaxt="n")
  axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))
  
  plot(Data2$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="",xaxt="n")
  lines(Data2$Sub_metering_2,col='Red',type = "l")
  lines(Data2$Sub_metering_3,col='Blue',type = "l")
  axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),pch=NA,lty=1,col = c(1,2,4),bty="n")
  
  
  plot(Data2$Global_reactive_power, type="l", 
       ylab="Global_Reactive_Power",xlab="",xaxt="n")
  axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))
})
dev.off()

