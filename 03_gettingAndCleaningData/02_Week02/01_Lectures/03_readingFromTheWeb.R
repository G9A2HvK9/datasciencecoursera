# Webscraping: Programatically extracting data from the HTML code of Websites
library(XML)

## con = url('https://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en')
## htmlCode = readLines(con)
## close(con)

url = 'https://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en'
# html = htmlTreeParse(url, useInternalNodes = TRUE)
# html
# 
# xpathSApply(html, '//head', xmlValue)

## install.packages('httr')
library(httr)
html2 <- GET(url)
content2 <- content(html2, as = 'text')
parsedHtml <- htmlParse(content2, asText = TRUE)
xpathSApply(parsedHtml, '//title', xmlValue)

pg2 <- GET('https://httpbin.org/basic-auth/user/passwd', authenticate('user', 'passwd'))
pg2
names(pg2)

## once a path is authenticated, cookies will stay with the path and you will not have to re-authenticate to log in and scrape data
google <- handle('https://google.com')
pg1 <- GET(handle = google, path = '/')
pg2 <- GET(handle=google, path = 'search')
