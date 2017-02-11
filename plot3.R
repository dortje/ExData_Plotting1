# this file should be placed in the directory ExData_Plotting1 which should be a sub directory of your working directory
# for reading the data another source file (read_data.R) is needed which resides also within the sub directory ExData_Plotting1
# data should reside within a sub directory of the working directory: WD/exdata_data_household_power_consumption/household_power_consumption.txt
# Hint: if the date labels are not in english, the locale needs to be set to english first with the following command: Sys.setlocale(category = "LC_ALL", locale = "english")

## read the data

print("Reading data ...")

source("ExData_Plotting1/read_data.R")

## constructing plot 3
print("Plotting ...")

png("ExData_Plotting1/plot3.png", width=480, height=480)
# preparing the plotting area with type = "n" nothing is plotted yet
plot(household_data$Time, household_data$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
# adding the plot lines for all three sub meterings in different colors
points(household_data$Time, household_data$Sub_metering_1, type="l", col="black")
points(household_data$Time, household_data$Sub_metering_2, type="l", col="red")
points(household_data$Time, household_data$Sub_metering_3, type="l", col="blue")
# adding a legend 
legend("topright", col=c("black", "red", "blue"), legend=colnames(household_data)[7:9], lty=1)
dev.off()

print("Done. Plot 3 can be found in ExData_Plotting1/plot3.png")