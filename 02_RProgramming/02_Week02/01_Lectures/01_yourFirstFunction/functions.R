add2 <- function (x, y) {
  x + y
}

above10 <- function(x){
  use <- x > 10
  x[use]
}

above <- function(x, y=73){
  use <- x > 10
  x[use]
}
