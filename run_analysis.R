###1.Merges the training and the test sets to create one data set.
##Load data
setwd("/Users/Anastassia/Documents/My Crap/School Work/Coursera/Data Science/Getting and Cleaning Data/Final Project/UCI HAR Dataset")
getwd()
list.files(".")

a_labels<-read.table("activity_labels.txt",header=FALSE)
features<-read.table("features.txt",header=FALSE)

setwd("/Users/Anastassia/Documents/My Crap/School Work/Coursera/Data Science/Getting and Cleaning Data/Final Project/UCI HAR Dataset/test")
getwd()
list.files(".")

xtest<-read.table("X_test.txt",header=FALSE)
ytest<-read.table("y_test.txt",header=FALSE)
stest<-read.table("subject_test.txt",header=FALSE)

setwd("/Users/Anastassia/Documents/My Crap/School Work/Coursera/Data Science/Getting and Cleaning Data/Final Project/UCI HAR Dataset/train")
getwd()
list.files(".")

xtrain<-read.table("X_train.txt",header=FALSE)
ytrain<-read.table("y_train.txt",header=FALSE)
strain<-read.table("subject_train.txt",header=FALSE)

#Assign column names to test data & merge them
colnames(stest)<-"subjectId"
colnames(xtest)<-features[,2] 
colnames(ytest)<-"activityId"
testdata<-cbind(ytest,stest,xtest);

#Assign column names to train data & merge them
colnames(xtrain)<-features[,2] 
colnames(ytrain)<-"activityId"
colnames(a_labels)<-c('activityId','activityType')
colnames(strain)<-"subjectId"
traindata<-cbind(ytrain,strain,xtrain)

#merge the train & test data
data1<-rbind(traindata,testdata)


###2.Extrainacts only the measurements on the mean and standard deviation for each measurement. 
data2 <- data1[,c(1,2,grep("mean", colnames(data1)), grep("std", colnames(data1)))]

###3.Uses descriptive activity names to name the activities in the data set
data3<- merge(data2,a_labels,by='activityId',all=TRUE)

###4.Appropriately a_labels the data set with descriptive variable names. 
colnames<-colnames(data3)
data4<-data3
names(data4)<-gsub("-|\\()", "", colnames)

###5.Creates a second, independent tidy data set with the average of each variable for
###each activity and each subject. 
notype<-data4[,names(data4)!="activityType"]
subject<-data4$subjectId
activity<-data4$activityId
data5<-aggregate(notype,by=list(activity,subject),mean)

write.table(data5, file = "./tidyData.txt", row.names=FALSE)