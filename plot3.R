
source("load_data.R")

ranged_power$Time <- strptime(paste(ranged_power$Date, ranged_power$Time), "%Y-%m-%d %H:%M:%S")

plot3 <- paste(getwd(), "/plots/plot3.png", sep = "")
if(!file.exists(plot3)){
  png(plot3, width = 480, height = 480)
  plot(ranged_power$Time, as.numeric(ranged_power$Sub_metering_1), type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(ranged_power$Time, as.numeric(ranged_power$Sub_metering_2), type="l", col="red")
  lines(ranged_power$Time, as.numeric(ranged_power$Sub_metering_3), type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
  dev.off()
} else {
  plot(ranged_power$Time, as.numeric(ranged_power$Sub_metering_1), type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(ranged_power$Time, as.numeric(ranged_power$Sub_metering_2), type="l", col="red")
  lines(ranged_power$Time, as.numeric(ranged_power$Sub_metering_3), type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
}
