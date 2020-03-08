## GGPLOT2 - Part 2

library(ggplot2)
str(mpg) ## factors are labelled appropriately and determined to be "factors"

qplot(displ, hwy, data = mpg)
qplot(displ, hwy, data = mpg, color = drv) ## modifies colors of pch to match "drive"
qplot(displ, hwy, data = mpg, geom = c('point', 'smooth')) ## adds points and smoothening line
qplot(hwy, data = mpg, fill = drv) ## creates histogram and maps fill according to drv

## facets are like panels in lattice -- (rows ~ columns)
qplot(displ, hwy, data = mpg, facets = .~drv) ## creates facets according to drv factor variable
qplot(hwy, data = mpg, facets = drv~., binwidth = 2) ## creates 3 histograms according to drv factor variable

## MAACS Cohort study -- not publicly available

## Qplot is simple function to make quick plots
## Analog to plot() function but has many built in features
## produces very nice graphics - essentially publication ready
## difficult to get really creative with it, because it is so standardized
