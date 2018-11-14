#####
# Pupose
#    Uding data collected via smartphone, clean the data set, outputting
#    results to tidy.txt
# Note
#    Script requires files to be downloaded and upzipped to 
#      ./UCI HAR Dataset/

library(reshape2)


folder <- "UCI HAR Dataset"
if (file.exists(folder)){
    
    # Get features columns and clean up
    features <- read.table(paste(folder, "/features.txt", sep = ""))
    features <- as.character(features[,2])
    
    # Keep only the mean and std labels, then clean up strings
    keep_cols_num <- grep("mean|std", features)
    keep_cols <- features[keep_cols_num]
    keep_cols <- gsub('-std', 'Std', keep_cols)
    keep_cols <- gsub('-mean', 'Mean', keep_cols)
    keep_cols <- gsub('[-()]', '', keep_cols)
    keep_cols <- gsub('^t', 'time', keep_cols)
    keep_cols <- gsub('^f', 'frequency', keep_cols)
    keep_cols <- gsub('Freq', 'Frequency', keep_cols)
    keep_cols <- gsub('Acc', 'Acceleration', keep_cols)
    keep_cols <- gsub('Mag', 'Magnitude', keep_cols)
    keep_cols <- gsub('Gyro', 'Gyroscope', keep_cols)
    
    # Get train data
    train_x <- read.table(paste(folder, "/train/X_train.txt", sep = ""))[keep_cols_num]
    train_activity <- read.table(paste(folder, "/train/Y_train.txt", sep = ""))
    train_subjects <- read.table(paste(folder, "/train/subject_train.txt", sep = ""))
    train <- cbind(train_subjects,train_activity, train_x)
    rm(train_subjects,train_activity, train_x)
    
    # Get test data
    test_x <- read.table(paste(folder, "/test/X_test.txt", sep = ""))[keep_cols_num]
    test_activity <- read.table(paste(folder, "/test/Y_test.txt", sep = ""))
    test_subjects <- read.table(paste(folder, "/test/subject_test.txt", sep = ""))
    test <- cbind(test_subjects,test_activity, test_x)
    rm(test_subjects,test_activity, test_x)
    
    #combine data sets
    tidy_data <- rbind(train, test)
    colnames(tidy_data) <- c('subject', 'activity', keep_cols)
    
    #get activity labels info
    activity_labels <- read.table(paste(folder, "/activity_labels.txt", sep = ""))
    activity_labels[,2] <- as.character(activity_labels[,2])
    
    #make factors of subject and activity
    tidy_data$subject <- as.factor(tidy_data$subject)
    tidy_data$activity <- factor(tidy_data$activity, level = activity_labels[,1], labels = activity_labels[,2])
    
    #make second data set with mean for each subject and activity
    # melt makes a new row for each row-column combination in the table
    tidy_data_melt <- melt(tidy_data, id = c("subject", "activity"))
    tidy_data_mean <- dcast(tidy_data_melt, subject + activity ~ variable, mean)
    
    #write out tidy data set
    write.table(tidy_data_mean, "tidy.txt", row.names = FALSE, quote = FALSE)
    
    
    }