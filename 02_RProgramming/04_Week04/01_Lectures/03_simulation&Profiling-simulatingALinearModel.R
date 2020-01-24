#Johns Hopkins Data Science Track Coursera
#Course: 2
#Week: 4
#
#User: g9a2hvk9
#email: g9a2hvk9@gmail.com
#github: github.com/g9a2hvk9
#
#
#SIMULATION & PROFILING - SIMULATING A LINEAR MODEL
#
# sets seed with integer 20
set.seed(20)

# stores random 100 values from normal distribution with mean 0 and st.dev. 1 in variable x
x <- rnorm(100)

# stores random 100 values from normal distribution with mean 0 and st.dev. 2 in variable e (standard error)
e <- rnorm(100, 0, 2)

# stores linear model y = a + bx + e
y <- 0.5 + 2 * x + e

# prints summary of linear model y
summary(y)

# plots graph of linear model y
plot(x, y)

# sets seed with integer 10
set.seed(10)

# stores 100 random values from binomial distribution of size 1 and probability 0.5 in variable x
x <- rbinom(100, 1, 0.5)

# stores 100 random values from norma distribution with mean 0 and st.dev. 2 in variable e (stadard error)
e <- rnorm(100, 0, 2)

# stores linear model y = a + bx + e
y <- 0.5 + 2 * x + e

# prints summary of linear model y
summary(y)

# plots graph of linear model y
plot(x, y)


# sets seed with integer 1
set.seed(1)

# stores random 100 values from normal distribution with mean 0 and st.dev. 1 in variable x
x <- rnorm(100)

# creates linear predictor model log.mu = a + bx
log.mu <- 0.5 + 0.3 * x

# creates poisson model y ~ Poisson(mu)
y <- rpois(100, exp(log.mu))

# prints summary of y
summary(y)

# plots graph of poisson model y
plot(x, y)

