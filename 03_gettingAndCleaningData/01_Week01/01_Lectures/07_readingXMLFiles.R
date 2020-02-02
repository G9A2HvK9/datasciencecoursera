
library(xml2)
# fileUrl <- 'http://www.w3schools.com/xml/simple.xml'
# download.file(fileUrl, destfile = './data/food.xml')
# doc <- xmlTreeParse(file = './data/food.xml', useInternalNodes = TRUE)

file <- read_xml('http://www.w3schools.com/xml/simple.xml')
file
zipcodes <- xml_find_all(file, '//zipcode')

## Wrapper element for the entire document
rootNode <- xmlRoot(doc)

## Prints the name of the node
xmlName(rootNode)

## Prints all nested elements within the node
names(rootNode)

## Accesses first internal element of the root node
rootNode[[1]]

## drills down into the subset by subsetting further
rootNode[[1]][[1]]


## Recursivels applies fun to all elements inside rootNode, printing to console
xmlSApply(rootNode, xmlValue)


## XPath language can be used to access further elements inside the XML file
## This formula prints the xmlValue of all nodes with attribute 'name'
xpathSApply(rootNode, '//name', xmlValue)


## Reading XML files lets you crawl websites to find specific data online
## 