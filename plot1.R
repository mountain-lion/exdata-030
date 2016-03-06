source("load_data.R")

plot1 <- paste(getwd(),"/plots/plot1.png", sep="")

if(!file.exists(plot1)){
  png(plot1, width = 480, height = 480)
  hist(as.numeric(as.character(ranged_power$Global_active_power)), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
  dev.off()
} else {
  hist(as.numeric(as.character(ranged_power$Global_active_power)), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
}
