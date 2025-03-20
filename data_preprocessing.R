# Load the dataset
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

# Convert the Date column to Date format
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

# Filter data for the given date range (February 1-2, 2007)
data <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

# Combine Date and Time columns to create a Datetime column
data$Datetime <- strptime(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")

# Convert relevant columns to numeric
numeric_columns <- c("Global_active_power", "Global_reactive_power", "Voltage", 
                     "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

data[numeric_columns] <- lapply(data[numeric_columns], as.numeric)

# Print basic information about the dataset
str(data)
summary(data)
