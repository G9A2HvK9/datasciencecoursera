## GRAPHICS DEVICES IN R (PART 2)

## 2 Basic types of file devices:
## - vector files: .pdf, .svg, .xml etc. <- most useful for line graphics. Portable and resize well
## - bitmap files: .png, .jpg, .tiff etc. <- most useful for images or complex presentations. Use pixels to represent. Do not resize well.

## Functionality around graphics devices:
## - possible to open multiple at once for viewing
## - can only write one at a time
## - currently open graphics devices are called with dev.cur()
dev.cur() ## returns integer of currently active graphics device

## - you can set the current graphics device by calling dev.set(<integer>)
dev.set(3)
dev.cur()

## plots can be copied from one device to another using dev.copy
library(datasets)
with(faithful, plot(eruptions, waiting))
title(main = 'Old Faithful Geysir Data')
## dev.copy(png, file = 'geysirplot.png')
dev.off()

## dev.copy2pdf() conducts the same operation explicitly to a pdf file

