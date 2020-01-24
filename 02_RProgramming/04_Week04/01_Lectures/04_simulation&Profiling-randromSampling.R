#Johns Hopkins Data Science Track Coursera
#Course: 2
#Week: 4
#
#User: g9a2hvk9
#email: g9a2hvk9@gmail.com
#github: github.com/g9a2hvk9
#
#
#SIMULATION & PROFILING - RANDOM SAMPLING
#
# ample <- function (x, size, replace = FALSE, prob = NULL) 
# {
#         if (length(x) == 1L && is.numeric(x) && is.finite(x) && x >= 
#             1) {
#                 if (missing(size)) 
#                         size <- x
#                 sample.int(x, size, replace, prob)
#         }
#         else {
#                 if (missing(size)) 
#                         size <- length(x)
#                 x[sample.int(length(x), size, replace, prob)]
#         }
# }
# <bytecode: 0x7ff3c9add578>
#         <environment: namespace:base>

# sets seed with value 1
set.seed(1)

# draws sample of 4 random values from vector 1:10, twice
sample(1:10, 4)
sample(1:10, 4)

# draws sample of 5 random letters from set "letters"
sample(letters, 5)

# draws random sample of all values in vector 1:10 - in effect, it is a permutation
sample(1:10)

# draws random sample of all values in vector 1:10 but replaces values as they are sampled from vector
sample(1:10, replace = TRUE)

