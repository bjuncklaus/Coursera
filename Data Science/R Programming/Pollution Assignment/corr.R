corr <- function(directory, threshold = 0) {
        files = list.files(directory, full.names = TRUE)
        
        correlation = vector(mode = "numeric")
        for (f in files) {
                dataset <- read.csv(f)
                complete_cases_count = length(which(complete.cases(dataset) == TRUE))
                if (complete_cases_count > threshold) {
                        clean <- na.omit(dataset)
                        correlation <- rbind(correlation, cor(clean$nitrate, clean$sulfate))
                }
        }
        
        correlation
}