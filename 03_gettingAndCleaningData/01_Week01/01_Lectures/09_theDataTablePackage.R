library(data.table)

DF <- data.frame(x=rnorm(9), y=rep(c('a', 'b', 'c'), each = 3), z=rnorm(9))
head(DF, 3)

DT <- data.table(x=rnorm(9), y=rep(c('a', 'b', 'c'), each = 3), z = rnorm(9))
head(DT, 3)


## surfaces all data tables currently in memory with additional info
tables()


DT[2]
DT[c(2,3)]

DT[DT$y=='a', ]

DT[, list(mean(x), sum(z))]

DT[, table(y)]

## adds new column "w", which consists of all z values squared
DT[, w:=z^2]
DT

## assign DT to DT2. They are the same data table, even in memory
DT2 <- DT
head(DT2, n=3)

## changes clumn "y" on DT to be all 2s. Implicitly does the same for DT2
DT[, y:=2]
head(DT2, n=3)

## copy() creates explicit new copy of DT

## commits results of string of expressions to additional column m
## expressions are seperated by semi-colons and executes consecutively
DT[ ,m:= {tmp <- (x+z); log2(tmp+5)}]
DT

## adds additional column "a" creating boolean value for x>0
DT[, a:=x>0]

## adds additional column "b" introducing the mean of x+w depending on boolean in column "a"
## means of all x+w where x=<0 and where x>0
DT[, b:= mean(x+w), by=a]
DT

set.seed(123)
DT <- data.table(x=sample(letters[1:3], 1E5, TRUE))

## .N counts number of occurences of each factor in column x
DT[, .N, by=x]

## creates DT with three letters repeated in column x
DT <- data.table(x=rep(c('a', 'b', 'c'), each = 100), y=rnorm(300))

## column x is set to be key
setkey(DT, x)

## subsetting by key 'a' surfaces all key-value pairs
DT['a']

## 
DT1 <- data.table(x=c('a', 'a', 'b', 'dt1'), y=1:4)
DT2 <- data.table(x=c('a', 'b', 'dt2'), z=5:7)
setkey(DT1, x); setkey(DT2, x)
merge(DT1, DT2)

