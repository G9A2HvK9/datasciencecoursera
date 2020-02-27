## Most common functions in base plotting system:

## - plot: makes scatterplot, or other type of plot depending on class of object
## - lines: adds lines to a plot, given x and y values. simply connects the dots
## - points: add points to a plot
## - text: add test labels to plot by specifying x and y coordinates
## - title: add annotations to the x and y axis labels, titles, subtitle, margin etc.
## - mtext: add arbitrary text to the margins of a plot
## - axis: add axis or tick labels to your plot

library(datasets)
with(airquality, plot(Wind, Ozone))
title(main = 'Ozone and Wind in New York City') ## Adds title

with(airquality, plot(Wind, Ozone, main = 'Ozone and Wind in New York City', type = 'n'))
with(subset(airquality, Month == 5), points(Wind, Ozone, col = 'blue'))
with(subset(airquality, Month != 5), points(Wind, Ozone, col = 'red'))
legend('topright', pch = 1, col = c('blue', 'red'), legend = c('May', 'Other Months'))

with(airquality, plot(Wind, Ozone, main = 'Ozone and Wind in New York City', pch = 20))
model <- lm(Ozone ~ Wind, airquality)
abline(model, lwd = 2)

par(mfrow = c(1, 2))
with(airquality, {
        plot(Wind, Ozone, main = 'Ozone and Wind')
        plot(Solar.R, Ozone, main = 'Ozone and Solar Radiation')
})

par(mfrow = c(1, 3), mar = c(4, 4, 2, 1), oma = c(0,0,2,0))
with(airquality, {
        plot(Wind, Ozone, main = 'Ozone and Wind')
        plot(Solar.R, Ozone, main = 'Ozone and Solar Radiation')
        plot(Temp, Ozone, main = 'Ozone and Temperature')
        mtext('Ozone and Weather in New York City', outer = TRUE)
})