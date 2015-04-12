## First check whether it has the file in the current dir.
if (!"loadData.R" %in% list.files()) {
  setwd("./ExData_Plotting1")
} 
#source the file
source("./loadData.R")
#screen device
png(filename = "plot2.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
#plot line graph
plot(DateTime,Global_active_power, 
     type = "l", 
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
#close the device
dev.off()

