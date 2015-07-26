---
title: "README.md"
date: "July 26, 2015"
output: html_document
---

#Course Project

This project works on data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:  

"http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "  

Here are the data for the project:  

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Requirements

Create one R script called run_analysis.R that does the following  
1.Merges the training and the test sets to create one data set.  
2.Extracts only the measurements on the mean and standard deviation for each measurement.  
3.Uses descriptive activity names to name the activities in the data set.  
4.Appropriately labels the data set with descriptive variable names.  
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  

##Notes on running the script run_analysis.R

1. Make sure three packages are installed and called using library(): dplyr, plyr and reshape2. 
2. Unzip the folders using unzip function in R.  
3. There are 3 files in each of the train and test data folders are read and merged.  
4. Use left_join and arrange in dplyr package to match the activity labels to the activity numbers.  
5. Use colnames function to name the variables(columns).  
6. Use melt in the reshape2 package to combined variables(measurements) under one variable column to give a tidy data.  
7. Use ddply in the plyr package to summerize the data.  


