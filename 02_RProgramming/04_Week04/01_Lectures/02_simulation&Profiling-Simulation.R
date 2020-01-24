#Johns Hopkins Data Science Track Coursera
#Course: 2
#Week: 4
#
#User: g9a2hvk9
#email: g9a2hvk9@gmail.com
#github: github.com/g9a2hvk9
#
#
#SIMULATION & PROFILING - SIMULATION
#
# dnorm <- function (x, mean = 0, sd = 1, log = FALSE) 
#         .Call(C_dnorm, x, mean, sd, log)
# <bytecode: 0x7ff3c7ac1168>
#         <environment: namespace:stats>
#
# pnorm <- function (q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE) 
# .Call(C_pnorm, q, mean, sd, lower.tail, log.p)
# <bytecode: 0x7ff3c8a84d90>
#         <environment: namespace:stats>
#
# qnorm <- function (p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE) 
#         .Call(C_qnorm, p, mean, sd, lower.tail, log.p)
# <bytecode: 0x7ff3c515e8b0>
#         <environment: namespace:stats>
#
# rnorm <- function (n, mean = 0, sd = 1) 
#         .Call(C_rnorm, n, mean, sd)
# <bytecode: 0x7ff3c8cd0d58>
#         <environment: namespace:stats>
#
# generates 10 random integers from normal distribution with  mean 20 and st.dev 2
x <- rnorm(10)
x

# generates 10 random integers from normal distribution with  mean 20 and st.dev 2
x <- rnorm(10, 20, 2)
x

# returns summary of vector x
summary(x)

# sets the seed for the random number generator to be able to reproduce results
set.seed(1)

# generates various vectors of 5 random numbers, but vectors repeat after setting the seed
set.seed(1)
rnorm(5)
rnorm(5)
rnorm(5)
rnorm(5)

set.seed(1)
rnorm(5)
rnorm(5)
rnorm(5)
rnorm(5)

# generates 10 random integers from poisson distribution with rate 1
rpois(10, 1)

# generates 10 random integers from poisson distribution with rate 2
rpois(10, 2)

# generates 10 random integers from poisson distribution with rate 20
rpois(10, 20)

# calculates cumulative distribution of x <= 2 in poisson dtsiribution with rate 2
ppois(2, 2)

# calculates cumulative distribution of x <= 4 in poisson dtsiribution with rate 2
ppois(4, 2)

# calculates cumulative distribution of x <= 6 in poisson dtsiribution with rate 2
ppois(6, 2)
