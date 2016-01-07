setwd("F:/JHU/3_EXPLORATORY DATA")
getwd()
rm(list=ls())
file<- read.table("household_power_consumption.txt", sep=";", header=TRUE, quote= "", na.strings= "?")
fd<- subset(file, (file$Date == "1/2/2007" | file$Date== "2/2/2007")) 
fd$Date <- as.Date(fd$Date, format = "%d/%m/%Y")
head(fd)
tail(fd)
## PLOT1 CREATION
png("plot1.png", width = 480, height = 480)
hist(fd$Global_active_power, col='red',ylab= "Frequency", xlab="Global Active Power(kilowatts)")
dev.off() 


 
