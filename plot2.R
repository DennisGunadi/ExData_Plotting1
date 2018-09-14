plot(hdt$Global_active_power~hdt$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png,filename="plot2.png",width=480,height=480);
dev.off ();
