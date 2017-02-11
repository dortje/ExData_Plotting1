# this file should be placed in the directory ExData_Plotting1 which should be a sub directory of your working directory
# for reading the data another source file (read_data.R) is needed which resides also within the sub directory ExData_Plotting1
# data should reside within a sub directory of the working directory: WD/exdata_data_household_power_consumption/household_power_consumption.txt
# Hint: if the date labels are not in english, the locale needs to be set to english first with the following command: Sys.setlocale(category = "LC_ALL", locale = "english")

## read the data

print("Reading data ...")

source("ExData_Plotting1/read_data.R")

## constructing plot 1

print("Plotting ...")

png("ExData_Plotting1/plot4.png", width=480, height=480)
par(mfrow=c(2,2)) # setting 4 plotting spaces (2x2) on the grpahics device
# Plot 1 (upper left) - same code as in plot2.R, only the ylab was adjusted
plot(household_data$Time, household_data$Global_active_power, type="l", xlab="", ylab="Global Active Power")
# Plot 2 (upper right) - new plot, similar to plot 1 (plot2.R)
plot(household_data$Time, household_data$Voltage, type="l", xlab="datetime", ylab="Voltage")
# Plot 3 (lower left) - same code as in plot 3, only for the legend the line was removed and the legend is slightly smaller
plot(household_data$Time, household_data$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
points(household_data$Time, household_data$Sub_metering_1, type="l", col="black")
points(household_data$Time, household_data$Sub_metering_2, type="l", col="red")
points(household_data$Time, household_data$Sub_metering_3, type="l", col="blue")
legend("topright", col=c("black", "red", "blue"), legend=colnames(household_data)[7:9], lty=1, bty="n", cex=0.9)
# Plot 4 (lower right) - new plot similar to plot 1 and 2 (plot2.png)
plot(household_data$Time, household_data$Global_reactive_power, type="l", xlab="datetime", ylab="Globale_reactive_power")

dev.off()

print("Done. Plot 4 can be found in ExData_Plotting1/plot4.png")