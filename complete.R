complete <- function(directory="specdata", id = 1:332) {
  setwd(paste("C:/Users/Edwin/Documents/", directory, sep=""))
  dataFiles <- lapply(Sys.glob("*.csv"), read.csv)
  
  df<-data.frame(id=numeric(),nobs=numeric())
  x<-0
  
  for(i in id){
    data<-data.frame(dataFiles[[i]][,2:3])
    data<-na.omit(data)
    row<-c(i,nrow(data))
    df<-rbind(df,row)
  }
  names(df)<-c("id","nobs")
  df
}
