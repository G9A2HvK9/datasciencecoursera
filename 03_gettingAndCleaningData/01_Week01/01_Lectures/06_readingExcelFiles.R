fileUrl <- 'https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD'
download.file(fileUrl, destfile = './data/cameras.xlsx', method = 'curl')
dateDownloaded <- date

install.packages('xlsx')
library(xlsx)