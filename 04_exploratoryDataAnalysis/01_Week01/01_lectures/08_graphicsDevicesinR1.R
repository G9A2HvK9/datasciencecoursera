## GRAPHICS DEVICES IN R (PART 1)

## A graphics device is something where you can make a plot appear:
## - A window on a computer / screen
## - A PDF File
## - A PNG File
## - A Vector Graphic (ex. SVG)

## In R, you have to explicitly send a plot to your desired graphics device
## It is most commonly sent to the screen device
## - On MAC you launch this with quartz()
## - On Windows you launch this with windows()
## - On Unix / Linux you launch this with x11()

## List of all devices can be found with: ?Devices
?Devices

## Quick visualization happens on the screen device
## - plot
## - xyplot
## - qplpot

## File Devices are more well suited for including plots in presentations, documents etc.

## Most common way of plotting is to call one of the common functions, then annotate:
library(datasets)
with(faithful, plot(eruptions, waiting))
title(main = 'Old Faithful Geysir Data')

## To export plots to a file device, the common procedure is to open the graphics device first:
## pdf(file = 'myplot.pdf')
with(faithful, plot(eruptions, waiting))
title(main = 'Old Faithful Geysir Data')
dev.off()