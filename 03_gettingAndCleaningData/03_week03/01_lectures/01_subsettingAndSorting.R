# Once data is loaded, you want to clean it to conform to tidy data set rules
set.seed(13435)
X <- data.frame('var1' = sample(1:5), 'var2' = sample(6:10), 'var3' = sample(11:15))

# scrambles up variables and introduces NA
X <- X[sample(1:5),]; X$var2[c(1,3)] = NA

X

# subset single column
X[,1]
X[, "var1"]

# subset 2 rows from single column
X[1:2, 'var2']

#subset using logical statements (AND statement)
X[(X$var1 <= 3 & X$var3 > 11), ]

#subset using logical statements (OR statement)
X[(X$var1 <= 3 | X$var3 > 15), ]

#subsetting NA values will not produce the actual rows
#using "which" command will produce indices where statement applies
X[which(X$var2 > 8),]

#sort column 1
sort(X$var1)

#sort column 1 in decreasing order
sort(X$var1, decreasing = TRUE)

#sort column 2, putting NAs last
sort(X$var2, na.last = TRUE)

#order entire data frame by variable 1
X[order(X$var1), ]

#order by multiple variablaes
X[order(X$var1, X$var3), ]

#perform same commands using plyr package
library(plyr)
arrange(X, var1)
arrange(X, desc(var1))

#add column to a data frame
X$var4 <- rnorm(5)
X

#perform same operation via cbind - store in df Y
Y <- cbind(X, rnorm(5))
Y

