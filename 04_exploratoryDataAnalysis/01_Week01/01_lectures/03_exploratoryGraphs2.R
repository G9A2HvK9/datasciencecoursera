## Two dimensional summaries of data:
## 1. Multiple / overlayed 1-D plots (Lattice / ggplot2)
## 2. Scatterplots
## 3. Smooth Scatterplots

## Summaries greater than 2 dimensions
## 1. Overlayed / multiple 2-D plots = coplots
## 2. Color, size, shape to add dimensions
## 3. Spinning plots
## 4. Actual 3-D plots (but less useful)


pollution <- read.csv('./data/avgpm25.csv', colClasses = c('numeric', 'character', 'factor', 'numeric', 'numeric'))


## boxplot with 2 dimensions
boxplot(pm25 ~ region, data = pollution, col = 'red')
abline(h = 12)

## histogram with 2 dimensions
par(mfrow = c(2, 1), mar = c(4, 4, 2, 1))
hist(subset(pollution, region == 'east')$pm25, col = 'green')
hist(subset(pollution, region =='west')$pm25, col = 'green')

## scatterplot with 3 dimensions
with(pollution, plot(latitude, pm25, col = region))
abline(h = 12, lwd = 2, lty = 2)

## multiple scatterplots
par(mfrow = c(2, 1), mar = c(5, 4, 2, 1))
with(subset(pollution, region == 'east'), plot(latitude, pm25, main = "East"))
with(subset(pollution, region == 'west'), plot(latitude, pm25, main = "West"))
