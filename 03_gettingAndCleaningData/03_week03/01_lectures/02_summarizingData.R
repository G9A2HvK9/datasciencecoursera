resData <- read.csv('./Restaurants.csv')
head(resData, n=3)
tail(resData, n=3)
summary(resData)
str(resData)

quantile(resData$councilDistrict, na.rm=T)
quantile(resData$councilDistrict, probs=c(0.5, 0.75, 0.9))

#make table from data
table(resData$zipCode, useNA='ifany')

#make 2 dimensional table from data
table(resData$councilDistrict, resData$zipCode)

#check for NA values
sum(is.na(resData$councilDistrict))
any(is.na(resData$councilDistrict))
colSums(is.na(resData))
all(colSums(is.na(resData)) == 0)

#check if data is clean
all(resData$zipCode > 0)

table(resData$zipCode %in% c('21212'))
table(resData$zipCode %in% c('21212', '21213'))

resData[table(resData$zipCode %in% c('21212', '21213')), ]

print(object.size(resData), units = 'Mb')
