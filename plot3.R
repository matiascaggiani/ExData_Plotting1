## Set WD & Load Data##

setwd("~/Desktop/courseProject_1")

Data = read.table(file = "household_power_consumption.txt",header = TRUE,sep = ";",dec = ".",na.strings = "?")

Data2=subset(x = Data,strptime(Data$Date,"%d/%m/%Y") == strptime("01/02/2007","%d/%m/%Y") | strptime(Data$Date,"%d/%m/%Y") == strptime("02/02/2007","%d/%m/%Y"))

## Plot 3 ##
png(filename = "plot3.png",width = 480,height = 480)
plot(Data2$Sub_metering_1,xaxt="n",type = "l",xlab="",ylab = "Energy sub metering")
lines(x = Data2$Sub_metering_2,col=2)
lines(x = Data2$Sub_metering_3,col=4)
axis(1,at = c(0,1441,2881),labels = c("Thu", "Fri","Sat"))
legend("topright",pch=NA,col=c(1,2,4),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1)
dev.off()