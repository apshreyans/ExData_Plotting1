#Statistical Inference Course Project 1--> PLOT2


Outfile=file("C:/Users/A512355/Documents/Edu/BA/Learn R/Statistical Inference/Course Project 1/subset data.txt",open="rt") 
Outcomefile=read.csv("C:/Users/A512355/Documents/Edu/BA/Learn R/Statistical Inference/Course Project 1/subset data.txt",sep = ";")
close(Outfile)
png(file="plot2.png",width = 480,height = 480)
Outcomefile$datetime=strptime(paste(Outcomefile$Date,Outcomefile$Time),format="%d/%m/%Y %H:%M:%S")
plot(Outcomefile$datetime,Outcomefile$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",type='l')
dev.off()
