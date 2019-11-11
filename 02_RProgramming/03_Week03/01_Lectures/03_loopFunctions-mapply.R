# Johns Hopkins Data Science Track Coursera
# Course: 2
# Week: 3
#
# User: g9a2hvk9
# email: g9a2hvk9@gmail.com
# github: github.com/g9a2hvk9
#
#
# LOOP FUNCTIONS - MAPPLY
#
# mapply <- function (FUN, ..., MoreArgs = NULL, SIMPLIFY = TRUE, USE.NAMES = TRUE) 
# {
#         FUN <- match.fun(FUN)
#         dots <- list(...)
#         answer <- .Internal(mapply(FUN, dots, MoreArgs))
#         if (USE.NAMES && length(dots)) {
#                 if (is.null(names1 <- names(dots[[1L]])) && is.character(dots[[1L]])) 
#                         names(answer) <- dots[[1L]]
#                 else if (!is.null(names1)) 
#                         names(answer) <- names1
#         }
#         if (!isFALSE(SIMPLIFY) && length(answer)) 
#                 simplify2array(answer, higher = (SIMPLIFY == "array"))
#         else answer
# }
# <bytecode: 0x7f8423628800>
#         <environment: namespace:base>

# creates list list(1, 1, 1, 1, 2, 2, 2, 3, 3, 4) by using the rep() function
list(rep(1, 4), rep(2, 3), rep(3, 2), rep(4, 1))

# mapply(rep, 1:4, 4:1) creates the same list by passing the 
# vectors c(1:4) and c(4:1) to the rep() as arguments 4 consecutive times
mapply(rep, 1:4, 4:1)

# creates function noise() which creates random integers based on normal distribution
noise <- function(n, mean, sd){
        rnorm(n, mean, sd)
}

# noise(5, 1, 2) returns vector of 5 normaly distrubeted integers where the normal distribution complies with
# n = 1, mean = 5 and standard deviation = 2
noise(5, 1, 2)

# noise(1:5, 1:5, 2) returns vector of 5 normally distributed integers where the normal distribution of each element 1:5 respectievly complies with
# n = 1:5, mean = 1:5, standard deviation = 2
noise(1:5, 1:5, 2)

# mapply(noise, 1:5, 1:5, 2) returns 5 vectors of increasing length (1:5) where all inetegers in each vector 1:5 respectively comply with
# n = 1:5, m = 1:5, standard deviation = 2
mapply(noise, 1:5, 1:5, 2)

# in effect, mapply(noise, 1:5, 1:5, 2), returns the same structure as result as typing out
# list(noise(1, 1, 2), noise(2, 2, 2), noise(3, 3, 2), noise(4, 4, 2), noise(5, 5, 2))
list(noise(1, 1, 2), noise(2, 2, 2), noise(3, 3, 2), noise(4, 4, 2), noise(5, 5, 2))