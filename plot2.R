
source("load_data.R")

ranged_power$Time <- strptime(paste(ranged_power$Date, ranged_power$Time), "%Y-%m-%d %H:%M:%S")

plot2 <- paste(getwd(), "/plots/plot2.png", sep = "")
if(!file.exists(plot2)){
  png(plot2, width = 480, height = 480)
  plot(ranged_power$Time, as.numeric(as.character(ranged_power$Global_active_power)), type = "l", xlab = "datetime", ylab = "Global Active Power (kilowatts)")
  dev.off()
} else {
  plot(ranged_power$Time, as.numeric(as.character(ranged_power$Global_active_power)), type = "l", xlab = "datetime", ylab = "Global Active Power (kilowatts)")
}
