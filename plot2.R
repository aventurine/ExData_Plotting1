#run a script that checks if the R objects and files needed to create the plots already exist,
#generates any needed objects, and downloads any needed files
source("checkfiles.R")

#for Plot 2, create the plot directly in the png device

png(filename="plot2.png", width = 480, height = 480, units = "px")
plot(subpower$datetime, subpower$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

