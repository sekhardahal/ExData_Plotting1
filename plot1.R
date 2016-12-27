electricdata<- read.table("/Users/Sekhar/Desktop/EDA/Project_1/household_power_consumption.txt", sep = ";", header = TRUE)
head(electricdata)
subSetData <- electricdata[electricdata$Date %in% c("1/2/2007","2/2/2007") ,]
Global_active_power <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)",ylab = "Frequency")
dev.off()