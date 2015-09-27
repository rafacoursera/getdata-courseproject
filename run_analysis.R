run_analysis <- function(){
  # Let's read the data and let's assign the names to the datasets
  variable_names <- read.table("UCI HAR Dataset/features.txt", sep=" ")
  names <- variable_names$V2
  data_train_X <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = names, dec =".", colClasses=c("numeric"))
  data_train_Y <- read.table("UCI HAR Dataset/train/Y_train.txt", col.names = c("activity"), dec =".", colClasses=c("numeric"))
  data_test_X <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = names, dec =".", colClasses=c("numeric"))
  data_test_Y <- read.table("UCI HAR Dataset/test/Y_test.txt", col.names = c("activity"), dec =".", colClasses=c("numeric"))
  
  #Let's merge X and Y of train and test
  data_train <- cbind(data_train_Y, data_train_X)
  data_test <- cbind(data_test_Y, data_test_X)
  
  #Let's merge the train and test datasets.
  data <- rbind(data_train, data_test)
  
  #We only want the mean and stdv fields, so let's save the indexs
  fields <- c(1:7,42:47,82:87,122:127, 162:167,202:203,215:216,228:229,241:242,267:272,346:351,425:430,504:505,517:518,530:531,543:544)

  data <- data[,fields]
  
  #Let's write this dataset in a file
  write.table(data, file="data.txt", row.names = FALSE)
  
  #Let's make a dataset 
  n <- names(data)
  n <- n[2:65]
  final_data <- melt(data,id=c("activity"),measure.vars = n)
  final_data <- dcast(final_data,activity ~ variable, mean)

  write.table(final_data, file="tidy-data.txt", row.names = FALSE)
}