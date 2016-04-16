#Read the Data
mydata<-read.table("household_power_consumption.txt",sep = ";",
                   header=TRUE, na.strings = "?",
                   stringsAsFactors = FALSE)
my<-mydata[mydata$Date=="1/2/2007"|mydata$Date=="2/2/2007",]
x <- paste(my$Date,my$Time)
x<-strptime(x, format = "%d/%m/%Y %H:%M:%S")
#Plot4
par(mfrow=c(2,2))
#4.1
plot(x,my$Global_active_power,type="l",
     ylab = "Gobal active power",
     xlab = "")
#4.2
plot(x,my$Voltage,type="l",
     ylab = "Voltage",
     xlab = "datetime")
#4.3
plot(x,my$Sub_metering_1,type="l",
     ylab = "Engery sub metering",
     xlab = "")
lines(x,my$Sub_metering_2,col="red")
lines(x,my$Sub_metering_3,col="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_2"),
       col = c("black","red","blue"),pch ="_",bty="n")
#4.4
plot(x,my$Global_reactive_power,type="l",
     ylab = "Global_reactive_power",
     xlab = "datetime")
#Output
dev.copy(png,file="Plot4.png",width = 480, height = 480)
dev.off()