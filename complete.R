complete <- function(directory, id = 1:332) {
        
        
        files_full <- list.files("specdata", full.names=TRUE)
        z <- data.frame()
        for (i in id) {
                x<-read.csv(files_full[i], header = TRUE)
                
                nobs<-sum(complete.cases(x))
                y<-data.frame(i, nobs)
                z<-rbind(z, y)
        }
        return(z)
}

        