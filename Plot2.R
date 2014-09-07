raw_data <- read.table("household_power_consumption.txt", sep=";", quote="\"",header=TRUE)
sub_data <- raw_data[raw_data$Date=="1/2/2007" | raw_data$Date =="2/2/2007",]
Global_active = as.numeric(levels(sub_data$Global_active))[sub_data$Global_active]
plot.ts(Global_active,ylab="Global Active Power",xlab="",xaxt="n")
axis(1,at=c(0,length(Global_active)/2,length(Global_active)),c("Thu","Fri","Sat"))
