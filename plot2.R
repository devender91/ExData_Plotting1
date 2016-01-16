png("plot2.png",width = 480, height = 480)
plot(x = jat$timestamp,y = jat$Global_active_power,ylab = "Global Active Power (kilowatts)",xlab="", type = "l")
dev.off()
