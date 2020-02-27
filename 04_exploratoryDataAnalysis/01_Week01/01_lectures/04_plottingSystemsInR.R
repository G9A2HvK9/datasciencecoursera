## Base Plotting System:
## Artist's Palette model <- start with blank canvas and go from there
## Starts with plot function -> use annotation functions to add detail / information
## + Nice and intuitive
## - Impossible to reverse (you need to plan ahead)
## - Difficult to 'translate' plots to other people
## - A plot is just a series of R commands

library(datasets)
data(cars)
with(cars, plot(speed, dist))

## The Lattice System (Lattice Package):
## Plots are created with single function, not pieced together
## Most common functions are xyplot, bwplot
## Most useful for 'conditioning plots' <- how x changes with y over z
## Margins etc. are automatically placed
## Good for putting many plots on a page easily
## - can be awkward to specify an entire plot
## - difficult to annotate anything after the fact

library(lattice)
state <- data.frame(state.x77, region = state.region)
xyplot(Life.Exp ~ Income | region, data = state, layout = c(4, 1))

## The ggplot System (ggplot2 package):
## Splits the difference between base and lattice
## Automatically deals with spacing, text, titles etc.
## Allows you to annotate or add to a plot easily
## Similar to lattice in some ways, but easier to use and more intuitive
## Default mode makes many choices for you

library(ggplot2)
data(mpg)
qplot(displ, hwy, data = mpg)
