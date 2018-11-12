# method requires files to be downloaded and upzipped to 
# ./UCI HAR Dataset/
library(reshape2)
folder <- "UCI HAR Dataset"
if (file.exists(folder)){
    
    # Get labels and features
    activity_labels <- read.table(paste(folder, "/activity_labels.txt", sep = ""))
    activity_labels[,2] <- as.character(activity_labels[,2])
    features <- read.table(paste(folder, "/features.txt", sep = ""))
    features[,2] <- as.character(features[,2])
    
    # Keep only the mean and std labels, then clean up strings
    keep_cols_num <- grep(".*mean.*|.*std.*", features[,2])
    keep_cols <- features[keep_cols_num, 2]
    keep_cols <- gsub('-mean', 'Mean', keep_cols)
    keep_cols <- gsub('-std', 'Std', keep_cols)
    keep_cols <- gsub('[-()]', '', keep_cols)
    
    # Get train data
    train_x <- read.table(paste(folder, "/train/X_train.txt", sep = ""))[keep_cols_num]
    train_y <- read.table(paste(folder, "/train/Y_train.txt", sep = ""))
    train_subjects <- read.table(paste(folder, "/train/subject_train.txt", sep = ""))
    train <- cbind(train_subjects,train_y, train_x)
    rm(train_subjects,train_y, train_x)
    
    # Get test data
    test_x <- read.table(paste(folder, "/test/X_test.txt", sep = ""))[keep_cols_num]
    test_y <- read.table(paste(folder, "/test/Y_test.txt", sep = ""))
    test_subjects <- read.table(paste(folder, "/test/subject_test.txt", sep = ""))
    test <- cbind(test_subjects,test_y, test_x)
    rm(test_subjects,test_y, test_x)
    
    #combine data sets
    tidy_data <- rbind(train, test)
    colnames(tidy_data) <- c('subject', 'activity', keep_cols)
    
    #make factors of subject and activity
    tidy_data$subject <- as.factor(tidy_data$subject)
    tidy_data$activity <- factor(tidy_data$activity, level = activity_labels[,1], labels = activity_labels[,2])
    tidy_data_melt <- melt(tidy_data, id = c("subject", "activity"))
    tidy_data_mean <- dcast(tidy_data_melt, subject + activity ~ variable, mean)
    
    write.table(tidy_data, "tidy.txt", row.names = FALSE, quote = FALSE)

    }