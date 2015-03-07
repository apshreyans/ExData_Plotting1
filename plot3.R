
Outfile=file("C:/Users/A512355/Documents/Edu/BA/Learn R/Statistical Inference/Course Project 1/subset data.txt",open="rt") 
Outcomefile=read.csv("C:/Users/A512355/Documents/Edu/BA/Learn R/Statistical Inference/Course Project 1/subset data.txt",sep = ";")
close(Outfile)
png(file="plot3.png",width = 480,height = 480)
Outcomefile$datetime=strptime(paste(Outcomefile$Date,Outcomefile$Time),format="%d/%m/%Y %H:%M:%S")

plot(Outcomefile$datetime,Outcomefile$Sub_metering_1,xlab="",ylab="Energy sub metering",type='l')
lines(Outcomefile$datetime,Outcomefile$Sub_metering_2,col='red')
lines(Outcomefile$datetime,Outcomefile$Sub_metering_3,col='blue')
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1, col=c('black','red', 'blue'))
dev.off()
