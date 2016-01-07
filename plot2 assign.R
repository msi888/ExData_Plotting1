setwd("F:/JHU/3_EXPLORATORY DATA")
getwd()
rm(list=ls())
file<- read.table("household_power_consumption.txt", sep=";", header=TRUE, quote= "", na.strings= "?")
fd<- subset(file, (file$Date == "1/2/2007" | file$Date== "2/2/2007")) 

fd$Date <- as.Date(fd$Date, format = "%d/%m/%Y")
fd$DT <- as.POSIXct(paste(fd$Date, fd$Time))
head(fd)
tail(fd)
## PLOT2 CREATION
png("plot2.png", width = 480, height = 480)
plot(fd$DT, fd$Global_active_power,type="l", ylab= "Global Active Power(kilowatts)", xlab="")
dev.off() 


 
