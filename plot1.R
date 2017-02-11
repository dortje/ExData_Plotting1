# this file should be placed in the directory ExData_Plotting1 which should be a sub directory of your working directory
# for reading the data another source file (read_data.R) is needed which resides also within the sub directory ExData_Plotting1
# data should reside within a sub directory of the working directory: WD/exdata_data_household_power_consumption/household_power_consumption.txt

## read the data

print("Reading data ...")

source("ExData_Plotting1/read_data.R")

## constructing plot 1

png("ExData_Plotting1/plot1.png", width=480, height=480)
hist(household_data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main ="Global Active Power")
dev.off()

print("Done. Plot 1 can be found in ExData_Plotting1/plot1.png")