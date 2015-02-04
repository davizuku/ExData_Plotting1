source("read_data.R")

#store langugage settings
user_lang <- Sys.getlocale("LC_TIME")
Sys.setlocale("LC_TIME", "English")

figureName <- "plot2.png"

if (file.exists(figureName)){
	print(paste("Deleting existing file:", figureName, "..."))
	file.remove(figureName);
}

print(paste("Creating file:", figureName, "..."))

par(bg = NA)

png(filename = figureName, width = 480, height = 480, bg=NA)

with(dataPower, plot(date.time, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))

dev.off()

print("Finished!")

#restore language
Sys.setlocale("LC_TIME", user_lang)