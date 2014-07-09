#run a script that checks if the R objects and files needed to create the plots already exist,
#generates any needed objects, and downloads any needed files
source("checkfiles.R")

#for Plot 4, create the plot directly in the png device to preserve formatting

png(filename="plot4.png", width = 480, height = 480, units = "px")
par(mfrow=c(2,2))
with(subpower, {
	#for plot(1,1)
	plot(datetime, Global_active_power, type="l", xlab = "", ylab = "Global Active Power") 

	#for plot(1,2)
	plot(datetime, Voltage, type="l")	

	#for plot(2,1)
	plot(datetime, Sub_metering_1, type="l", xlab = "", ylab = "Energy sub metering", col="grey20")
	lines(datetime, Sub_metering_2, type="l", xlab = "", ylab = "Energy sub metering", col="orangered3") 
	lines(datetime, Sub_metering_3, type="l", xlab = "", ylab = "Energy sub metering", col="mediumblue")
	legend('topright', lwd=1, bty="n", col=c("grey20", "orangered3", "mediumblue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

	#for plot(2,2)	
	plot(datetime, Global_reactive_power, type="l")
})
dev.off()

