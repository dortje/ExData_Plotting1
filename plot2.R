# this file should be placed in the directory ExData_Plotting1 which should be a sub directory of your working directory
# for reading the data another source file (read_data.R) is needed which resides also within the sub directory ExData_Plotting1
# data should reside within a sub directory of the working directory: WD/exdata_data_household_power_consumption/household_power_consumption.txt
# Hint: if the date labels are not in english, the locale needs to be set to english first with the following command: Sys.setlocale(category = "LC_ALL", locale = "english")

## read the data

print("Reading data ...")

source("ExData_Plotting1/read_data.R")

## constructing plot 2

print("Plotting ...")

png("ExData_Plotting1/plot2.png", width=480, height=480)
plot(household_data$Time, household_data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

print("Done. Plot 2 can be found in ExData_Plotting1/plot2.png")