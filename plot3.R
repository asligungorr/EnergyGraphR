# Save the plot as a PNG file
png("plot3.png", width=480, height=480)

# Create a time series plot for Sub-metering 1
plot(data$Datetime, data$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy Sub Metering",
     main="Energy Sub Metering Over Time")

# Add Sub-metering 2 to the plot in red
lines(data$Datetime, data$Sub_metering_2, col="red")

# Add Sub-metering 3 to the plot in blue
lines(data$Datetime, data$Sub_metering_3, col="blue")

# Add a legend to identify the sub-metering lines
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1)

# Finish saving the PNG file
dev.off()
