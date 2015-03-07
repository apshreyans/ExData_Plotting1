#Statistical Inference Course Project 1--> PLOT1


#C:\Users\A512355\Documents\Edu\BA\Learn R\Statistical Inference\Course Project 1
Outfile=file("C:/Users/A512355/Documents/Edu/BA/Learn R/Statistical Inference/Course Project 1/subset data.txt",open="rt") 
Outcomefile=read.csv("C:/Users/A512355/Documents/Edu/BA/Learn R/Statistical Inference/Course Project 1/subset data.txt",sep = ";")
close(Outfile)
png(file="plot1.png",width = 480,height = 480)
hist(Outcomefile$Global_active_power,col="red",xlab="Global Active Power(kilowatts)",main = "Global Active Power")
dev.off()
