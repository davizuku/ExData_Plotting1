source("read_data.R")

figureName <- "plot3.png"

if (file.exists(figureName)){
	print(paste("Deleting existing file:", figureName, "..."))
	file.remove(figureName);
}

print(paste("Creating file:", figureName, "..."))

par(bg = NA)

png(filename = figureName, width = 480, height = 480, bg=NA)

with(dataPower, {
	plot(date.time, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
	lines(date.time, Sub_metering_1, col="black")
	lines(date.time, Sub_metering_2, col="red")
	lines(date.time, Sub_metering_3, col="blue")
	legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=c(1, 1, 1))
})

dev.off()

print("Finished!")
