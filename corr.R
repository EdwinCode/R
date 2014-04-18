#Goes through the .csv files with with complete observations over 
#the given threshold and returns a vector for the correlation of
#each file. 



corr <- function(directory="specdata", threshold=0) {
  setwd(paste("C:/Users/Edwin/Documents/", directory, sep=""))
  dataFiles <- lapply(Sys.glob("*.csv"), read.csv)
  
  
  corr<-vector()
  
  for(i in 1:332){
    data<-data.frame(dataFiles[[i]][,2:3])
    data<-na.omit(data)
    
    if(nrow(data)>threshold){corr<-c(corr,cor(data[,1],data[2]))}
    
    
  }
  corr
}
