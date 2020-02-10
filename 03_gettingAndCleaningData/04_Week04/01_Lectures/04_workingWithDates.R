# working with dates

d1 <- date()
class(d1)

d2 <- Sys.Date()
class(d2)

# Formatting dates

format(d2, "%a %b %d")
# %d = day as number (0-31)
# %a = abbreviated weekday
# %A = unabbreviated weekday
# %m = month as number (00-12)
# %b = abbreviated month
# %B = unabbreviated month
# %y = 2 digit year
# %Y = 4 digit year

x <- c('1jan1960', '2jan1960', '31mar1960', '30jul1960')
z <- as.Date(x, '%d%b%Y')

z
z[1] - z[2]
as.numeric(z[1] - z[2])

weekdays(d2)
months(d2)
julian(d2)

library(lubridate)
ymd('20140108')
mdy('08/04/2013')
dmy('03-04-2013')


ymd_hms('2011-08-03 10:15:03')
ymd_hms('2011-08-03 10:15:03', tz = 'CEST')

x = dmy(c('1jan2013', '2jan2013', '31march2013', '30jul2013'))
wday(x[1], label = TRUE)

# Dates should ultimately be of class "POSIXlt" or "POSIXct"