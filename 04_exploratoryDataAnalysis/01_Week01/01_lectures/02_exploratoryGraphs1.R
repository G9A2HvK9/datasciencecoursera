## Characteristics of Exploratory Graphs
## 1. Quick to make
## 2. Made in large batches
## 3. Goal is personal understanding
## 4. Axes / Legends are generally cleaned up (later)
## 5. Color / Size / Shape are primarily used for information

## Specific Example: Air Pollution in the united states
## QUESTION: Are there any counties that exceed the national standard?

## Simple Summaries of Data in one dimension:
## 1. Five Number Summary (Min, 1st Quant, Median, 3rd Quant, Max)
## 2. Boxplots
## 3. Histograms
## 4. Density Plot
## 5. Barplot

# Uploads .csv on air quality from EPA
pollution <- read.csv('./data/avgpm25.csv', colClasses = c('numeric', 'character', 'factor', 'numeric', 'numeric'))
## Five number summary
summary(pollution$pm25)
## Boxplot
boxplot(pollution$pm25, col = 'blue')
abline(h = 12)
## Histogram
hist(pollution$pm25, col = 'green', breaks = 50)
rug(pollution$pm25)
abline(v = 12, lwd = 2)
abline(v = median(pollution$pm25), col = 'magenta', lwd = 4)
## Barplot
barplot(table(pollution$region), col = 'wheat', main = 'number of readings in each region')
