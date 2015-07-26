---
title: "CodeBook.md"
output: html_document
date: "July 26, 2015"
---

This is a CodeBook that describes the variables, the data, and any transformations  performed to clean up the data sets downloaded from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip". The code used to generate the final clean data table "final_tidy_data.txt" is saved as "run_analysis.R".

#final_tidy_data

###Columns

####*subject* : Identify the subject who performed the activity. The range is from 1 to 30.
####*activity_names* : Identify the activity lebels performed by each subject.
####*average* : The mean value of each variable for each activity and each subject.

###Data

#### This data table gives the tidy form that gives the mean value of each variable for each activity and each subject. It has only one data type in this table, has one observation in each row.

###Transformations
####Intermediate data table used to generate the final_tidy_data: data_melt
####The original combined data sets are extracted to only include the mean and standard deviations measurements(variables). The resulting data table is melt into this intermideate data table that has one tidy variable column containing all the type of measurements. This data_melt contains the columns: subject,activity_names, variable and value.  Then this data_melt table is used to calculate the mean values for each subject and each activity. 

###Note
####The measurments(variable) used to calculate the mean values include the following:
tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  
tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  
tBodyAccMag-mean()  
tBodyAccMag-std()  
tGravityAccMag-mean()  
tGravityAccMag-std()  
tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std()  
tBodyGyroMag-mean()  
tBodyGyroMag-std()  
tBodyGyroJerkMag-mean()  
tBodyGyroJerkMag-std()  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  
fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z  
fBodyAccMag-mean()  
fBodyAccMag-std())  
fBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-std()  
fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-std()  















