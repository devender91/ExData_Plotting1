png("plot4.png",width = 480, height = 480)
par(mfrow=c(2,2))

hist(jat$Global_active_power,col = "red", main = "Global Active Power", xlab ="Global Active Power (kilowatts)", ylab ="Frequency" )

plot(x = jat$timestamp, y = jat$Voltage,ylab ="Voltage",xlab ="datetime",type='l')

pcolr <- c("black","red","blue")
plot(x = jat$timestamp, y = jat$Sub_metering_1, ylab = "Energy sub meeting",type="l",col = pcolr[1],ylim=c(0,38),xlab="")
par(new =T)
plot(x = jat$timestamp, y = jat$Sub_metering_2, ylab = "Energy sub meeting",type="l",col = pcolr[2],ylim=c(0,38),xlab="")
par(new =T)
plot(x = jat$timestamp, y = jat$Sub_metering_3, ylab = "Energy sub meeting",type="l",col = pcolr[3],ylim=c(0,38),xlab="")
legend("topright",legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=pcolr, lwd=1, xjust = 1,cex = 0.5)
par(new=F)

plot(x = jat$timestamp, y = jat$Global_reactive_power, ylab ="Global_reactive_power",xlab ="datetime",type='l')

dev.off()