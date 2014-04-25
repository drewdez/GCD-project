#Getting and Collecting Data Project

This repository contains my project submission for the [Coursera Getting and Cleaning Data course](https://www.coursera.org/course/getdata).

##Project Description

The overall goal of the project is to import multiple sets of raw data, and process them to create a tidy data set that satisfies a number of specific criteria.

The raw data represents readings taken from the accelerometers and gyroscopes of smartphones worn by volunteers performing various activities. The following is taken from the raw data description.*

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The data, available [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), contains separate sets of observations for the training and test groups described above. These raw data are processed by an R script, `run_analysis.R`, which satisfies the following 5 criteria specified in the project instructions.

> 1. Merges the training and the test sets to create one data set.
> 2. Extracts only the measurements on the mean and standard deviation for each measurement.
> 3. Uses descriptive activity names to name the activities in the data set
> 4. Appropriately labels the data set with descriptive activity names.
> 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Details of the data cleaning process are provided in `CodeBook.md`. The result is a tidy data set that satisfies the project requirements, `tidy_data.txt`.

*Additional information on the input dataset is available from the [project page](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) at the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/index.html).

##Repository Contents

This repository contains the following:

File | Description
---- | -----------
`README.md` | readme file (this file) describing the overall project and the contents of this repository
`UCI HAR Dataset/` | raw data, unzipped (Inertial Signals folders not included)
`CodeBook.md` | code book describing data cleaning process and output data
`run_analysis.R` | R script
`tidy_data.txt` | tidy data set
