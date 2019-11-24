best <- function(state, outcome){
        file <- read.csv(file = '~/courses/datasciencecoursera/02_RProgramming/04_Week04/03_Assignment/rprog-data-ProgAssignment3-data/outcome-of-care-measures.csv', colClasses = 'character')

        if(!(state %in% file$State)){ stop('invalid state') }
        
        if(outcome == 'heart attack'){
                file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack <- as.numeric(file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)
                file <- file[file$State == state, ]
                min.outcome <- min(file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack, na.rm = TRUE)
                best.hospital <- file[file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack <= min.outcome, ]
                best.hospital.vector <- sort(as.character(best.hospital$Hospital.Name))
                best.hospital.vector[1]
        }
        
        else if(outcome == 'heart failure'){
                file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure <- as.numeric( file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)
                file <- file[file$State == state, ]
                min.outcome <- min(file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure, na.rm = TRUE)
                best.hospital <- file[file$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure <= min.outcome, ]
                best.hospital.vector <- sort(as.character(best.hospital$Hospital.Name))
                best.hospital.vector[1]
        }
        
        else if(outcome == 'pneumonia'){
                file$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia <- as.numeric(file$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)
                file <- file[file$State == state, ]
                min.outcome <- min(file$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia, na.rm = TRUE)
                best.hospital <- file[file$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia <= min.outcome, ]
                best.hospital.vector <- sort(as.character(best.hospital$Hospital.Name))
                best.hospital.vector[1]
        }
        
        else(stop('invalid outcome'))
}