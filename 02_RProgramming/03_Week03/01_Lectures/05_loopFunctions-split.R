# Johns Hopkins Data Science Track Coursera
# Course: 2
# Week: 3
#
# User: g9a2hvk9
# email: g9a2hvk9@gmail.com
# github: github.com/g9a2hvk9
#
#
# LOOP FUNCTIONS - TAPPLY

# split <- function (x, f, drop = FALSE, ...) 
#         UseMethod("split")
# <bytecode: 0x7f842317ec00>
#         <environment: namespace:base>

# creates vector, x, of lenth 30, consisting of 10 random normally distributed variables,
# 10 random uniformly distributed variables and 10 random normally distributed variables (all with mean 1)
x <- c(rnorm(10), runif(10), rnorm(10, 1))

# creates factor variable, f, of length 30, consisting of 3 levels with 10 integers each
f <- gl(3, 10)

# returns a list with 3 objects, each object a vector length 10. The function splits vector x
# into 3 elements of 10, and attributes the 10 elements to the 3 respective factors
split(x, f)

# returns a list of the respective mean value of the 3 vectors creates previously with the split function
# by running lapply over the result of the split
lapply(split(x, f), mean)

# loads library of datasets and displays the head info of the airquality dataset
library(datasets)
head(airquality)

# splits airquality dataset by the month variable, by applying subset airquality$month as factor
# and stores the result in variable s
s <- split(airquality, airquality$Month)

# returns means of the individual columns of the objects of list s
# accordingly it returns the means of the various columns, according to month
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind", "Temp")]))

# returns same result as lapply() function previously but simplified to a matrix
# will output matrix of dim[3, 5] with means for each vector grouped by month
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind", "Temp")]))

# returns same result as lapply() function previously but simplified to a matrix
# will output matrix of dim[3, 5] with means for each vector grouped by month
# also removes NA values by setting ra.rm to TRUE
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind", "Temp")], na.rm = TRUE))

# creates variable x and stores 10 random, normally distributed integers
x <- rnorm(10)

# creates factor variable of length 10, with 2 levels of length 5
f1 <- gl(2, 5)

# creates factor variable of length 10, with 5 levels of length 2
f2 <- gl(5, 2)

# combines f1 and f2 to create factor variable of length 10 with 10 levels
interaction(f1, f2)

# splits variable x, of length 10, into 10 segments according to the combined factor variable f1, f2
# the interaction() function does not have to be invoked explicitly but is applied to split
split(x, list(f1, f2))

# gives summary of returned result
str(split(x, list(f1, f2)))

# gives summary of returned result but with the drop argument set to TRUE
str(split(x, list(f1, f2), drop = TRUE))