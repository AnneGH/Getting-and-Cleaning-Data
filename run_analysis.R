##Course Project: Getting and Cleaning Data

#The goal of this project is to prepare tidy data that can be used for later analysis.

#1: Merges the training and the test sets to create one data set.

# Read data from UCIHARDataset and store as subject_train

subject_train = read.table("UCIHARDataset/train/subject_train.txt", col.names=c("subject_id"))
# Now the row numbers are assigned as the values of ID column
subject_train$ID <- as.numeric(rownames(subject_train))
# Read training data
X_train = read.table("UCIHARDataset/train/X_train.txt")
# Then assign row number as the values of ID column
X_train$ID <- as.numeric(rownames(X_train))
# Read activity training data
y_train = read.table("UCIHARDataset/train/y_train.txt", col.names=c("activity_id"))  # max = 6
y_train$ID <- as.numeric(rownames(y_train))
# Merge subject_train and y_train to train
train <- merge(subject_train, y_train, all=TRUE)
# Merge train and X_train
train <- merge(train, X_train, all=TRUE)

# Read subject training data
subject_test = read.table("UCIHARDataset/test/subject_test.txt", col.names=c("subject_id"))
# Then assign row number as the values of ID column
subject_test$ID <- as.numeric(rownames(subject_test))
# Read testing data
X_test = read.table("UCIHARDataset/test/X_test.txt")
# Then assign row number as the values of ID column
X_test$ID <- as.numeric(rownames(X_test))
# Read activity testing data
y_test = read.table("UCIHARDataset/test/y_test.txt", col.names=c("activity_id"))  # max = 6
# Then assign row number as the values of ID column
y_test$ID <- as.numeric(rownames(y_test))
# merge subject_test and y_test to train
test <- merge(subject_test, y_test, all=TRUE) 
# Merge test and X_test
test <- merge(test, X_test, all=TRUE) 
 
#Combine train and test
frame1 <- rbind(train, test)

#2: Extracts only the measurements on the mean and standard deviation for each measurement.
features = read.table("UCIHARDataset/features.txt", col.names=c("feature_id", "feature_label"),)
 
selected_features <- features[grepl("mean\\(\\)", features$feature_label) | grepl("std\\(\\)", features$feature_label), ]
frame2 <- frame1[, c(c(1, 2, 3), selected_features$feature_id + 3) ]

#3: Uses descriptive activity names to name the activities in the data set.
activity_labels = read.table("UCIHARDataset/activity_labels.txt", col.names=c("activity_id", "activity_label"),) #
frame3 = merge(frame2, activity_labels)

#4: Appropriately labels the data set with descriptive activity names.

selected_features$feature_label = gsub("\\(\\)", "", selected_features$feature_label)
selected_features$feature_label = gsub("-", ".", selected_features$feature_label)
for (i in 1:length(selected_features$feature_label)) {
    colnames(frame3)[i + 3] <- selected_features$feature_label[i]
}
frame4 = frame3

#5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
drops <- c("ID","activity_label")
frame5 <- frame4[,!(names(frame4) %in% drops)]
total <-aggregate(frame5, by=list(subject = frame5$subject_id, activity = frame5$activity_id), FUN=mean, na.rm=TRUE)
drops <- c("subject","activity")
total <- total[,!(names(total) %in% drops)]
total = merge(total, activity_labels)

write.table(total, "TidyData.txt", sep = "")
