# Save the plot as a PNG file
png("plot4.png", width=480, height=480)

# Set up a 2x2 plotting layout
par(mfrow=c(2,2))

# 1st Plot: Global Active Power over time
plot(data$Datetime, data$Global_active_power, type="l", col="black",
     xlab="", ylab="Global Active Power")

# 2nd Plot: Voltage over time
plot(data$Datetime, data$Voltage, type="l", col="black",
     xlab="datetime", ylab="Voltage")

# 3rd Plot: Energy Sub Metering over time
plot(data$Datetime, data$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy Sub Metering")
lines(data$Datetime, data$Sub_metering_2, col="red")
lines(data$Datetime, data$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1, bty="n")

# 4th Plot: Global Reactive Power over time
plot(data$Datetime, data$Global_reactive_power, type="l", col="black",
     xlab="datetime", ylab="Global Reactive Power")

# Finish saving the PNG file
dev.off()
