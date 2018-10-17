complete <- function(directory, id = 1:332){
  files <- list.files(path = directory)
  outputDataframe <- data.frame("id"=numeric(), "nobs"=numeric())
  for (i in id){
    currentFile <- read.csv(paste0(directory,files[i]), header = TRUE, sep = ",")
    df <- na.omit(currentFile)
    outputDataframe <- rbind(outputDataframe, list("id"= i, "nobs" = nrow(df)))
  }
  return(outputDataframe)
}