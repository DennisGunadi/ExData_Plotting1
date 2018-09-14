hdt <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

hdt$Date <- as.Date(hdt$Date, "%d/%m/%Y")

hdt <- subset(hdt,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

hdt <- hdt[complete.cases(hdt),]

dateTime <- paste(hdt$Date, hdt$Time)

dateTime <- setNames(dateTime, "DateTime")

hdt <- hdt[ ,!(names(hdt) %in% c("Date","Time"))]

hdt <- cbind(dateTime, hdt)

hdt$dateTime <- as.POSIXct(dateTime)

