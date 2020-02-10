#data loaded in R may not be tidy
#reshaping helps put data into a tidy format
# each variable = 1 column
# each obersation = 1 row

library(reshape2)
head(mtcars)


#melting the data set
mtcars$carname <- rownames(mtcars)

carMelt <- melt(mtcars, id=c('carname', 'gear', 'cyl'), measure.vars=c('mpg', 'hp'))
head(carMelt, n=3)

cylData <- dcast(carMelt, cyl ~ variable)
cylData

cylData <- dcast(carMelt, cyl ~ variable, mean)
cylData

head(InsectSprays)
tapply(InsectSprays$count, InsectSprays$spray, sum)

#Split, Apply, Combine analysis
## split
spIns = split(InsectSprays$count, InsectSprays$spray)
spIns
## apply
sprCount = lapply(spIns, sum)
sprCount
## combine
unlist(sprCount)

## using dplyr package
library(plyr)
ddply(InsectSprays, .(spray), summarise, by=sum(count))

spraySums <- ddply(InsectSprays, .(spray), summarise, sum=ave(count, FUN=sum))
dim(spraySums)                   
