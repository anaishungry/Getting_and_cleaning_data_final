#Getting and Cleaning Data
##Final Project by Anastassia Martynova

###Purpose

The purpose of this project was to collect, work with, and clean a data set. The goal was to prepare tidy data that can be used for later analysis. Included in this repo is
1) a tidy data set,
2) the script for performing the analysis,
3) a code book that describes the variables, the data, and any transformations or work that I performed to clean up the data called CodeBook.md, and
4) this file README.md

###Project Summary
The following were the steps taken to create the final tidy data set:

1) Merge the training and the test sets to create one data set

column names were assigned to train & test files, after which train & test files were merged between themselves, and later bound together.

2) Extracts only the measurements on the mean and standard deviation for each measurement.

Columns classified by having "std" and "mean" in the names were subset into a new dataframe using grep()

3) Descriptive activity names were used to name the activities in the data set

data were given descriptive activity names by merging by "activityId" corresponding to the activity names.

4) A vector with more descriptive column names was made and it was assigned to the last dataframe

gsub was used to do this

5) A tidy data set with the average of each variable for each activity and each subject was created using the aggregate function 

aggregate() was used to create a new dataset with means for each variable for each activity for each subject