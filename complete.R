complete <- function(directory, id = 1:332) {
               
        # Organize the directory  
        CurrentDir <- getwd()
        setwd(directory)
 
        
       Caracteristic <- data.frame()

       # Loop to read the diverse files 
        for (i in seq_along(id))
        {       file_id <- paste0(sprintf("%03d",id[[i]]),".csv",collapse=NULL)           
                Data <- read.csv(file_id,TRUE)
                 
                Caracteristic[i,1] <- data.frame(id = id[i])
                Caracteristic[i,2] <- data.frame(nobs = sum(complete.cases(Data)))
             
        }
        
        
        # Return the mean value for the required pollutant         
        setwd(CurrentDir)
        
       Caracteristic

}

# Some useful comments learnt on this script 
# For subseting of data.frame need to get the column name Data [i,2]
# La función names(DataSet) <- c("id","nobs") 
# La expresión para comprobar el número de datos correctos sum(complete.cases(Data))
