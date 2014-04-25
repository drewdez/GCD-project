#Getting and Cleaning Data Project code book

This code book explains the process used to create the tidy data set, `tidy_data.txt`, from the raw data, and explains the format of the tidy data set and the included variables.

For the commented R script, see `run_analysis.R`.

##Cleaning Process

1. Import feature labels from `UCI HAR Dataset/features.txt`, and create a subset of labels representing means or standard deviations of measurements. For the purpose of this analysis, variables representing means or standard deviations are interpreted as those including "mean()" or "std()."
2. Import activity labels from `UCI HAR Dataset/activity_labels.txt`, convert to lowercase, and remove underscore characters for ease of use.
3. Import training and test data set features, subjects, and activity codes from `UCI HAR Dataset/[group]/X_[group].txt`, `UCI HAR Dataset/[group]/subject_[group].txt`, and `UCI HAR Dataset/[group]/y_[group].txt`, respectively.
4. Convert training activity codes into factors, and label using the reformatted text activity descriptions from Step 2.
5. Combine subjects, activities, and selected features into a single data frame for each of the training and test data sets.
6. Merge training and test data sets.
7. Melt combined data set and recast into desired format&mdash;one record for each subject/activity combination, one column for subject, activity, and each of 66 average accelerometer/gyroscope signal means and standard deviations.
8. Write output data set to ASCII file.

##Tidy Data Set

The tidy data set, `tidy_data.txt`, is a space-delimited ASCII file containing a header row plus one record for each subject/activity combination (30 subjects * 6 activities = 180 total records), and 68 columns&mdash;one each for subject, activity, and 66 average accelerometer/gyroscope signal means and standard deviations. Additional information for each variable is included below.

####Variables

* **subject** &mdash; An integer value from 1&ndash;30 identifying the test subject.
* **activity** &mdash; A character value indicating the activity being performed by the subject. Possible values are *walking*, *walkingupstairs*, *walkingdownstairs*, *sitting*, *standing*, and *laying*.
* **average accelerometer/gyroscope signal means and standard deviations** &mdash; The following variables represent the average values across the indicated subject and activity of various accelerometer and gyroscope signal means and standard deviations. Variables containing "mean()" indicate mean signals, and values containing "std()" indicate standard deviation of signals. Variables ending in "-X", "-Y", or "-Z" indicate measurements specific to a particular axis. For more details on accelerometer and gyroscope signals, reference `UCI HAR Dataset/features_info.txt`.
    * *tBodyAcc-mean()-X*
    * *tBodyAcc-mean()-Y*
    * *tBodyAcc-mean()-Z*
    * *tBodyAcc-std()-X*
    * *tBodyAcc-std()-Y*
    * *tBodyAcc-std()-Z*
    * *tGravityAcc-mean()-X*
    * *tGravityAcc-mean()-Y*
    * *tGravityAcc-mean()-Z*
    * *tGravityAcc-std()-X*
    * *tGravityAcc-std()-Y*
    * *tGravityAcc-std()-Z*
    * *tBodyAccJerk-mean()-X*
    * *tBodyAccJerk-mean()-Y*
    * *tBodyAccJerk-mean()-Z*
    * *tBodyAccJerk-std()-X*
    * *tBodyAccJerk-std()-Y*
    * *tBodyAccJerk-std()-Z*
    * *tBodyGyro-mean()-X*
    * *tBodyGyro-mean()-Y*
    * *tBodyGyro-mean()-Z*
    * *tBodyGyro-std()-X*
    * *tBodyGyro-std()-Y*
    * *tBodyGyro-std()-Z*
    * *tBodyGyroJerk-mean()-X*
    * *tBodyGyroJerk-mean()-Y*
    * *tBodyGyroJerk-mean()-Z*
    * *tBodyGyroJerk-std()-X*
    * *tBodyGyroJerk-std()-Y*
    * *tBodyGyroJerk-std()-Z*
    * *tBodyAccMag-mean()*
    * *tBodyAccMag-std()*
    * *tGravityAccMag-mean()*
    * *tGravityAccMag-std()*
    * *tBodyAccJerkMag-mean()*
    * *tBodyAccJerkMag-std()*
    * *tBodyGyroMag-mean()*
    * *tBodyGyroMag-std()*
    * *tBodyGyroJerkMag-mean()*
    * *tBodyGyroJerkMag-std()*
    * *fBodyAcc-mean()-X*
    * *fBodyAcc-mean()-Y*
    * *fBodyAcc-mean()-Z*
    * *fBodyAcc-std()-X*
    * *fBodyAcc-std()-Y*
    * *fBodyAcc-std()-Z*
    * *fBodyAccJerk-mean()-X*
    * *fBodyAccJerk-mean()-Y*
    * *fBodyAccJerk-mean()-Z*
    * *fBodyAccJerk-std()-X*
    * *fBodyAccJerk-std()-Y*
    * *fBodyAccJerk-std()-Z*
    * *fBodyGyro-mean()-X*
    * *fBodyGyro-mean()-Y*
    * *fBodyGyro-mean()-Z*
    * *fBodyGyro-std()-X*
    * *fBodyGyro-std()-Y*
    * *fBodyGyro-std()-Z*
    * *fBodyAccMag-mean()*
    * *fBodyAccMag-std()*
    * *fBodyBodyAccJerkMag-mean()*
    * *fBodyBodyAccJerkMag-std()*
    * *fBodyBodyGyroMag-mean()*
    * *fBodyBodyGyroMag-std()*
    * *fBodyBodyGyroJerkMag-mean()*
    * *fBodyBodyGyroJerkMag-std()*
