##Import data from file

file_name <- "household_power_consumption.txt"
data <- read.table(file_name, header = TRUE, sep = ";", dec = ".", na.strings = "?")

#subset data from 1/2/2007 to 2/2/2007
data <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]

##plot the histogram
hist(data[, 3],col="red",main="Global Active Power",xlab = "Global Active Power (kilowatts)")
