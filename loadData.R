##to load the dataset from the zipped file
filename<-"./data/household_power_consumption.txt"
dataset<-read.table(filename,                 
                    header=TRUE,
                    sep=";",
                    colClasses=c("character","character",rep("numeric",7)),
                    na="?")
dim(dataset)
#attached dataset to R search path to ease searching by R
attach(data)
## Get data of 2 days only,  from the dates 2007-02-01 and 2007-02-02.
## Subset the data base on the 2 days
subset <- Date == "1/2/2007" | Date == "2/2/2007"
newData <- data[subset, ]
attach(newData)
x <- paste(Date, Time)
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)
dim(newData) # 2880   10
attach(newData)