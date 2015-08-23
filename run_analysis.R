##
## Refer to README.md and CodeBook.md in this same repository for details
## on how this script works
##

library(dplyr)

# Load activity descriptions and give meaningful names to columns
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
colnames(activity_labels) <- c("activity_id", "activity_name")

# Load feature names
features <- read.table("./UCI HAR Dataset/features.txt")

# Load raw test data
test_set <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
test_labels <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

# Load raw training data
training_set <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
training_labels <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
subject_training <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)

# Build vector of test/training set column names
feature_colnames <- as.vector(features[,2])

# Create data frames of test and training data
test_data <- data.frame(subject_test,test_labels, test_set)
training_data <- data.frame(subject_training, training_labels, training_set)

# Combine the test and training sets
complete_data <- rbind(test_data, training_data)

# Assign meaningful column names to combined data
colnames(complete_data) <- c("subject_id", "activity_id", feature_colnames)

# Find columns that contain mean() and std() values, using make.names
# converts column names to be easily grep-able
mean_columns <- feature_colnames[grep("mean\\.\\.\\.",make.names(feature_colnames))]
std_columns <- feature_colnames[grep("std\\.\\.\\.",make.names(feature_colnames))]

# A complete vector list of all desired column names
desired_columns <- c("subject_id", "activity_id", mean_columns, std_columns)

# The final data frame of desired columns
complete_data <- complete_data[,desired_columns]

# Replace activity_id with the name of the activity
complete_data$activity_id <- as.character(activity_labels[match(complete_data$activity_id, activity_labels$activity_id), 'activity_name'])

# Rename activity_id column to activity_name
complete_data <- plyr::rename(complete_data, replace = c("activity_id" = "activity_name"))

# Summarises the data by subject and then activity for each mean and std measurement
tidy_data <- group_by(complete_data, subject_id, activity_name)

# Finds the mean for each subject and activity for every mean and std measurement
tidy_data <- summarise_each(tidy_data, funs(mean))

# Write tiny_data table to a file
write.table(tidy_data, file = "./tidy_data.txt", row.name = FALSE)
