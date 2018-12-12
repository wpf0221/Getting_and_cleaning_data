# Task 1. Merges the training and the test sets to create one data set
# 1.1 Download the data set and unzip the data set
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "./Get_and_cleaning_data/FUCI_HAR_Dataset.zip")
unzip("./Get_and_cleaning_data/FUCI_HAR_Dataset.zip", exdir = "./Get_and_cleaning_data")

# 1.2 Read train and text data into X_train, y_train, X_test, y_test
subject_train  <- read.table("./Get_and_cleaning_data/UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./Get_and_cleaning_data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./Get_and_cleaning_data/UCI HAR Dataset/train/y_train.txt")
subject_test <- read.table("./Get_and_cleaning_data/UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./Get_and_cleaning_data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./Get_and_cleaning_data/UCI HAR Dataset/test/y_test.txt")

# 1.3 Bind data set
train_data <- cbind(subject_train, y_train, X_train)
test_data <- cbind(subject_test, y_test, X_test)
all_data <- rbind(train_data, test_data)

# Task 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 2.1 Read all feature names
features_data <- read.table("./Get_and_cleaning_data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
features <- features_data[,2]
# 2.2 Find index for mean() and std()
mean_std_features_index <- grep("mean\\(\\)|std\\(\\)",features)
data_extracted <- all_data[, c(1, 2, mean_std_features_index+2)]

# Task 3.Uses descriptive activity names to name the activities in the data set
# 3.1 Read activity labels
activity_labels <- read.table("./Get_and_cleaning_data/UCI HAR Dataset/activity_labels.txt")
# 3.2 Replace the activity index with activity names, which is the second column
data_extracted[,2]<-factor(data_extracted[,2], levels = activity_labels[,1], labels = activity_labels[,2])

# Task 4.Appropriately labels the data set with descriptive variable names.
# 4.1 Replace the feature names with the descriptive ones
features_extracted <- features[mean_std_features_index]
features_extracted <- gsub("\\()", "", features_extracted)
features_extracted <- gsub("^t", "Time", features_extracted)
features_extracted <- gsub("^f", "Frequence", features_extracted)
features_extracted <- gsub("-mean", "Mean", features_extracted)
features_extracted <- gsub("-std", "Std", features_extracted)

# 4.2 Update the dataframe column names
colnames(data_extracted) <- c(c("Subject", "Activity"), features_extracted)

# Task 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
# 5.1 Calculate the average values
MeanData <- data_extracted %>%
  group_by(Subject, Activity) %>%
  summarise_all(funs(mean))
# 5.2 Write out data set
write.table(MeanData, "./Get_and_cleaning_data/MeanData.txt", row.names = FALSE)