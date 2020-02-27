## Demonstrating the base plotting system in R

## plotting commands have a number of default parameters
x <- rnorm(100) ## creates variable storing 100 randomly distributed numbers
hist(x) ## plots histogram of x without any manual params

y <- rnorm(100) ## creates variable storing 100 randomly distributed numbers
plot(x, y) ## plots x and y on a scatterblot without any manual params

z <- rnorm(100) ## creates variable storing 100 randomly distributed numbers
plot(x, z) ## plots x and z on a scatterblot without any manual params

par(mar = c(4,4,2,2)) ## sets params (margin)
plot(x, z) ## plots x and z on a scatterblot with previosuly set params

## plots x and y on a scatterblot, using params to set the tick type differently in each example
plot(x, y, pch = 20)
plot(x, y, pch = 19)
plot(x, y, pch = 18)
plot(x, y, pch = 17)
plot(x, y, pch = 16)
plot(x, y, pch = 15)
plot(x, y, pch = 14)
plot(x, y, pch = 13)
plot(x, y, pch = 12)
plot(x, y, pch = 11)
plot(x, y, pch = 09)
plot(x, y, pch = 08)
plot(x, y, pch = 07)
plot(x, y, pch = 06)
plot(x, y, pch = 05)
plot(x, y, pch = 04)
plot(x, y, pch = 03)
plot(x, y, pch = 02)
plot(x, y, pch = 01)
plot(x, y, pch = 00)


## example(points) ## shows a number of examples of plotting symbols

text(-2, -2, 'label') ## adds a label to the plot at (-2, -2)
legend('topleft', legend = 'Data', pch = 00) ## adds legend to plot at top left, specifying the plotting symbol
fit <- lm(y ~ x) ## creates line of best fit and stores it in variable 'fit'
abline(fit, lwd = 3) ## adds 'fit' to plot, specifying thickness of the line

## generates plot from x and y variable, adds legend and line of best fit
plot(x, y, xlab = 'Weight', ylab = 'Height', main = 'Scatterplot', pch = 00)
legend('topright', legend = 'Data', pch = 00)
fit <- lm(x ~ y)
abline(fit, lwd = 3, col = 'red')

z <- rpois(100, 2) ## stores 100 random variables in 'z'

## plots x,y and x,z above each other
par(mfrow = c(2, 1), mar = c(2,2,2,2))
plot(x, y, pch = 00)
plot(x, z, pch = 02)

## sets plotting space to 2 row and 2 col. Graphs are added rows first
par(mfrow = c(2, 2))
plot(x, y)
plot(x, z)
plot(y, z)
plot(y, x)


## sets plotting space to 2 col. and 2 row Graphs are added column first
par(mfcol = c(2, 2))
plot(x, y)
plot(x, z)
plot(y, z)
plot(y, x)

x <- rnorm(100)
y <- x + rnorm(100)
g <- gl(2, 50, labels = c('male', 'female'))
str(g)
plot(x, y)

## generates plot but does not add data quite yet
plot(x, y, type = 'n')

## adds male data and female data via 'points' function
points(x[g == 'male'], y[g == 'male'], col = 'blue')
points(x[g == 'female'], y[g == 'female'], col = 'red')
