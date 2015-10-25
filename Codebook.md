Getting and Cleaning Data
Sunday, October 25, 2015

Data Description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Data Source
The data for the project is downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

For each record in the dataset it is provided: - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. - Triaxial Angular velocity from the gyroscope. - A 561-feature vector with time and frequency domain variables. - Its activity label. - An identifier of the subject who carried out the experiment.

1. Merges the training and the test sets to create one data set.
The data is extracted and copied in a folder UCIHARDataset. then the training and test sets are merged together.

features.txt, activity_labels.txt, subject_train.txt, x_train.txt, y_train.txt, subject_test.txt, x_test.txt, y_test.txt
2. Extracts only the measurements on the mean and standard deviation for each measurement.
Then, a logical vector is created which contains the measurement on the mean and standard deviation.

3. Uses descriptive activity names to name the activities in the data set
The activities of the UCIHARDataset are renamed to include descriptive activity names

4. Appropriately labels the data set with descriptive variable names.
The variables of the UCIHARDatasets are renamed with descriptive variables name.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Then, using the data set in step 4, a second independent tidy data set with the average of each variable for each activity and each subject is created.
