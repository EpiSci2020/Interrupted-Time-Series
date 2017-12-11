library(tidyverse)
library(stringr)
data(Nile)
glimpse(Nile)
nile <- Nile
rm(Nile)
print(nile)
glimpse(nile)
library(changepoint)
time_nile <- cpt.meanvar(nile)
plot(time_nile)

air <- read_delim("AirQualityUCI.csv", delim = ";")

date <- air[,1]
time <- air[,2]
co <- air[,3]
temp <- air[,13]
hum <- air[,14]
no2 <- air[,10]

air1 <- data.frame(date=date, time=time, temp=temp, hum=hum, co=co, no2=no2)
colnames(air1) <- c("date", "time", "temp", "hum", "co", "no2")
glimpse(air1)
air1$co <- air1 %>% str_replace_all(co, ",", "\\.")

air1$co <- gsub(",", ".", air1$co)
air1$co <- as.numeric(air1$co)
str(air1)

