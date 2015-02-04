source("read_data.R")

figureName <- "plot4.png"

if (file.exists(figureName)){
	print(paste("Deleting existing file:", figureName, "..."))
	file.remove(figureName);
}

print(paste("Creating file:", figureName, "..."))

png(filename = figureName, width = 480, height = 480, bg=NA)

par(mfrow=c(2, 2), mar=c(6, 4, 3, 2), bg = NA)

with(dataPower, {
	# First plot
	plot(date.time, Global_active_power, type="l", xlab="", ylab="Global Active Power")
	# Second plot
	plot(date.time, Voltage, type="l", xlab="datetime", ylab="Voltage")
	# Third plot
	plot(date.time, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
	lines(date.time, Sub_metering_1, col="black")
	lines(date.time, Sub_metering_2, col="red")
	lines(date.time, Sub_metering_3, col="blue")
	legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=c(1, 1, 1), bty="n")
	# Fourth plot
	plot(date.time, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
})

# Restore global parameters
par(mfrow=c(1,1), mar=c(5.1, 4.1, 4.1, 2.1))


dev.off()

print("Finished!")


