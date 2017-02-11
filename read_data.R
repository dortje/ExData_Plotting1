# this file reads the data
# this file should be placed in the directory ExData_Plotting1 which should be a sub directory of your working directory
# data should reside in within a sub directory of the working directory: WD/exdata_data_household_power_consumption/household_power_consumption.txt

# read one line only to get the header for the colnames
helper_household_data_for_colnames <- read.csv("exdata_data_household_power_consumption/household_power_consumption.txt", sep=";", nrows = 1)
# read data only for 2017-02-01 and 2017-02-02 (row 66638 to 69517)
household_data <- read.csv("exdata_data_household_power_consumption/household_power_consumption.txt", sep=";", na.string="?", skip = 66637, nrows=(69517-66637), header = FALSE)
# assign colnames from the helper object to the household_data object, delete the helper object afterwards
colnames(household_data) <- colnames(helper_household_data_for_colnames)
rm(helper_household_data_for_colnames)
	# Learning: When na.string is not specified, then the '?' will be seen as a character and hence the columns will be interpreted as string.
	# 			In default string is converted to factor. That's why you would end up with factor columns instead of num columns
	

# convert Date and Time columns
household_data$Time <- strptime(paste(household_data$Date, household_data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")
household_data$Date <- as.Date(household_data$Date, format="%d/%m/%Y")