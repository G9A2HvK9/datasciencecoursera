library(data.table)
library(lubridate)
library(dplyr)

# QUESTION 1:
fileUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
download.file(fileUrl, destfile = './99_Data/ACSData.csv')

d <- fread('./99_Data/ACSData.csv')
strsplit(names(d), 'wgtp')[123]
# ANSWER: ""   "15"


# QUESTION 2:
fileUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
download.file(fileUrl, destfile = './99_Data/GDPData.csv')

d <- fread('./99_Data/GDPData.csv', nrows = 190, skip = 5)
colnames(d) = c('code', 'rank', 'empty1', 'name', 'gdpinmillions', 'empty2', 'empty3', 'empty4', 'empty5', 'empty6')
d$gdpinmillions <- gsub(',', '', d$gdpinmillions)
d$gdpinmillions <- as.integer(d$gdpinmillions)

mean(d$gdpinmillions)
# ANSWER: 377652.4


#QUESTION 3:
grep('^United', d$name, value = TRUE)
# ANSWER: grep('^United', countryNames), 3


#QUESTION 4:
fileUrl1 <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
fileUrl2 <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv'
download.file(fileUrl1, destfile = './99_Data/GDPData.csv')
download.file(fileUrl2, destfile = './99_Data/educationData.csv')

edu <- fread('./99_Data/educationData.csv')
colnames(edu)[1] <- 'code'

gdp <- fread('./99_Data/GDPData.csv', nrows = 190, skip = 5)
colnames(gdp) = c('code', 'rank', 'empty1', 'name', 'gdpinmillions', 'empty2', 'empty3', 'empty4', 'empty5', 'empty6')
gdp$gdpinmillions <- gsub(',', '', gdp$gdpinmillions)
gdp$gdpinmillions <- as.integer(gdp$gdpinmillions)

merged <- merge(gdp, edu, by = 'code')
length(grep('*[Ff]iscal [Yy]ear end: June*', merged$`Special Notes`, value = TRUE))
# ANSWER: 13


# QUESTION 5:
library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn)

years <- lapply(sampleTimes, year)
length(years[which(years == 2012)])
# ANSWER: 250, 47


