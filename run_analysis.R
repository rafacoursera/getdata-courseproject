run_analysis <- function(){
  # Let's read the data (names, X and Y dataset train and test)
  variable_names <- read.table("UCI HAR Dataset/features.txt", sep=" ")
  names <- variable_names$V2
  data_train_X <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = names_f, dec =".", colClasses=c("numeric"))
  data_train_Y <- read.table("UCI HAR Dataset/train/Y_train.txt", col.names = c("activity"), dec =".", colClasses=c("numeric"))
  data_test_X <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = names_f, dec =".", colClasses=c("numeric"))
  data_test_Y <- read.table("UCI HAR Dataset/test/Y_test.txt", col.names = c("activity"), dec =".", colClasses=c("numeric"))
  
}