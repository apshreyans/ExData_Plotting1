#Statistical Inference Course Project 1--> PLOT4

Outfile=file("C:/Users/A512355/Documents/Edu/BA/Learn R/Statistical Inference/Course Project 1/subset data.txt",open="rt") 
Outcomefile=read.csv("C:/Users/A512355/Documents/Edu/BA/Learn R/Statistical Inference/Course Project 1/subset data.txt",sep = ";")
close(Outfile)
png(file="plot4.png",width = 480,height = 480)
Outcomefile$datetime=strptime(paste(Outcomefile$Date,Outcomefile$Time),format="%d/%m/%Y %H:%M:%S")

par(mfrow = c(2,2))
plot(Outcomefile$datetime,Outcomefile$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",type='l')
plot(Outcomefile$datetime,Outcomefile$Voltage,xlab="datetime",ylab="Voltage",type='l')
plot(Outcomefile$datetime,Outcomefile$Sub_metering_1,xlab="",ylab="Energy sub metering",type='l')
lines(Outcomefile$datetime,Outcomefile$Sub_metering_2,col='red')
lines(Outcomefile$datetime,Outcomefile$Sub_metering_3,col='blue')
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1, col=c('black','red', 'blue'))
plot(Outcomefile$datetime,Outcomefile$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type='l')

dev.off()
