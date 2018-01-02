---
title: "CodeBook"
output: html_document
---

## Data set Information

The dataset is a data-subset from the following experiment: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones .

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
"

## Changes to original Dataset

- Merged the test and train datasets
- Selected mean and std columns
- Added descriptive activity names to name the activities
- Relabel the data set with descriptive variable names
- Calucaluting the average of each variable for each activity and each subject.

## Variable Description

Columnname|Description
----------|-----------
subject|SubjectID
activity|Activity Label
tBodyAccmeanX|Mean time of body acceleration in X direction
tBodyAccmeanY|Mean time of body acceleration in Y direction
tBodyAccmeanZ|Mean time of body acceleration in Z direction
tBodyAccstdX|Standard deviation of time of body acceleration in X direction
tBodyAccstdY|Standard deviation of time of body acceleration in Y direction
tBodyAccstdZ|Standard deviation of time of body acceleration in Z direction
tGravityAccmeanX|Mean time of gravity acceleration in X direction
tGravityAccmeanY|Mean time of gravity acceleration in Y direction
tGravityAccmeanZ|Mean time of gravity acceleration in Z direction
tGravityAccstdX|Standard deviation of time of gravity acceleration in X direction
tGravityAccstdY|Standard deviation of time of gravity acceleration in Y direction
tGravityAccstdZ|Standard deviation of time of gravity acceleration in Z direction
tBodyAccJerkmeanX|Mean time of body jerk acceleration in X direction
tBodyAccJerkmeanY|Mean time of body jerk acceleration in Y direction
tBodyAccJerkmeanZ|Mean time of body jerk acceleration in Z direction
tBodyAccJerkstdX|Standard deviation of time of body jerk acceleration in X direction
tBodyAccJerkstdY|Standard deviation of time of body jerk acceleration in Y direction
tBodyAccJerkstdZ|Standard deviation of time of body jerk acceleration in Z direction
tBodyGyromeanX|Mean of body gyroscope measurement in X direction
tBodyGyromeanY|Mean of body gyroscope measurement in Y direction
tBodyGyromeanZ|Mean of body gyroscope measurement in Z direction
tBodyGyrostdX|Standard deviation of body gyroscope measurement in X direction
tBodyGyrostdY|Standard deviation of body gyroscope measurement in Y direction
tBodyGyrostdZ|Standard deviation of body gyroscope measurement in Z direction
tBodyGyroJerkmeanX|Mean of body gyroscope jerk measurement in X direction
tBodyGyroJerkmeanY|Mean of body gyroscope jerk measurement in Y direction
tBodyGyroJerkmeanZ|Mean of body gyroscope jerk measurement in Z direction
tBodyGyroJerkstdX|Standard deviation of body gyroscope jerk measurement in X direction
tBodyGyroJerkstdY|Standard deviation of body gyroscope jerk measurement in Y direction
tBodyGyroJerkstdZ|Standard deviation of body gyroscope jerk measurement in Z direction
tBodyAccMagmean|Mean magnitude of body acceleration
tBodyAccMagstd|Standard deviation of magnitude of body acceleration
tGravityAccMagmean|Mean magnitude of gravity acceleration
tGravityAccMagstd|Standard deviation of magnitude of gravity acceleration
tBodyAccJerkMagmean|Mean jerk magnitude of body acceleration
tBodyAccJerkMagstd|Standard deviation of jerk magnitude of body acceleration
tBodyGyroMagmean|Mean magnitude of body gyroscope measurement
tBodyGyroMagstd|Standard deviation of magnitude of body gyroscope measurement
tBodyGyroJerkMagmean|Mean jerk magnitude of body gyroscope measurement
tBodyGyroJerkMagstd|Standard deviation of jerk magnitude of body gyroscope measurement
fBodyAccmeanX|FFT of Mean time of body acceleration in X direction
fBodyAccmeanY|FFT of Mean time of body acceleration in Y direction
fBodyAccmeanZ|FFT of Mean time of body acceleration in Z direction
fBodyAccstdX|FFT of Standard deviation of time of body acceleration in X direction
fBodyAccstdY|FFT of Standard deviation of time of body acceleration in Y direction
fBodyAccstdZ|FFT of Standard deviation of time of body acceleration in Z direction
fBodyAccmeanFreqX|FFT of Mean frequency of body acceleration in X direction
fBodyAccmeanFreqY|FFT of Mean frequency of body acceleration in Y direction
fBodyAccmeanFreqZ|FFT of Mean frequency of body acceleration in Z direction
fBodyAccJerkmeanX|FFT of Mean time of body jerk acceleration in X direction
fBodyAccJerkmeanY|FFT of Mean time of body jerk acceleration in Y direction
fBodyAccJerkmeanZ|FFT of Mean time of body jerk acceleration in Z direction
fBodyAccJerkstdX|FFT of Standard deviation of time of body jerk acceleration in X direction
fBodyAccJerkstdY|FFT of Standard deviation of time of body jerk acceleration in Y direction
fBodyAccJerkstdZ|FFT of Standard deviation of time of body jerk acceleration in Z direction
fBodyAccJerkmeanFreqX|FFT of Mean frequency of body jerk acceleration in X direction
fBodyAccJerkmeanFreqY|FFT of Mean frequency of body jerk acceleration in Y direction
fBodyAccJerkmeanFreqZ|FFT of Mean frequency of body jerk acceleration in Z direction
fBodyGyromeanX|FFT of Mean of body gyroscope measurement in X direction
fBodyGyromeanY|FFT of Mean of body gyroscope measurement in Y direction
fBodyGyromeanZ|FFT of Mean of body gyroscope measurement in Z direction
fBodyGyrostdX|FFT of Standard deviation of body gyroscope measurement in X direction
fBodyGyrostdY|FFT of Standard deviation of body gyroscope measurement in Y direction
fBodyGyrostdZ|FFT of Standard deviation of body gyroscope measurement in Z direction
fBodyGyromeanFreqX|FFT of Mean frequency of body gyroscope measurement in X direction
fBodyGyromeanFreqY|FFT of Mean frequency of body gyroscope measurement in Y direction
fBodyGyromeanFreqZ|FFT of Mean frequency of body gyroscope measurement in Z direction
fBodyAccMagmean|FFT of Mean magnitude of body acceleration
fBodyAccMagstd|FFT of Standard deviation of magnitude of body acceleration
fBodyAccMagmeanFreq|FFT of Mean frequency magnitude of body acceleration
fBodyBodyAccJerkMagmean|FFT of Mean jerk magnitude of body acceleration
fBodyBodyAccJerkMagstd|FFT of Standard deviation of jerk magnitude of body acceleration
fBodyBodyAccJerkMagmeanFreq|FFT of Mean jerk frequency magnitude of body acceleration
fBodyBodyGyroMagmean|FFT of Mean magnitude of body gyroscope measurement
fBodyBodyGyroMagstd|FFT of Standard deviation of magnitude of body gyroscope measurement
fBodyBodyGyroMagmeanFreq|FFT of Mean frequency magnitude of body gyroscope measurement
fBodyBodyGyroJerkMagmean|FFT of Mean jerk magnitude of body gyroscope measurement
fBodyBodyGyroJerkMagstd|FFT of Standard deviation of jerk magnitude of body gyroscope measurement
fBodyBodyGyroJerkMagmeanFreq|FFT of Mean frequency jerk magnitude of body gyroscope measurement
