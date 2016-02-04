## Set WD & Load Data##

setwd("~/Desktop/courseProject_1")

Data = read.table(file = "household_power_consumption.txt",header = TRUE,sep = ";",dec = ".",na.strings = "?")

Data2=subset(x = Data,strptime(Data$Date,"%d/%m/%Y") == strptime("01/02/2007","%d/%m/%Y") | strptime(Data$Date,"%d/%m/%Y") == strptime("02/02/2007","%d/%m/%Y"))

## Plot 2 ##
png(filename = "plot2.png",width = 480,height = 480)
plot(Data2$Global_active_power,xlab="",ylab = "Global Active Power (kilowatts)",xaxt="n",type = "l")
axis(1,at = c(0,1441,2881),labels = c("Thu", "Fri","Sat"))
dev.off()