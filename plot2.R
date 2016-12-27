electricdata<- read.table("/Users/Sekhar/Desktop/EDA/Project_1/household_power_consumption.txt", sep = ";", header = TRUE)
head(electricdata)
subSetData <- electricdata[electricdata$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
Global_active_power <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
