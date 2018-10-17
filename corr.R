corr <- function(directory, threshold = 0){
  files <- list.files(path = directory)
  completeList <- complete(directory)
  outputVector <- vector(mode = "numeric", length = 0)
  aboveThresholdList <- subset(completeList, nobs > threshold)
  for(i in aboveThresholdList$id){
    tempFile <- read.csv(paste0(directory,files[i]), header = TRUE, sep = ",")
    tempFile <- tempFile[complete.cases(tempFile),]
    outputVector <- c(outputVector, cor(tempFile$nitrate, tempFile$sulfate))
  }
  return(outputVector)
}