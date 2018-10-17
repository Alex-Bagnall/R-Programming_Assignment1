pollutantMean <- function(directory, pollutant, id = 1:332){
  #initialise storage variables
  files <- list.files(path = directory)
  overallMean <- vector(mode="numeric", length=0)
  #loop to read through every file
  for (i in id){
    currentFile <- read.csv(paste0(directory,files[i]), header = TRUE, sep = ",")
    meanFile <- na.omit(currentFile[,pollutant])
    
    overallMean <- c(overallMean, meanFile)
  }
  return(mean(overallMean))
}