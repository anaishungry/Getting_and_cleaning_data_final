#Codebook

The experiments used to collect this date were performed on a group of 30 volunteers ages 19-48 years. The first category of "Activity/Subject" indicate one of six activities performed (walking, walking_upstairs, walking_downstairs, sitting, standing, laying) or one of the 30 individuals.

Each value in the tidy data set is a mean of the variable (column name) for the specific activity or subject listed in column 1.

Each variable is indicated to be the mean() or std() of one of the following:
- triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration (time or frequency domain)
- triaxial Angular velocity from the gyroscope (time or frequency domain)

###Some variable descriptions

- f: frequency analysis
- t: time analisys
- mean: calculated average
- std: calculated standard deviation
- activityId: ID code of activity being performed at the time
- subjectId: participant ID
- Mag: magnitude of linear acceleration and angular velocity
- BodyAcc: body acceleration
- BodyAccJerk: body linear acceleration
- GravityAcc: gravity acceleration
- BodyGyroJerk: body angular velocity
- XYZ: denotes axial direction

###Further Information
Full description for obtained data can be foud at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip





For more information on how the values used for the tidy data set were calculated please consult the README files included with the original data:

Human Activity Recognition Using Smartphones Dataset
Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws