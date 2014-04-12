pollutantmean <- function(directory=getwd(), pollutant="sulfate", id = 1:332) {
  setwd(paste("C:/Users/Edwin/Documents/", directory, sep=""))
  dataFiles <- lapply(Sys.glob("*.csv"), read.csv)
  
  sulf<-pollutant=="sulfate"
  data<-c(NA)
  
  if(sulf==T){
    for(i in id){
      data<-c(data,dataFiles[[i]][,2])
    }
      
    }else{
      for(i in id){
        data<-c(data,dataFiles[[i]][,3])
      }
    }
    mean(data, na.rm=TRUE)
  }