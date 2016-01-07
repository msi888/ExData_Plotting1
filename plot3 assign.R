setwd("F:/JHU/3_EXPLORATORY DATA")
getwd()
rm(list=ls())
file<- read.table("household_power_consumption.txt", sep=";", header=TRUE, quote= "", na.strings= "?")
fd<- subset(file, (file$Date == "1/2/2007" | file$Date== "2/2/2007")) 

fd$Date <- as.Date(fd$Date, format = "%d/%m/%Y")
fd$DT <- as.POSIXct(paste(fd$Date, fd$Time))
head(fd)
tail(fd)
## PLOT3 CREATION
with(fd, {plot(Sub_metering_1~DT, type="l",ylab="Global Active Power (kilowatts)", xlab="")
lines(Sub_metering_2~DT,col='Red')
lines(Sub_metering_3~DT,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()