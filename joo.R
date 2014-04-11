pollutantmean <- function(directory, pollutant, id = 1:332) {
  setwd(directory)
  dataFiles <- lapply(Sys.glob("*.csv"), read.csv)
  
  sulf<-pollutant=="sulfate"
  
  if(sulf==T){
    
  }