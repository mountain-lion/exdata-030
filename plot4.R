
source("load_data.R")

ranged_power$Time <- strptime(paste(ranged_power$Date, ranged_power$Time), "%Y-%m-%d %H:%M:%S")

plot4 <- paste(getwd(), "/plots/plot4.png", sep = "")
if(!file.exists(plot4)){
  png(plot4, width = 480, height = 480)
  par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
  with(ranged_power, {
    plot(ranged_power$Time, as.numeric(as.character(ranged_power$Global_active_power)), type = "l", xlab = "", ylab = "Global Active Power")
    plot(ranged_power$Time, as.numeric(as.character(ranged_power$Voltage)), type = "l", xlab = "datetime", ylab = "Voltage")
    plot(ranged_power$Time, as.numeric(ranged_power$Sub_metering_1), type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
    lines(ranged_power$Time, as.numeric(ranged_power$Sub_metering_2), type="l", col="red")
    lines(ranged_power$Time, as.numeric(ranged_power$Sub_metering_3), type="l", col="blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
    plot(ranged_power$Time, as.numeric(as.character(ranged_power$Global_reactive_power)), type = "l", xlab = "datetime", ylab = "Global Active Power")
    mtext("", outer = TRUE)
  })
  dev.off()
} else {
  par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
  with(ranged_power, {
    plot(ranged_power$Time, as.numeric(as.character(ranged_power$Global_active_power)), type = "l", xlab = "", ylab = "Global Active Power")
    plot(ranged_power$Time, as.numeric(as.character(ranged_power$Voltage)), type = "l", xlab = "datetime", ylab = "Voltage")
    plot(ranged_power$Time, as.numeric(ranged_power$Sub_metering_1), type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
    lines(ranged_power$Time, as.numeric(ranged_power$Sub_metering_2), type="l", col="red")
    lines(ranged_power$Time, as.numeric(ranged_power$Sub_metering_3), type="l", col="blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
    plot(ranged_power$Time, as.numeric(as.character(ranged_power$Global_reactive_power)), type = "l", xlab = "datetime", ylab = "Global Active Power")
    mtext("", outer = TRUE)
  })
}
