## THE BASE PLOTTING SYSTEM IN R

## Core plotting Engine:
## graphics: contains plotting functions (plot, hist, boxplot etc)
## grDevices: contains code implementing graphics (X11, PDF, PstScript, PNG etc.)

## Lattice Plotting Engine:
## lattice: contains code producing Trellis graphics (xyplot, bwplot, levelplot) <- Depends on core plotting System
## grid: implements diff. graphing system independent of base <- builds lattice, and is rarely called directly

## What to consider when making a plot:
## - How will this plot be used?
##      - Is the plot for viewing temporarily?
##      - Will it be presented in a web-browser?
##      - Will it eventually end up in a paper?
##      - Will it be used in a presentation?
## - Will the plot show a large amount of data?
## - Will the plot be resized dynamically?
## - Deccide what graphics system you want to use
##      - Base: piecemeal construction through function calls
##      - Lattice: created in single function call, specified all at once
##      - ggplot2: combines concepts from both previous, implemented in own way

## Base Graphics System:
## - 2 Phases:
##      - Initializes <- plot(x, y) // hist(x)
##      - Annotate <- Set parameters and design space around plot

## Important parameters for base plotting system:
## - pch: ploting symbol (default: open circle)
## - lty: line type (default: solid line)
## - lwd: line width (example: 4)
## - col: plotting color (example: 'green', #23456, colors[12])
## - xlab: label of the x-axis
## - ylab: label of the y-axis

## par function specifies global graphics parameters which affect all session plots
## - las: orientation of the axis labels
## - bg: background color
## - mar: margin size
## - oma: outer margin size (default: 0)
## - mfrow: number of plots per row, column
## - mfcol: number of plots per column, row

library(datasets)
hist(airquality$Ozone) ## draws new plot
with(airquality, plot(Wind, Ozone)) ## draw new plot
boxplot(Ozone ~ Month, airquality, xlab = 'Month', ylab = 'Ozone (ppb)')

## Default values for global graphics parameters:
par('bg') ## 'white'
par('mar') ## c(5.1, 4.1, 4.1, 2.1)
par('mfrow') ##  c(1, 1)


