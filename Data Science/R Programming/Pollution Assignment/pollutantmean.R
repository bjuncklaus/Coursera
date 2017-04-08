pollutantmean <- function(directory, pollutant, id = 1:332) {
        dataset <- data.frame()
        files = list.files(directory, full.names = TRUE)
        for (i in id) {
                dataset <- rbind(dataset, read.csv(files[i]))
        }
        mean(dataset[,pollutant], na.rm = TRUE)
}