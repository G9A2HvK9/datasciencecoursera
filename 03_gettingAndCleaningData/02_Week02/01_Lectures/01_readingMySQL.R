## Structure
## Database --> Tables --> Fields
## Table == Data Set == Data Frame

## Use IDs to link tables
## 

## install.packages('RMySQL')
library(RMySQL)

ucscDb <- dbConnect(MySQL(), user = 'genome', host = 'genome-mysql.cse.ucsc.edu')

## runs SQl Query on open connection with DB. Query needs to be closed with ';'
## The connection needs to be closed with 'dbDisconnect'. This is confirmed by returning 'TRUE'
## result <- dbGetQuery(ucscDb, 'show databases;'); dbDisconnect(ucscDb);
print(result)

hg19 <- dbConnect(MySQL(), user = 'genome', db = 'hg19', host = 'genome-mysql.cse.ucsc.edu')
allTables <- dbListTables(hg19)
length(allTables)

## allTables[1:5]

dbListFields(hg19, 'affyU133Plus2')
dbGetQuery(hg19, 'select count(*) from affyU133Plus2')

## each data type gets its own table

affyData <- dbReadTable(hg19, 'affyU133Plus2')
head(affyData)

query <- dbSendQuery(hg19, 'select * from affyU133Plus2 where misMatches between 1 and 3')
affyMis <- fetch(query); quantile(affyMis$misMatches)

dbDisconnect(hg19) 