## THE LATTICE PLOTTING SYSTEM

## Implemented in the Lattice Package 
## Designed to make high.density plots
## Whole graph defined in a single function call
## Returns objects as class 'trellis'
## To print to graphics device, use print()
## Plot objects created in lattice can theoretically be stored

## lattice: creates Trellis graphics
##      - xyplot()
##      - bwplot()
##      - levelplot()

## grid: lattice builds on top of grid
## grid seldomly called directly

## Most important plotting functions in Lattice
##      - xyplot: main function for scatterplots
##      - bwplot: box-and-whiskers plots
##      - histogram: histograms
##      - stipplot: like a boxplot but with actual points
##      - dotplot: plots dots on 'violin strings'
##      - splom: scatterplot matrix; akin to 'pairs' in base
##      - levelplot / countourplot: plots image data

## Lattice functions will take a formula as their first arg
## 'I want to look at the scatterplot of y and x for every level of f * g 
## xyplot(y ~ x | f * g. data)

## user the 'formula' notation
## left side of ~ is y-axis // right side of ~ is x-axis
## f and g are conditioning variables, seperated by |
## f and g ar optional. The * denotes the relationship
## second arg. is the data for the plot
## There are defaults for unused arguments

library(lattice)
library(datasets)

## Simple Scatterplot
xyplot(Ozone ~ Wind, data = airquality)

## Convert 'Month' to a factor variable
airquality2 <- transform(airquality, Month = factor(Month))
xyplot(Ozone ~ Wind | Month, data = airquality2, layout = c(5,1))

## store and print lattice object
xyplot(Ozone ~ Wind, data = airquality) ## auto-prints to screen device
p <- xyplot(Ozone ~ Wind, data = airquality) ## does not auto-print to screen device
print(p) ## explicit command prints plot