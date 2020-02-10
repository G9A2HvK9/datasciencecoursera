library(dplyr)
chicago <- readRDS('./chicago.rds')

dim(chicago)
str(chicago)

names(chicago)

# dplyr package function
# head function for all columns from "city" to "dptp"
head(select(chicago, city:dptp))

# head function for all columns EXCEPT from "city" to "dptp"
head(select(chicago, -(city:dptp)))

# equivalent above in base r would be:
# matching index a
i <- match("city", names(chicago))
# matching index b
j <- match("dptp", names(chicago))
# excluding indices with negative sign
head(chicago[, -(i:j)])

# filter function is used to subset rows based on conditions
chic.f <- filter(chicago, pm25tmean2 > 30)
head(chic.f)

# create more complicated logical condition in one line
# refer to variables directly using their names
chic.f <- filter(chicago, pm25tmean2 > 30 & tmpd > 80)
head(chic.f)

# arrange is used to reorder rows by row values
# arrange chicago data by date
chicago <- arrange(chicago, date)
head(chicago, 10)
tail(chicago, 10)

# arrange chicago data by descending date
chicago <- arrange(chicago, desc(date))
head(chicago, 10)
tail(chicago, 10)

# renaming variables using dplyr
# pm25tmean2 rename to pm25
# rename(df, variable1mew = variable1old, variable2new  = variable2old ... )
chicago <- rename(chicago, pm25 = pm25tmean2, dewpoint = dptp)

# mutate function using dplyr
# used to create new variables (add additional columns)
chicago <- mutate(chicago, pm25trend = pm25-mean(pm25, na.rm = TRUE))
head(select(chicago, pm25, pm25trend))

# group by allows for splitting of data frame using dplyr
# split data by temperature to indicate hot or cold
# add new column "tempcat" for temprature category
chicago <- mutate(chicago, tempcat = factor(1*(tmpd > 80), labels = c("cold", "hot")))
hotcold <- group_by(chicago, tempcat)
hotcold
summarize(hotcold, pm25 = mean(pm25, na.rm = TRUE), o3 = max(o3tmean2), no2 = median(no2tmean2))

# split data by year to conduct trend analysis
chicago <- mutate(chicago, year = as.POSIXlt(date)$year + 1900)
years <- group_by(chicago, year)
summarise(years, pm25 = mean(pm25, na.rm = TRUE), o3 = max(o3tmean2), no2 = median(no2tmean2))

# operations pipeline in r %>%
# chicago %>% ... operation ...
chicago %>% mutate(month = as.POSIXlt(date)$mon + 1) %>% group_by(month) %>% summarize(pm25 = mean(pm25, na.rm = TRUE), o3 = max(o3tmean2), no2 = median(no2tmean2))

# dplyr can work with other data backend
# fast tables with data.table
# SQL interface for relational databases via the DBI backend