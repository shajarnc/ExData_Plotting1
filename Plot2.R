setwd("C:/Users/encoral2016/Downloads/EDA_Asignment_household_power_consumption")
data2 <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)
data2 <- data2 %>% mutate(V1 = as.POSIXct(dmy_hms(as.character(paste(V1, V2)))),
                          V3 = as.numeric(as.character(V3))) %>% select(V1,V3)

png("plot2.png", width=480, height=480)
# create plot
with(data2, plot(V1,V3, type="l", xlab = "", ylab = "Global Active Power (kilowatts)"))

#close the png so that we can open it
dev.off()