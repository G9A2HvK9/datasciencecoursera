library(jsonlite)


## Pulls JSON data from the github API and stores it in jsonData variable
jsonData <- fromJSON('https://api.github.com/users/jtleek/repos')

## prints names of the JSON elements
names(jsonData)

## prints the login names of all owners
jsonData$owner$login


## converts iris data set (data frame) into JSON
myjson <- toJSON(iris, pretty = TRUE)
cat(myjson)

## converts created JSON back into data frame
iris2 <- fromJSON(myjson)
head(iris2)