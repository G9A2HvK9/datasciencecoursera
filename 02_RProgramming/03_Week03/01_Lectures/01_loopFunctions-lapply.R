#Johns Hopkins Data Science Track Coursera
#Course: 2
#Week: 2
#
#User: g9a2hvk9
#email: g9a2hvk9@gmail.com
#github: github.com/g9a2hvk9
#
#
#LOOP FUNCTIONS - LAPPLY
#
#lapply <- function (X, FUN, ...) 
# {
#         FUN <- match.fun(FUN)
#         if (!is.vector(X) || is.object(X)) 
#                 X <- as.list(X)
#         .Internal(lapply(X, FUN))
# }
# <bytecode: 0x7f8424049190>
#         <environment: namespace:base>

# lapply(x, mean) returns list of means of respective vectors in list x
x <- list(a = 1:5, b = rnorm(10))
lapply(x, mean)

# lapply(x, mean) returns list of means of respective vectors in list x
x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean)

# lapply(x, runif) creates list of 4 vectors of random integers between 0 and 1 by iterating runif() over vector(1:4)
x <- 1:4
lapply(x, runif)

# lapply(x, runif) creates list of 4 vectors of random integers between 0 and 10 by iterating runif() over vector(1:4)
# arguments min and max of FUN "runif()" passed to ... of lapply(x, FUN, ...)
x <- 1:4
lapply(x, runif, min = 0, max = 10)

# Creates 2 matrices of dim [2, 2] and dim [3, 2]
# lapply(x, function(elt) elt[, 1] returns list of first column of respective matrix by using anonymous function
# matrix notation: [row, col]
x <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2))
lapply(x, function(matrix) matrix[, 1])

# lapply(x, mean) returns list of means with length 4
x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean)

# sapply returns vector of means with length 4
# this is the simpler notation
sapply(x, mean)

# calling mean(x) on list returns error because list is not numeric or logical
mean(x)