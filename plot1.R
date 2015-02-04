source("read_data.R")

figureName <- "plot1.png"

if (file.exists(figureName)){
	print(paste("Deleting existing file:", figureName, "..."))
	file.remove(figureName);
}

print(paste("Creating file:", figureName, "..."))

png(filename = figureName, width = 480, height = 480)

with(dataPower, hist(Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power"))

dev.off()

print("Finished!")