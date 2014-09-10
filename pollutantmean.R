# Function to calculate the mean of polution accross several measurement units
pollutantmean <- function (directory, pollutant, id){
        # Organize the directory  
        CurrentDir <- getwd()
        setwd(directory)
        
        # Initialize Data variable with first file
        #file_id <- paste0(sprintf("%03d",id[[1]]),".csv",collapse=NULL)           
        #Data <- read.csv(file_id,TRUE) 
        
        Data <- new("data.frame")          
        # Loop to read the diverse files 
        for (i in seq_along(id))
        {       file_id <- paste0(sprintf("%03d",id[[i]]),".csv",collapse=NULL)           
                Data <- rbind(Data,read.csv(file_id,TRUE),deparse.level=0)
                #print(file_id)      
         }
        
                        
        # Return the mean value for the required pollutant         
        setwd(CurrentDir)
        
        mean(Data[[pollutant]],na.rm=TRUE)
}

