## GGPLOT2 - Part 4

## Adding smoothers / statistical overlays
## 1. g <- ggplot(data) : Create plot object by feeding it data
## 2. p <- g + geom_point() : Add geometric points to the plot object to make it visible
## 3. f <- p + gemo_smooth(method = 'lm') : Add gemoetric smoothener. Determine method
## 4. h <- f + facet_grid(.~bmicat) : Adds panels as facet layer

## Labels: xlab(), ylab(), labs(), ggtitle()
## Each of the 'geom' functions has options to modify
## You can set certain params globally using the theme() function
## Two built-in themes:
##      - theme_gray
##      - theme_bw

## args of geom_point function:
## - color: sets color // can be set along factor variable
## - size: sets size
## - alpha: sets transparency

## Modifying labels with the 'labs' function
## - x: x label
## - y: y label
## - title: main title

## Modiyfing the smoother with the geom_smooth() function
## - size: sets size
## - linetype: sets line type
## - method: sets method of best fit
## - se: (BOOLEAN) Confidence interval on/off

## Setting the theme using theme() function
## - theme_bw(): black & white theme (for publication)
## - theme_gray(): standard theme
## - base_family: sets font family
