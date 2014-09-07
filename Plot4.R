#set up
par(mfrow=c(2,2))
raw_data <- read.table("household_power_consumption.txt", sep=";", quote="\"",header=TRUE)
sub_data <- raw_data[raw_data$Date=="1/2/2007" | raw_data$Date =="2/2/2007",]
Global_active = as.numeric(levels(sub_data$Global_active))[sub_data$Global_active]
Voltage = as.numeric(levels(sub_data$Voltage))[sub_data$Voltage]
Global_reactive = as.numeric(levels(sub_data$Global_reactive_power))[sub_data$Global_reactive_power]
sub1 = as.numeric(levels(sub_data$Sub_metering_1))[sub_data$Sub_metering_1]
sub2 = as.numeric(levels(sub_data$Sub_metering_2))[sub_data$Sub_metering_2]
sub3 = sub_data$Sub_metering_3
plot.ts(Global_active,ylab="Global Active Power",xlab="",xaxt="n")
axis(1,at=c(0,length(Global_active)/2,length(Global_active)),c("Thu","Fri","Sat"))
plot.ts(Voltage,xlab="datetime",xaxt="n")
axis(1,at=c(0,length(Global_active)/2,length(Global_active)),c("Thu","Fri","Sat"))
plot.ts(sub1,ylab="Energy sub metering",xlab="",xaxt="n")
axis(1,at=c(0,length(sub1)/2,length(sub1)),c("Thu","Fri","Sat"))
lines(sub2,col="red")
lines(sub3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),col=c("black","red","blue"),bty="n")
plot.ts(Global_reactive,ylab="Global_reactive_power",xlab="datetime",xaxt="n")
axis(1,at=c(0,length(Global_reactive)/2,length(Global_reactive)),c("Thu","Fri","Sat"))
