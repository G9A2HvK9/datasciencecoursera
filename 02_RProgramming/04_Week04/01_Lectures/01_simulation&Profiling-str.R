#Johns Hopkins Data Science Track Coursera
#Course: 2
#Week: 2
#
#User: g9a2hvk9
#email: g9a2hvk9@gmail.com
#github: github.com/g9a2hvk9
#
#
#SIMULATION & PROFILING - STR FUNCTION
#
# str <- function (object, ...) 
# UseMethod("str")
# <bytecode: 0x7fa6b1532f18>
#         <environment: namespace:utils>

# returns summary of function arguments of lm() function
str(lm)

# returns summary of function arguments of ls() function
str(ls)

# creates 100 random normally distributed integers with mean 2 and standard deviation 4
# stores the result in variable x
x <- rnorm(100, 2, 4)

# returns summary of x, including min, max, quantiles median and mean
summary(x)

# returns consolidated one-line information about internal structure of x
# including vector type, number of elements and first list elements
str(x)

# creates factor variable of 10 levels, each repeated 40 times
# stores the result in variable f
f <- gl(10, 40)


# returns summary of f, detailing the number of items at each level
summary(f)

# returns consolidated one-line information about internal structure of f
# including variable type (factor), number of levels and first levels and elements
str(f)

# loads datasets library
library(datasets)

# returns first rows of air quality dataset for purpose of initial viewing
head(airquality)

# returns consolidated information about internal structure of airquality dataset
# including type of object (data.frame), number of observations and number of variables in each observation
# additionally details the internal structure of all observation lists in turn and returns first couple values
str(airquality)

# creates matrix of dim(10, 10) and fills it with 100 normally distributed, random values
# stores the result in variable m
m <- matrix(rnorm(100), 10, 10)

# returns consolidated information about internal structure of m
# details the type of data (numerical) and size of dimensions [1:10, 1:10]
# additionally returns list of first couple elements in first column
str(m)

# creates list from airquality dataset by calling the split function with factor of month
# stores the result in variable s
s <- split(airquality, airquality$Month)

# returns consolidated information about internal structure of s
# details the type of object (list) and details number of nested objects in list
# gives internal structure for each nested object, including type of data and number of observations
str(s)