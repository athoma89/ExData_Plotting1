power<-read.table("household_power_consumption.txt",sep=";",stringsAsFactors=FALSE,skip=66637,nrows=2880,col.names=c("Date","Time","GAP","GRP","Voltage","GI","SM1","SM2","SM3"))
x<-paste(power$Date,power$Time)
x<-strptime(x,format="%d/%m/%Y %H:%M:%S")
power<-cbind(x,power)
png(filename="plot1.png",
    width=480,height=480)
hist(power$GAP,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()