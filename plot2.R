#######################################
# Author: Rother Jay B. Copino        #
# Date Create: 02/24/2017             #
# Dataset: Electric Power Consumption #
# File: plot2.png                     #
#######################################

# Set the current working directory
setwd("Downloads/Data Science/Module 4/Peer-graded-Project-1/ExData_Plotting1/")
# Read the data from the input file
epc <- read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE)
# Subset the epc with Date February 1, 2007 and February 2, 2007
subset_epc <- subset(epc, Date %in% c('1/2/2007', '2/2/2007'))

# Convert the Date and Time variables to Date/Time classes
datetime <- strptime(paste(subset_epc$Date, subset_epc$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
# Initiaze the parameters of the device
png("plot2.png", width = 1024, height = 1024)
# Generate the histogram for the Global Active Power vector
plot(datetime, as.numeric(subset_epc$Global_active_power), type="l", xlab = "", ylab = "Global Active Power (kilowatts)", ylim = range(0,6))
# Close the device
dev.off()