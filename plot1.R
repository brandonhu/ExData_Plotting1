## First check whether it has the file in the current dir.
if (!"loadData.R" %in% list.files()) {
  setwd("./ExData_Plotting1")
} 
#source the file
source("./loadData.R")
#screen device
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
#plot histogram
hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))
#close the device
dev.off()

