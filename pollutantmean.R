polluntantmean <- function(directory, pollutant, id = 1:332) {
        dat <- data.frame()
files_full <- list.files("specdata", full.names=TRUE)
for (i in id) {
        dat <- rbind(dat, read.csv(files_full[i]))
}

mean(dat[, pollutant], na.rm = TRUE)
}

