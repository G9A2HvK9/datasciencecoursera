        #Johns Hopkins Data Science Track Coursera
        #Course: 2
        #Week: 3
        #
        #User: g9a2hvk9
        #email: g9a2hvk9@gmail.com
        #github: github.com/g9a2hvk9
        #
        #
        #LOOP FUNCTIONS - APPLY
        #
        # #apply <- function (X, MARGIN, FUN, ...) 
        # {
        #         FUN <- match.fun(FUN)
        #         dl <- length(dim(X))
        #         if (!dl) 
        #                 stop("dim(X) must have a positive length")
        #         if (is.object(X)) 
        #                 X <- if (dl == 2L) 
        #                         as.matrix(X)
        #         else as.array(X)
        #         d <- dim(X)
        #         dn <- dimnames(X)
        #         ds <- seq_len(dl)
        #         if (is.character(MARGIN)) {
        #                 if (is.null(dnn <- names(dn))) 
        #                         stop("'X' must have named dimnames")
        #                 MARGIN <- match(MARGIN, dnn)
        #                 if (anyNA(MARGIN)) 
        #                         stop("not all elements of 'MARGIN' are names of dimensions")
        #         }
        #         s.call <- ds[-MARGIN]
        #         s.ans <- ds[MARGIN]
        #         d.call <- d[-MARGIN]
        #         d.ans <- d[MARGIN]
        #         dn.call <- dn[-MARGIN]
        #         dn.ans <- dn[MARGIN]
        #         d2 <- prod(d.ans)
        #         if (d2 == 0L) {
        #                 newX <- array(vector(typeof(X), 1L), dim = c(prod(d.call), 
        #                                                              1L))
        #                 ans <- forceAndCall(1, FUN, if (length(d.call) < 2L) newX[, 
        #                                                                           1] else array(newX[, 1L], d.call, dn.call), ...)
        #                 return(if (is.null(ans)) ans else if (length(d.ans) < 
        #                                                       2L) ans[1L][-1L] else array(ans, d.ans, dn.ans))
        #         }
        #         newX <- aperm(X, c(s.call, s.ans))
        #         dim(newX) <- c(prod(d.call), d2)
        #         ans <- vector("list", d2)
        #         if (length(d.call) < 2L) {
        #                 if (length(dn.call)) 
        #                         dimnames(newX) <- c(dn.call, list(NULL))
        #                 for (i in 1L:d2) {
        #                         tmp <- forceAndCall(1, FUN, newX[, i], ...)
        #                         if (!is.null(tmp)) 
        #                                 ans[[i]] <- tmp
        #                 }
        #         }
        #         else for (i in 1L:d2) {
        #                 tmp <- forceAndCall(1, FUN, array(newX[, i], d.call, 
        #                                                   dn.call), ...)
        #                 if (!is.null(tmp)) 
        #                         ans[[i]] <- tmp
        #         }
        #         ans.list <- is.recursive(ans[[1L]])
        #         l.ans <- length(ans[[1L]])
        #         ans.names <- names(ans[[1L]])
        #         if (!ans.list) 
        #                 ans.list <- any(lengths(ans) != l.ans)
        #         if (!ans.list && length(ans.names)) {
        #                 all.same <- vapply(ans, function(x) identical(names(x), 
        #                                                               ans.names), NA)
        #                 if (!all(all.same)) 
        #                         ans.names <- NULL
        #         }
        #         len.a <- if (ans.list) 
        #                 d2
        #         else length(ans <- unlist(ans, recursive = FALSE))
        #         if (length(MARGIN) == 1L && len.a == d2) {
        #                 names(ans) <- if (length(dn.ans[[1L]])) 
        #                         dn.ans[[1L]]
        #                 ans
        #         }
        #         else if (len.a == d2) 
        #                 array(ans, d.ans, dn.ans)
        #         else if (len.a && len.a%%d2 == 0L) {
        #                 if (is.null(dn.ans)) 
        #                         dn.ans <- vector(mode = "list", length(d.ans))
        #                 dn1 <- list(ans.names)
        #                 if (length(dn.call) && !is.null(n1 <- names(dn <- dn.call[1])) && 
        #                     nzchar(n1) && length(ans.names) == length(dn[[1]])) 
        #                         names(dn1) <- n1
        #                 dn.ans <- c(dn1, dn.ans)
        #                 array(ans, c(len.a%/%d2, d.ans), if (!is.null(names(dn.ans)) || 
        #                                                      !all(vapply(dn.ans, is.null, NA))) 
        #                         dn.ans)
        #         }
        #         else ans
        # }
        # <bytecode: 0x7f84242cfc90>
        #         <environment: namespace:base>
        
        # creates matrix of with 200 values of dim[20,10]
        # matrix notation: [row, col]
        x <- matrix(rnorm(200), 20, 10)
        
        # apply(x, 2, mean) returns the mean values of the second dimension dim[__, 10] of matrix x
        # it returns a single-dimension vector of length 10 containing the mean of each column of matrix x
        apply(x, 2, mean)
        
        # apply(x, 1, sum) returns the sum values of the first dimension dim[20, __] of matrix x
        # it returns a single-dimension vector of length 20 containing the sum of each row of matrix x
        apply(x, 1, sum)
        
        # apply(x, 1, quantile, ...) returns the desired quantiles of the first dimension dim[20, __] of matrix x
        # the necessary args for the quantile function are given in the ... parameter
        # given apply(x, 1, quantile probs = c(0.25, 0.75))
        # it returns a matrix of dimension dim[2, 20] giving the 25% and 75% quantiles for each row of matrix x
        apply(x, 1, quantile, probs = c(0.25, 0.75))
        
        # creates 10 matrices of dimensions dim[2, 2] which are stacked in the 3rd dimension (z).
        # The array therefore holds 40 values with dimensions dim[2, 2, 10]
        a <- array(rnorm(2 * 2 * 10), c(2, 2, 10))
        
        # apply(a, c(1, 2), mean) returns the average matrix of all matrices in the vector with dim[2, 2]
        # each dimension contains the mean value of all 10 values in the 3rd dimension of that array
        apply(a, c(1, 2), mean)
        
        # rowmeans(a, dims = 2) will return the same value as apply(a, c(1, 2), mean) and will iterate over
        # the 3rd dimension of the array to return the means of dimensions 1 and 2
        rowMeans(a, dims = 2)