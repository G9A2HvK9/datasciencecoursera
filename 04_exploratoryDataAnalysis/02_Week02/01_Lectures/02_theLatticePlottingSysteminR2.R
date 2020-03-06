## THE LATTICE PLOTTING SYSTEM IN R 2

## - Lattice has a number of default panel functiosn
## - Each panel receives x,y coordinates of the data points in their panel
## - Constructed witha single function call to lattice function
## - Margins and spacing are automatically handled
## - Ideal for creating conditioning plots where you examine one plot under various conditions
## - Panel plots can be customized through panel functions

library(lattice)

set.seed(10)
x <- rnorm(100)
f <- rep(0:1, each = 50)
y <- x+f-f*x+rnorm(100, sd = 0.5)
f <- factor(f, labels = c('Group 1', 'Group 2'))
xyplot(y ~ x | f, layout = c(2, 1)) ## plot with two panels

## Custom panel function
xyplot(y ~ x | f, panel = function(x, y, ...){ ## ... denotes additional arguments
        panel.xyplot(x, y, ...) ## first call the fefault panel function for 'xyplot'
        panel.abline(h = median(y), lty = 2) ## adds horizontal line at median
})

xyplot(y ~ x | f, panel = function(x, y, ...){
        panel.xyplot(x, y, ...) ## calls default panel function
        panel.lmline(x, y, col = 2) ## adds line of best fit
})

## Can't use annotation functions from base plotting system in lattice system
## Generally functions cannot be mixed between plotting systems

## Many Panel Lattice Plot: Example from MAACS
## Mouse Allergen and Asthma Study (MAACS)

## One or two function calls allow you to visualize all 175 data points of the study
## Compact, panel based visualisation