raw_data <- read.table("household_power_consumption.txt", sep=";", quote="\"",header=TRUE)
sub_data <- raw_data[raw_data$Date=="1/2/2007" | raw_data$Date =="2/2/2007",]
Global_active = as.numeric(levels(sub_data$Global_active))[sub_data$Global_active]
hist(Global_active,main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency",col="red")
