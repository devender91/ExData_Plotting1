#download file from link
download.file(url,destfile = "C:\\Users\\Devender\\Documents\\project\\name.zip")
#unzip and extract data in R
dat <- read.table(unz(name,"household_power_consumption.txt"),header = T, sep =";",na.string ="?",colClasses = c("character","character",rep("numeric",7)))
# subsetting data for required days
sat <- subset(dat,Date =="1/2/2007" | Date == "2/2/2007")
# combining data and time
jat <-  with(sat, data.frame(timestamp = strptime(paste(sat$Date,sat$Time),format = "%d/%m/%Y %H:%M:%S"),Global_active_power, Global_reactive_power, Voltage,Global_intensity, Sub_metering_1, Sub_metering_2,Sub_metering_3))
