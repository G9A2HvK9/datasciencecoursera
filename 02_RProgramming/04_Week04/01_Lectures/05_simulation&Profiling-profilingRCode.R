#Johns Hopkins Data Science Track Coursera
#Course: 2
#Week: 4
#
#User: g9a2hvk9
#email: g9a2hvk9@gmail.com
#github: github.com/g9a2hvk9
#
#
#SIMULATION & PROFILING - PROFILING R CODE
#
# system.time <- function (expr, gcFirst = TRUE) 
# {
#         ppt <- function(y) {
#                 if (!is.na(y[4L])) 
#                         y[1L] <- y[1L] + y[4L]
#                 if (!is.na(y[5L])) 
#                         y[2L] <- y[2L] + y[5L]
#                 paste(formatC(y[1L:3L]), collapse = " ")
#         }
#         if (gcFirst) 
#                 gc(FALSE)
#         time <- proc.time()
#         on.exit(message("Timing stopped at: ", ppt(proc.time() - 
#                                                            time)))
#         expr
#         new.time <- proc.time()
#         on.exit()
#         structure(new.time - time, class = "proc_time")
# }
# <bytecode: 0x7fb8d102db98>
#         <environment: namespace:base>

# returns elapsed time > user time as system spends time reading from web
system.time(readLines('https://www.jhsph.edu'))

# creates function which intentionally performs large number of computations to return large number of stored values
hilbert <- function(n){
        i <- 1:n
        1 / outer(i - 1, i, '+')
}

# stores large  number of values as vector in variable x
x <- hilbert(1000)

# should return elapsed time < user time as svd() expression is run on multiple cores
system.time(svd(x))
