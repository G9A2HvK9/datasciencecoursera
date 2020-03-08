## QUESTION1: Under the lattice graphics system, what do the primary plotting functions like xyplot() and bwplot() return?
## ANSWER: An object of class 'TRELLIS'

## QUESTION2: What is produced by the following code?
library(nlme)
library(lattice)
xyplot(weight ~ Time | Diet, BodyWeight)
## ANSWER: A set of 3 panels showing the relationship between weight and time for each diet

## QUESTION3: Annotation of plots in any plotting system involves adding points, lines, or text to the plot, in addition to customizing axis labels or adding titles. Different plotting systems have different sets of functions for annotating plots in this way.
##            Which of the following functions can be used to annotate the panels in a multi-panel lattice plot?
## ANSWER: panel.lmline()

## QUESTION4: The following code does NOT result in a plot appearing on the screen device.
library(lattice)
library(datasets)
data(airquality)
p <- xyplot(Ozone ~ Wind | factor(Month), data = airquality)
##            Which of the following is an explanation for why no plot appears?
## ANSWER: The object 'p' has not yet been printed using the approproate print() method

## QUESTION5: In the lattice system, which of the following functions can be used to finely control the appearance of all lattice plots?
## ANSWER: trellis.par.set()

## QUESTION6: What is ggplot2 an implementation of?
## ANSWER: The grammar of graphics developed by Leland Wilkinson

## QUESTION7: Load the `airquality' dataset form the datasets package in R
library(datasets)
data(airquality)
## I am interested in examining how the relationship between ozone and wind speed varies across each month. What would be the appropriate code to visualize that using ggplot2?
## ANSWER:
airquality = transform(airquality, Month = factor(Month))
qplot(Wind, Ozone, data = airquality, facets = . ~ Month)

## QUESTION8: What is a geom in the ggplot2 system?
## ANSWER: A plotting object like a point, line or shape

## QUESTION9: When I run the following code I get an error
library(ggplot2)
library(ggplot2movies)
g <- ggplot(movies, aes(votes, rating))
print(g)
## ANSWER: ggplot does not yet know what type of layer to add to the plot

## QUESTION10: The following code creates a scatterplot of 'votes' and 'rating' from the movies dataset in the ggplot2 package. After loading the ggplot2 package with the library() function, I can run
qplot(votes, rating, data = movies)
## How can I modify the the code above to add a smoother to the scatterplot?
qplot(votes, rating, data = movies) + geom_smooth()
