corr<-function(directory, threshold = 0){
        files_full <- list.files("specdata", full.names=TRUE)
        
        dat<-vector(mode = "numeric", length = 0)
        
        for (i in 1:length(files_full)){
                x<-read.csv(files_full[i], header = TRUE)
                nobs<-sum(complete.cases(x))
                
                if(nobs>threshold){
                        dat<-c(dat,cor(x$nitrate,x$sulfate, use="complete.obs"))
                }
        }
        
        
        return(dat)
        
        
}