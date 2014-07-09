#check if data from 2007-02-01 and 2007-02-02 are already stored in the "subpower" table in R
if(!exists("subpower")) {

	#check if the "powert" table with all the power data is already stored in R
	if(!exists("powert")) {

		#check if the external file with power data has been downloaded into the working directory
		if(!file.exists("exdata_data_household_power_consumption.zip")) {
			setInternet2(use = TRUE) #needed for downloading via IE, which is used by my employer
			download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "exdata_data_household_power_consumption.zip")
		}

	poweruz<-unzip("exdata_data_household_power_consumption.zip")
	powert<-read.table(poweruz, header=TRUE, sep = ";", stringsAsFactors=FALSE, na.strings="?")
	}

#extract data with the required dates from "powert" table into a "subpower" table
powert$Date<-as.Date(powert$Date, format="%d/%m/%Y")
subpower <- powert[powert$Date == "2007-02-01" | powert$Date == "2007-02-02",]

#create a datetime column to use on the x axes of the plots
subpower$DateTime <- paste(subpower$Date, subpower$Time, sep = " ")
subpower$datetime <- strptime(subpower$DateTime, format = "%Y-%m-%d %H:%M:%S")
}

