# Save the plot as a PNG file
png("plot2.png", width=480, height=480)

# Create a time series plot for Global Active Power
plot(data$Datetime, data$Global_active_power, type="l", col="black",
     xlab="", ylab="Global Active Power (kilowatts)", 
     main="Global Active Power Over Time")

# Finish saving the PNG file
dev.off()
