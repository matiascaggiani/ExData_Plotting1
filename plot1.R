## Set WD & Load Data##

setwd("~/Desktop/courseProject_1")

Data = read.table(file = "household_power_consumption.txt",header = TRUE,sep = ";",dec = ".",na.strings = "?")

Data2=subset(x = Data,strptime(Data$Date,"%d/%m/%Y") == strptime("01/02/2007","%d/%m/%Y") | strptime(Data$Date,"%d/%m/%Y") == strptime("02/02/2007","%d/%m/%Y"))

## Plot 1 ##

png(filename = "plot1.png",width = 480,height = 480)

hist(x = Data2$Global_active_power,col = 2,main = "Global Active Power",xlab = "Global Active Power (kilowatts)")

dev.off()
