#
# plot3.R
#

library(lubridate)

# this script assumes the raw data is in the working directory
dstop <- read.table("household_power_consumption.txt",nrows=25)
dsok_top <- read.table("household_power_consumption.txt",nrows=25,header=TRUE,sep=";")
datetimestart <- dmy_hms(paste(as.character(dsok_top[1,1]),as.character(dsok_top[1,2])))

# need to get only the rows between Feb 1st and Feb 2nd in 2007
datedesired1 <- ymd_hms("2007-02-01 00:00:00")
datedesired2 <- ymd_hms("2007-02-02 23:59:00")
dsrowstart <- as.numeric(difftime(datedesired1, datetimestart, units="mins"))+1
dsnrows <- as.numeric(difftime(datedesired2, datedesired1, units="mins"))+1
ds_feb07 <- read.table("household_power_consumption.txt", skip = dsrowstart, nrows= dsnrows,
                       sep=";")
names(ds_feb07) <- names(dsok_top)
ds_feb07$datetime <- dmy_hms(paste(ds_feb07$Date, ds_feb07$Time, sep=" "))
windows.options(reset=TRUE)

# Plot 3
# start with calling png to set width and height of image
# and legend text scales appropriately
png(file = "plot3.png",width=480,height=480)
plot(x=ds_feb07$datetime,y=ds_feb07$Sub_metering_1, type="l",
     xlab = "",
     ylab = "Energy sub metering")
points(x=ds_feb07$datetime, y=ds_feb07$Sub_metering_2, type="l",col="red")
points(x=ds_feb07$datetime, y=ds_feb07$Sub_metering_3, type="l",col="blue")
legend("topright",lty=1,col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

