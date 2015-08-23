# Getting and Cleaning Data: Course Project

## Analysis process

The analysis script, run_analysis.R reads in the raw experiment data and performs various
data formatting operations on it as well as parsing out of only the desired data points.
The steps performed are as follows:

- The test data set as well as subject and activity labels are read in and merged into a data frame
- The training data set as well as subject and activity labels are read in and merged into a data frame
- The test and training data frames are merged together into one data frame and meaningful column names are assigned to the data frame
- The mean and standard deviation measurements are extracted along with the subject and activity details for each observation
- The activity id is replaced by the activity name provided with raw data for each observation.
- A tidy data set is generated that summarizes each activity for each participant and finds the mean of all mean and standard deviation measurements.
- The tidy data set is written to the filesystem with the name "tidy_data.txt"



## CodeBook

The variables in the tidy data are as follows:

 * subject_id - The id of the experiment participant
 * activity_name - the name of the activity that was measured

The following variables are the mean of all mean and standard deviation measurements 
made for each activity for each participant.

 * tBodyAcc-mean()-X
 * tBodyAcc-mean()-Y
 * tBodyAcc-mean()-Z
 * tGravityAcc-mean()-X
 * tGravityAcc-mean()-Y
 * tGravityAcc-mean()-Z
 * tBodyAccJerk-mean()-X
 * tBodyAccJerk-mean()-Y
 * tBodyAccJerk-mean()-Z
 * tBodyGyro-mean()-X
 * tBodyGyro-mean()-Y
 * tBodyGyro-mean()-Z
 * tBodyGyroJerk-mean()-X
 * tBodyGyroJerk-mean()-Y
 * tBodyGyroJerk-mean()-Z
 * fBodyAcc-mean()-X
 * fBodyAcc-mean()-Y
 * fBodyAcc-mean()-Z
 * fBodyAccJerk-mean()-X
 * fBodyAccJerk-mean()-Y
 * fBodyAccJerk-mean()-Z
 * fBodyGyro-mean()-X
 * fBodyGyro-mean()-Y
 * fBodyGyro-mean()-Z
 * tBodyAcc-std()-X
 * tBodyAcc-std()-Y
 * tBodyAcc-std()-Z
 * tGravityAcc-std()-X
 * tGravityAcc-std()-Y
 * tGravityAcc-std()-Z
 * tBodyAccJerk-std()-X
 * tBodyAccJerk-std()-Y
 * tBodyAccJerk-std()-Z
 * tBodyGyro-std()-X
 * tBodyGyro-std()-Y
 * tBodyGyro-std()-Z
 * tBodyGyroJerk-std()-X
 * tBodyGyroJerk-std()-Y
 * tBodyGyroJerk-std()-Z
 * fBodyAcc-std()-X
 * fBodyAcc-std()-Y
 * fBodyAcc-std()-Z
 * fBodyAccJerk-std()-X
 * fBodyAccJerk-std()-Y
 * fBodyAccJerk-std()-Z
 * fBodyGyro-std()-X
 * fBodyGyro-std()-Y
 * fBodyGyro-std()-Z
