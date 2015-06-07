# plotnicity
Exploratory Data Analysis Course Project 1

The data comes from the UC Irvine Machine Learning Repository. The data is the “Individual household electric power consumption Data Set”.

    Dataset: Electric power consumption [20Mb]

The following descriptions of the 9 variables in the dataset are taken from the UCI web site:

    Date: Date in format dd/mm/yyyy
    Time: time in format hh:mm:ss
    Global_active_power: household global minute-averaged active power (in kilowatt)
    Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
    Voltage: minute-averaged voltage (in volt)
    Global_intensity: household global minute-averaged current intensity (in ampere)
    Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
    Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
    Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.


The data plotted is from February 1 and 2 in 2007.

4 plots and 4 scripts

plot1.R creates plot1.png
plot1 is historgram of Global Active Power 

plot2.R creates plot2.png
plot2 is a time series plot of Global Active Power across the two days

plot3.R creates plot2.png
plot3 is a times series plot of the submetering 1,2, and 3 across the two days

plot4.R creates plot4.png
plot4 contains plot2 and plot3 along with the voltag time series and Global Reactive power time series across the two days.
