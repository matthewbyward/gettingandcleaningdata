# Getting and Cleaning Data: Course Project

## CodeBook

The variables in the tidy data are as follows:

* subject_id - The id of the experiment participant
* activity_name - the name of the activity that was measured


The features selected for the original data set come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from the above original signals are listed below, which are the mean for all observations for each activity per participant: 


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

### More Information

Descriptions of the measurement data points that this data was derived from can be found in the unzipped experiement data in `UCI HAR Dataset/README.txt` and `UCI HAR Dataset/features_info.txt`
