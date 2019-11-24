rankall <- function(outcome, num = 'best'){
        file <- read.csv(file = '~/courses/datasciencecoursera/02_RProgramming/04_Week04/03_Assignment/rprog-data-ProgAssignment3-data/outcome-of-care-measures.csv', colClasses = 'character')
        
        
        if(outcome == 'heart attack'){
                file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack <- as.numeric(file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)
                
                if( num == 'best'){
                        ordered.data.frame <- file[ order( file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack, file$Hospital.Name, decreasing = FALSE, na.last = TRUE), ]
                        split.list <- split(ordered.data.frame, ordered.data.frame$State)
                        best.list <- lapply(split.list, '[', 1, )
                        final.list <- lapply(best.list, '[', 1, c('Hospital.Name', 'State') )
                        final.list <- do.call(rbind, final.list)
                        return(final.list)
                } else if (num == 'worst'){
                        ordered.data.frame <- file[ order( file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack, file$Hospital.Name, decreasing = TRUE, na.last = TRUE), ]
                        split.list <- split(ordered.data.frame, ordered.data.frame$State)
                        best.list <- lapply(split.list, '[', 1, )
                        final.list <- lapply(best.list, '[', 1, c('Hospital.Name', 'State') )
                        final.list <- do.call(rbind, final.list)
                        return(final.list)
                } else if (class(num) == 'numeric'){
                        ordered.data.frame <- file[ order( file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack, file$Hospital.Name, decreasing = FALSE, na.last = TRUE), ]
                        split.list <- split(ordered.data.frame, ordered.data.frame$State)
                        best.list <- lapply(split.list, '[', num, )
                        final.list <- lapply(best.list, '[', 1, c('Hospital.Name', 'State') )
                        final.list <- do.call(rbind, final.list)
                        return(final.list)
                } else {
                        stop('invalid num')
                }
        }
        
        else if(outcome == 'heart failure'){
                file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure <- as.numeric(file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)
                
                if( num == 'best'){
                        ordered.data.frame <- file[ order( file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure, file$Hospital.Name, decreasing = FALSE, na.last = TRUE), ]
                        split.list <- split(ordered.data.frame, ordered.data.frame$State)
                        best.list <- lapply(split.list, '[', 1, )
                        final.list <- lapply(best.list, '[', 1, c('Hospital.Name', 'State') )
                        final.list <- do.call(rbind, final.list)
                        return(final.list)
                } else if (num == 'worst'){
                        ordered.data.frame <- file[ order( file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure, file$Hospital.Name, decreasing = TRUE, na.last = TRUE), ]
                        split.list <- split(ordered.data.frame, ordered.data.frame$State)
                        best.list <- lapply(split.list, '[', 1, )
                        final.list <- lapply(best.list, '[', 1, c('Hospital.Name', 'State') )
                        final.list <- do.call(rbind, final.list)
                        return(final.list)
                } else if (class(num) == 'numeric'){
                        ordered.data.frame <- file[ order( file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure, file$Hospital.Name, decreasing = FALSE, na.last = TRUE), ]
                        split.list <- split(ordered.data.frame, ordered.data.frame$State)
                        best.list <- lapply(split.list, '[', num, )
                        final.list <- lapply(best.list, '[', 1, c('Hospital.Name', 'State') )
                        final.list <- do.call(rbind, final.list)
                        return(final.list)
                } else {
                        stop('invalid num')
                }
        }
        
        else if(outcome == 'pneumonia'){
                file$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia <- as.numeric(file$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)
                
                if( num == 'best'){
                        ordered.data.frame <- file[ order( file$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia, file$Hospital.Name, decreasing = FALSE, na.last = TRUE), ]
                        split.list <- split(ordered.data.frame, ordered.data.frame$State)
                        best.list <- lapply(split.list, '[', 1, )
                        final.list <- lapply(best.list, '[', 1, c('Hospital.Name', 'State') )
                        final.list <- do.call(rbind, final.list)
                        return(final.list)
                } else if (num == 'worst'){
                        ordered.data.frame <- file[ order( file$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia, file$Hospital.Name, decreasing = TRUE, na.last = TRUE), ]
                        split.list <- split(ordered.data.frame, ordered.data.frame$State)
                        best.list <- lapply(split.list, '[', 1, )
                        final.list <- lapply(best.list, '[', 1, c('Hospital.Name', 'State') )
                        final.list <- do.call(rbind, final.list)
                        return(final.list)
                } else if (class(num) == 'numeric'){
                        ordered.data.frame <- file[ order( file$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia, file$Hospital.Name, decreasing = FALSE, na.last = TRUE), ]
                        split.list <- split(ordered.data.frame, ordered.data.frame$State)
                        best.list <- lapply(split.list, '[', num, )
                        final.list <- lapply(best.list, '[', 1, c('Hospital.Name', 'State') )
                        final.list <- do.call(rbind, final.list)
                        return(final.list)
                } else {
                        stop('invalid num')
                }
                
        } else { stop('invalid outcome')}
}