hist(hdt$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
dev.copy(png,filename="plot1.png",width=600,height=600);
dev.off ();
