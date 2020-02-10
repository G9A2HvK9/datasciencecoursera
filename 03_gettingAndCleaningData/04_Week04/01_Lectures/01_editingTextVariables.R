if(!file.exists('./data')){dir.create('./data')}
fileUrl <- 'https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD'
download.file(fileUrl, destfile='./data/cameras.csv', method='curl')
cameraData <- read.csv('./data/cameras.csv')

names(cameraData)
tolower(names(cameraData))

splitNames <- strsplit(names(cameraData), '\\.')
splitNames[[5]]
splitNames[[6]]

myList <- list(letters = c('A', 'b', 'c'), numbers = 1:3, matrix(1:25, ncol = 5))
head(myList)

myList[1]
myList$letters

splitNames[[6]][1]
firstElement <- function(x){x[1]}
sapply(splitNames, firstElement)

## fileUrl1 <- 'https://dl.dropboxusercontent.com/u/7710864/data/reviews-apr29.csv'
## fileUrl2 <- 'https://dl.dropboxusercontent.com/u/7710864/data/solutions-apr29.csv'
## download.file(fileUrl1, destfile = './99_data/reviews.csv', method = 'curl')
## download.file(fileUrl2, destfile = './99_data/solutions.csv', method = 'curl')
reviews <- read.csv('./99_data/reviews.csv')
solutions <- read.csv('./99_data/solutions.csv')
## head(solutions, 2); head(reviews, 2)

reviews_names <- c('id', 'solution_id', 'reviewer_id', 'start', 'stop', 'time_left', 'accept')
sub('_','', reviews_names)

testName <- 'this_is_a_test'
sub('_', '', testName)
gsub('_', '', testName)

grep('Alameda', cameraData$intersection)
table(grepl('Alameda', cameraData$intersection))
cameraData2 <- cameraData[!grepl('Alameda', cameraData$intersection),]
grep('Alameda', cameraData$intersection, value = TRUE)
grep('JeffStreet', cameraData$intersection, value = TRUE)
length(grep('JeffStreet', cameraData$intersection, value = TRUE))

library(stringr)
nchar('Hendrik Geiger')
substr('Hendrik Geiger',1,7)
paste('Hendrik', 'Geiger')
paste0('Hendrik', 'Geiger')
str_trim('Hendrik        ')


## BEST PRACTICE
#  all lower case
#  Descriptive
#  Not duplicated
#  No underscores, dots or white spaces

## varibales with character values
#  should be factor variables
#  should be descriptive (TRUE VS FALSE or male VS female instead of 0 VS 1)