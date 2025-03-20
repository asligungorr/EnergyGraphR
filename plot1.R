# Save as PNG file
png("plot1.png", width=480, height=480)

# Histogram plotting
hist(data$Global_active_power, col="red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)", ylab="Frequency", breaks=12)

# Finish saving
dev.off()
