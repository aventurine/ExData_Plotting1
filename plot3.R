#run a script that checks if the R objects and files needed to create the plots already exist,
#generates any needed objects, and downloads any needed files
source("checkfiles.R")

#for Plot 3, create the plot directly to the png device (to preserve formatting)

png(filename="plot3.png", width = 480, height = 480, units = "px")
with(subpower, { 
	plot(datetime, Sub_metering_1, type="l", xlab = "", ylab = "Energy sub metering", col="gray20")
	lines(datetime, Sub_metering_2, type="l", xlab = "", col="orangered3") #orangered1
	lines(datetime, Sub_metering_3, type="l", xlab = "", ylab = "Energy sub metering", col="mediumblue")
	legend('topright', lwd=1, col=c("grey20", "orangered3", "mediumblue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})
dev.off()

