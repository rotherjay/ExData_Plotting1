#######################################
# Author: Rother Jay B. Copino        #
# Date Create: 02/24/2017             #
# Dataset: Electric Power Consumption #
# File: plot1.png                     #
#######################################

# Set the current working directory
setwd("Downloads/Data Science/Module 4/Peer-graded-Project-1/ExData_Plotting1/")
# Read the data from the input file
epc <- read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE)
# Subset the epc with Date February 1, 2007 and February 2, 2007
subset_epc <- subset(epc, Date %in% c('1/2/2007', '2/2/2007'))

# Initiaze the parameters of the device
png("plot1.png", width = 1024, height = 1024)
# Generate the histogram for the Global Active Power vector
hist(as.numeric(subset_epc$Global_active_power), col = "red", xlab = "Global Active Power (kilowatts)", xlim = range(0,6), ylab = "Frequency",  main = "Global Active Power")
# Close the device
dev.off()