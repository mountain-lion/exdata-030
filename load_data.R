epower <- read.csv("./data/household_power_consumption.txt", sep=";",header=TRUE,
                   colClasses=c("Date"=as.Date("Date",format="%d/%m/%Y")))

epower$Date <- as.Date(epower$Date,format="%d/%m/%Y")

require(dplyr)
ranged_power <- filter(epower,Date >= as.Date("2007-02-01"), 
                       Date <= as.Date("2007-02-02" ))
