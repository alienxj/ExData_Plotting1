#Read the Data
mydata<-read.table("household_power_consumption.txt",sep = ";",
                   header=TRUE, na.strings = "?",
                   stringsAsFactors = FALSE)
my<-mydata[mydata$Date=="1/2/2007"|mydata$Date=="2/2/2007",]
x <- paste(my$Date,my$Time)
x<-strptime(x, format = "%d/%m/%Y %H:%M:%S")
#Plot1
hist(my$Global_active_power,col = "red",
        main = "Global active power",
        xlab = "Global Active Power(kilowatts)",
        ylab = "Frequency")
#Output
dev.copy(png,file="Plot1.png",width = 480, height = 480)
dev.off()


