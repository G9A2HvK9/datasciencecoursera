# Register an application with the Github API here https://github.com/settings/applications. Access the API to get information on your instructors repositories (hint: this is the url you want "https://api.github.com/users/jtleek/repos"). Use this data to find the time that the datasharing repo was created. What time was it created?
library(httr)
library(jsonlite)

#oauth_endpoints('github')

#github_key <- 'XXX'
#github_secret <- 'XXX'
#myapp <- oauth_app('github', key = github_key, secret = github_secret)

#github_token <- oauth2.0_token(oauth_endpoints('github'), myapp)
#gtoken <- config(token = github_token)
req <- GET('api.github.com/users/jtleek/repos')
json1 = content(req)
json2 = jsonlite::fromJSON(toJSON(json1))
colnames(json2)
json2[which(json2$name == 'datasharing'), 'created_at']
## Answer: "2013-11-07T13:25:07Z"

library(sqldf)
download.file(url = 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv', destfile = './courses/datasciencecoursera/03_gettingAndCleaningData/02_Week02/americanCommunitySurveyData.csv')
acs <- read.csv(file = './courses/datasciencecoursera/03_gettingAndCleaningData/02_Week02/americanCommunitySurveyData.csv', sep = ',')
sqldf('select pwgtp1 from acs where AGEP < 50')


url <- 'http://biostat.jhsph.edu/~jleek/contact.html'
html <- GET(url)
content <- content(html, as = 'text')
parsedHtml <- htmlParse(content2, asText = TRUE)

con <- url('http://biostat.jhsph.edu/~jleek/contact.html')
htmlCode <- readLines(con)
nchar(htmlCode[10])
nchar(htmlCode[20])
nchar(htmlCode[30])
nchar(htmlCode[100])

download.file(url = 'https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for', dest = './courses/datasciencecoursera/03_gettingAndCleaningData/02_Week02/noaaData.for')

library(data.table)
library(ff)

d <- read.fortran(file = './courses/datasciencecoursera/03_gettingAndCleaningData/02_Week02/noaaData.for', format = '123456')







