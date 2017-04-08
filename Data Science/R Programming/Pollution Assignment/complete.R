complete <- function(directory, id = 1:332) {
        dataset <- data.frame(id = integer(0), nobs = integer(0))
        files = list.files(directory, full.names = TRUE)
        for (i in id) {
                dataset <- rbind(dataset, data.frame("id" = i, "nobs" = length(which(complete.cases(read.csv(files[i])) == TRUE))))
        }
        
        dataset
}