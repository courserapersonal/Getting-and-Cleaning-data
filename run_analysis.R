#download data files,unzip and name the folder as data
temp<-tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",temp,method="curl")
data<-unzip(temp)

#install packages
install.packages("dplyr")
install.packages("reshape2")
install.packages("plyr")

#read all the necessary train and test data sets
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
x_train<-read.table("./UCI HAR Dataset/train/X_train.txt" )
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt" )
y_train<- read.table("./UCI HAR Dataset/train/y_train.txt" )
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt" )
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt" )

#combine x_test and y_test to add activity column, then combine that with subject_test to add subject column
test_2 <- cbind(x_test,y_test)
colnames(test_2)[562] <- "activity"
test <- cbind(test_2,subject_test)
colnames(test)[563] <- "subject"

#combine x_train and y_train to add activity column, then combine that with subject_train to add subject column
train_2 <- cbind(x_train,y_train)
colnames(train_2)[562] <- "activity"
train <- cbind(train_2,subject_train)
colnames(train)[563] <- "subject"

#merge test and train sets
merged <- rbind(test,train)

#Extracts only the measurements on the mean and standard deviation for each measurement
extract <- merged[,c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,529:530,542:543,562:563)]

#Uses descriptive activity names to name the activities in the data set,then remove the activity column
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(activities)<- c("activity","activity_name")
library(dplyr)
named_activity<-arrange(left_join(extract,activities),activity)
named_activity$activity<-NULL

#Appropriately labels the data set with descriptive variable names
features<-read.table("./UCI HAR Dataset/features.txt")
subset_features<-features[c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,529:530,542:543,562:563),2]
colnames(named_activity)<-subset_features[,1]
dim(named_activity) ##got dimension as 10299x66: total 66 columns
colnames(named_activity)[65]="subject"
colnames(named_activity)[66]="activity_names"

#creating a tidy data set
library(reshape2)
library(plyr)
data_melt<-melt(named_activity, id=c("subject", "activity_names")
data_final<-ddply(data_melt, .(subject, activity_names), summarize, average=mean(value))

#export the final tidy file
write.csv(data_final, file = "final_tidy_data.txt",row.names = FALSE)

