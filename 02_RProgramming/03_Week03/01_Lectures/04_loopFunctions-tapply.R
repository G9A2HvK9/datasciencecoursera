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
#
# apply <- function (X, INDEX, FUN = NULL, ..., default = NA, simplify = TRUE) 
# {
#         FUN <- if (!is.null(FUN)) 
#                 match.fun(FUN)
#         if (!is.list(INDEX)) 
#                 INDEX <- list(INDEX)
#         INDEX <- lapply(INDEX, as.factor)
#         nI <- length(INDEX)
#         if (!nI) 
#                 stop("'INDEX' is of length zero")
#         if (!all(lengths(INDEX) == length(X))) 
#                 stop("arguments must have same length")
#         namelist <- lapply(INDEX, levels)
#         extent <- lengths(namelist, use.names = FALSE)
#         cumextent <- cumprod(extent)
#         if (cumextent[nI] > .Machine$integer.max) 
#                 stop("total number of levels >= 2^31")
#         storage.mode(cumextent) <- "integer"
#         ngroup <- cumextent[nI]
#         group <- as.integer(INDEX[[1L]])
#         if (nI > 1L) 
#                 for (i in 2L:nI) group <- group + cumextent[i - 1L] * 
#                 (as.integer(INDEX[[i]]) - 1L)
#         if (is.null(FUN)) 
#                 return(group)
#         levels(group) <- as.character(seq_len(ngroup))
#         class(group) <- "factor"
#         ans <- split(X, group)
#         names(ans) <- NULL
#         index <- as.logical(lengths(ans))
#         ans <- lapply(X = ans[index], FUN = FUN, ...)
#         ansmat <- array(if (simplify && all(lengths(ans) == 1L)) {
#                 ans <- unlist(ans, recursive = FALSE, use.names = FALSE)
#                 if (!is.null(ans) && is.na(default) && is.atomic(ans)) 
#                         vector(typeof(ans))
#                 else default
#         }
#         else vector("list", prod(extent)), dim = extent, dimnames = namelist)
#         if (length(ans)) {
#                 ansmat[index] <- ans
#         }
#         ansmat
# }
# <bytecode: 0x7f8423d0b950>
#         <environment: namespace:base>

# stores variable x as vector of length 30 with 10 random normally distributed integers,
# 10 random uniformly distributed integers and 10 random normally distributed integers around a mean of 1
x <- c(rnorm(10), runif(10), rnorm(10, 1))

# store variabe f as factor variable of length with 3 levels (1:3), each repeated 10 times
f <- gl(3, 10)

# applies factor variable f to the mean calculation over the vector x
# in effect it groups x into three segments (along levels of f 1:3)
# and returns the mean of x for each respective group
tapply(x, f, mean)

# the same function, without simplifying the result will return a list of means for all sub-groups
# with each element of the list representing the mean of a single sub-group
tapply(x, f, mean, simplify = FALSE)

# applies factor variable f to the range calculation over the vector x
# in effect it groups x into three segments (along levels of f 1:3)
# and returns the range of x for each respective group
tapply(x, f, range)