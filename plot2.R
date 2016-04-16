#Read the Data
mydata<-read.table("household_power_consumption.txt",sep = ";",
                   header=TRUE, na.strings = "?",
                   stringsAsFactors = FALSE)
my<-mydata[mydata$Date=="1/2/2007"|mydata$Date=="2/2/2007",]
x <- paste(my$Date,my$Time)
x<-strptime(x, format = "%d/%m/%Y %H:%M:%S")

#Plot2
plot(x,my$Global_active_power,type="l",
     ylab = "Global Active Power(kilowatts)",
     xlab = "")
#Output
dev.copy(png,file="Plot2.png",width = 480, height = 480)
dev.off()