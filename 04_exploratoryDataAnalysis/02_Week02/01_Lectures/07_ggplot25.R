## GGPLOT2 - Part 5

## Axis Limits -- this plot shows an outlier:
testdat <- data.frame(x = 1:100, y = rnorm(100))
testdat[50, 2] <- 100 ## Outlier!
plot(testdat$x, testdat$y, type = 'l') ## the bulk of the data becomes hard to read properly

## Axis Limits -- this plot does not show the outlier:
plot(testdat$x, testdat$y, type = 'l', ylim = c(-3, 3)) ## the outlier is excluded. The rest of the graph becomes easier to read

## Stores data in plot object 'g'
g <- ggplot(testdat, aes(x = x, y = y))

## Adds geom modifier to g, to plot the graph
g + geom_line() ## outlier is included. Graph is hard to read properly

## sets ylim in similar fashion to base system
g + geom_line() + ylim(-3, 3) ## the outlier is EXCLUDED from the data completely

## sets ylim properly using coord_cartesian()
g + geom_line() + coord_cartesian(ylim = c(-3, 3)) ## outlier runs off graph but data becomes more readable