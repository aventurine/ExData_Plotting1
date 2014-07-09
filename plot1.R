#setwd(".\\Coursera\\Exploratory Data Analysis\\Project1")

#run a script that checks if the R objects and files needed to create the plots already exist,
#generates any needed objects, and downloads any needed files
source("checkfiles.R")

#for Plot 1, create the plot directly in the png device

png(filename="plot1.png", width = 480, height = 480, units = "px")
hist(subpower$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab =  "Frequency")
dev.off()

