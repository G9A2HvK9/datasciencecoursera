## GGPLOT2 - Part 3

## Basic components of ggplot2 plot:
## - Aesthetic Mapping: how data are mapped to color, size
## - Geoms: gemoetric objects like points, lines, shapes
## - Factes: for conditional plotting in panels
## - Stats: for statistical transformations like binning, quantiles and smoothing
## - Scales: What scale the aesthetics us
## - Coordinate System

## ggplot2 is closer to artists palette model
## - First plot data
## - Overlay summary (smoother, regression)
## - Metadata or extra annotation

## MAACS Study - Data not publicly available

## You build your ggplot2 like this:
## g <- ggplot(maacs, aes(logpm25, NocturnalSympt)) : sets data. no plot exists yet
## p <- g + geom_point() : sets gemoetric points. graph can now be printed
## print(p) : prints plot