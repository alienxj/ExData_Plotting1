#Read the Data
mydata<-read.table("household_power_consumption.txt",sep = ";",
                   header=TRUE, na.strings = "?",
                   stringsAsFactors = FALSE)
my<-mydata[mydata$Date=="1/2/2007"|mydata$Date=="2/2/2007",]
x <- paste(my$Date,my$Time)
x<-strptime(x, format = "%d/%m/%Y %H:%M:%S")
#Plot3
par(mar=c(2,2,2,2))
plot(x,my$Sub_metering_1,type="l",
     ylab = "Engery sub metering",
     xlab = "")
lines(x,my$Sub_metering_2,col="red")
lines(x,my$Sub_metering_3,col="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_2"),
       col = c("black","red","blue"),pch ="_")
#Output
dev.copy(png,file="Plot3.png",width = 480, height = 480)
dev.off()
