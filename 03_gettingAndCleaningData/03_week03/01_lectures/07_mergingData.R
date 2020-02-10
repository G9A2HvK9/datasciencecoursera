# merging data frames works via id
# solution ID and "id" in this case
# default mode matches all matching column names

# manually indicate matching columns by using argument "by.x" and "by.y"
# mergedData <- merge(reviews, solutions, by.x = "solution.id", by.y="id)

# join in plyr package is a bit faster but a bit less full-features
# will only join on the basis of full name match