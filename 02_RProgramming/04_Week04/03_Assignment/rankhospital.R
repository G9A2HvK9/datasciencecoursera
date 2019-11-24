rankhospital <- function(state, outcome, num){
        file <- read.csv(file = '~/courses/datasciencecoursera/02_RProgramming/04_Week04/03_Assignment/rprog-data-ProgAssignment3-data/outcome-of-care-measures.csv', colClasses = 'character')
        
        if(!(state %in% file$State)){ stop('invalid state') }
        
        if(outcome == 'heart attack'){
                file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack <- as.numeric(file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)
                file <- file[file$State == state, ]
                
                if(num == 'best'){ 
                        orderedresults <- file[ order(file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack,
                                                      file$Hospital.Name,
                                                      decreasing = FALSE, na.last = TRUE), ]
                        return(orderedresults[1, 'Hospital.Name'])
                } else if( num == 'worst') { 
                        orderedresults <- file[ order(file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack, 
                                                      file$Hospital.Name,
                                                      decreasing = TRUE, na.last = TRUE), ]
                        return(orderedresults[1, 'Hospital.Name'])
                } else if( class(num) == 'numeric'){
                        orderedresults <- file[ order(file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack, 
                                                      file$Hospital.Name,
                                                      decreasing = FALSE, na.last = TRUE), ]
                        return(orderedresults[num, 'Hospital.Name'])
                } else {
                        return('invalid num')
                }
                
        }
        
        else if(outcome == 'heart failure'){
                file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure <- as.numeric(file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)
                file <- file[file$State == state, ]
                
                if(num == 'best'){ 
                        orderedresults <- file[ order(file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure, 
                                                      file$Hospital.Name,
                                                      decreasing = FALSE, na.last = TRUE), ]
                        return(orderedresults[1, 'Hospital.Name'])
                } else if( num == 'worst') { 
                        orderedresults <- file[ order(file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure, 
                                                      file$Hospital.Name,
                                                      decreasing = TRUE, na.last = TRUE), ]
                        return(orderedresults[1, 'Hospital.Name'])
                } else if( class(num) == 'numeric'){
                        orderedresults <- file[ order(file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure, 
                                                      file$Hospital.Name,
                                                      decreasing = FALSE, na.last = TRUE), ]
                        return(orderedresults[num, 'Hospital.Name'])
                } else {
                        return('invalid num')
                }
                
                
                
        }
        
        else if(outcome == 'pneumonia'){
                file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Pneumonia <- as.numeric(file$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)
                file <- file[file$State == state, ]
                
                if(num == 'best'){ 
                        orderedresults <- file[ order(file$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia, 
                                                      file$Hospital.Name,
                                                      decreasing = FALSE, na.last = TRUE), ]
                        return(orderedresults[1, 'Hospital.Name'])
                } else if( num == 'worst') { 
                        orderedresults <- file[ order(file$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia, 
                                                      file$Hospital.Name,
                                                      decreasing = TRUE, na.last = TRUE), ]
                        return(orderedresults[1, 'Hospital.Name'])
                } else if( class(num) == 'numeric'){
                        orderedresults <- file[ order(file$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia, 
                                                      file$Hospital.Name,
                                                      decreasing = FALSE, na.last = TRUE), ]
                        return(orderedresults[num, 'Hospital.Name'])
                } else {
                        return('invalid num')
                }
        } else { stop('invalid outcome')}
}