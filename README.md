
Readme
Sunday, October 25, 2015

Project Overview
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

Data Source
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data can be obtained from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Modifying the Script
Once you have obtained and unzipped the source files, you will need to make one modification to the R file before you can process the data. Note that on line 26 of run_analysis.R, you will set the path of the working directory to relect the location of the source files in your own directory.

For each record it is provided:
Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
Triaxial Angular velocity from the gyroscope.
A 561-feature vector with time and frequency domain variables.
Its activity label.
An identifier of the subject who carried out the experiment.
The dataset includes the following files:
‘README.txt’

‘features_info.txt’: Shows information about the variables used on the feature vector.

‘features.txt’: List of all features.

‘activity_labels.txt’: Links the class labels with their activity name.

‘train/X_train.txt’: Training set.

‘train/y_train.txt’: Training labels.

‘test/X_test.txt’: Test set.

‘test/y_test.txt’: Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

‘train/subject_train.txt’: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

‘train/Inertial Signals/total_acc_x_train.txt’: The acceleration signal from the smartphone accelerometer X axis in standard gravity units ‘g’. Every row shows a 128 element vector. The same description applies for the ‘total_acc_x_train.txt’ and ‘total_acc_z_train.txt’ files for the Y and Z axis.

‘train/Inertial Signals/body_acc_x_train.txt’: The body acceleration signal obtained by subtracting the gravity from the total acceleration.

‘train/Inertial Signals/body_gyro_x_train.txt’: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

Project Task
One R script called run_analysis.R is created that does the following.

Merges the training and the test sets to create one data set.
After downloading the different attributes of the training and the test data, the next step involved in merging the traning and the test to create one data set.

Extracts only the measurements on the mean and standard deviation for each measurement.
From the merged dataset the measurements on the mean and standard deviation for each measurement is extracted.

Uses descriptive activity names to name the activities in the data set.
Then using the descriptive activity names the different activities in the data sets are renamed

Appropriately labels the data set with descriptive variable names.
The data sets are appropriately labeled with descriptive variable names.

From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Finally, using the data set created in step 4, an second independent tidy data set named “TidyData” containing the average of each variable for each activity and each subject is created.
