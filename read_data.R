
fileName <- "household_power_consumption.txt"

print(paste("Reading data from file:", fileName, "..."))
dataPower <- read.table(fileName, header=TRUE, na.string="?", sep=";")

print("Subsetting data...")
dataPower$date.time <- with(dataPower, strptime(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))

date1 <- strptime("2007-02-01 00:00:00", format="%Y-%m-%d %H:%M:%S")
date2 <- strptime("2007-02-02 23:59:59", format="%Y-%m-%d %H:%M:%S")

subsetVect <- with(dataPower, !is.na(date.time) & date.time >= date1 & date.time <= date2);

dataPower <- dataPower[subsetVect, ]

print("Ready!")
print("-------------------");