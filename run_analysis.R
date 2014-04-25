## Getting and Cleaning Data Project run_analysis.R script

## This script combines two sets (a training set and a test set) of raw
## accelerometer and gyroscope data taken from an experiment using the Samsung
## Galaxy S smartphone, and outputs a tidy data set containing the average value
## of each mean and standard deviation accelerometer reading for each
## combination of subject and activity.

## The script requires that the root data folder (UCI HAR Dataset) be located in
## the working directory.

## load reshape2 library
require(reshape2)

## import feature labels; select labels containing either "mean()" or "std()"
feature_labels_all <- scan("UCI HAR Dataset/features.txt",
        what = list(NULL, "character"))[[2]]
feature_labels_selected <- grep("mean\\(\\)|std\\(\\)", feature_labels_all,
        ignore.case = TRUE, value = TRUE)

## import activity labels into a vector, converting to lowercase, and removing
## underscores
activity_labels <- tolower(sub("_", "",
        scan("UCI HAR Dataset/activity_labels.txt",
        what = list(NULL, "character"))[[2]]))

## import training data set features, subject, activity codes
train_features <- read.table("UCI HAR Dataset/train/X_train.txt")
names(train_features) <- feature_labels_all
train_subjects <- as.integer(scan("UCI HAR Dataset/train/subject_train.txt"))
train_activity_codes <- as.integer(scan("UCI HAR Dataset/train/y_train.txt"))

## convert training activity codes into a factor, label using activity_labels
## vector
train_activities <- factor(train_activity_codes, labels = activity_labels)

## combine training subjects, activities, selected features
train <- cbind(subject = train_subjects, act_code = train_activity_codes,
        activity = train_activities, train_features[,feature_labels_selected])

## import test data set features, subject, activity codes
test_features <- read.table("UCI HAR Dataset/test/X_test.txt")
names(test_features) <- feature_labels_all
test_subjects <- as.integer(scan("UCI HAR Dataset/test/subject_test.txt"))
test_activity_codes <- as.integer(scan("UCI HAR Dataset/test/y_test.txt"))

## combine test subjects, activities, selected features
test_activities <- factor(test_activity_codes, labels = activity_labels)

## combine test subjects, activities, selected features
test <- cbind(subject = test_subjects, act_code = test_activity_codes,
        activity = test_activities, test_features[,feature_labels_selected])

## merge train and test data sets
combined <- merge(train, test, all = TRUE)

## melt combined data set and recast
molten <- melt(combined, id.vars = c("subject", "activity"),
        measure.vars = feature_labels_selected)
output <- dcast(molten, subject + activity ~ variable, mean)

## write final data set to table
write.table(output, file = "tidy_data.txt", row.names = FALSE)
