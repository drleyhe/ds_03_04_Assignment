
#step 1: Read data files

features		<- read.table("UCI HAR Dataset/features.txt", header=FALSE, stringsAsFactors = FALSE)
activityLabel	<- read.table("UCI HAR Dataset/activity_labels.txt", header=FALSE, stringsAsFactors = FALSE, col.names = c("ID", "activity"))

dataTrain		<- read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE, strip.white = TRUE)
subjectTrain	<- read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE, stringsAsFactors = FALSE, col.names = 'subject')
activityTrain	<- read.table("UCI HAR Dataset/train/y_train.txt", header=FALSE, strip.white = TRUE, col.names = 'activityID')

dataTest		<- read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE, strip.white = TRUE)
subjectTest		<- read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE, stringsAsFactors = FALSE, col.names = 'subject')
activityTest	<- read.table("UCI HAR Dataset/test/y_test.txt", header=FALSE, strip.white = TRUE, col.names = 'activityID')

#step 2: Extracts only the measurements on the mean and standard deviation for each measurement.

featuresSub		<- features[sort(unique(c(grep("mean", features[,2]), grep("std", features[,2])))),]

dataTrainSub	<- dataTrain[,featuresSub[,1]]
dataTestSub		<- dataTest[,featuresSub[,1]]

#step 3: Appropriately labels the data set with descriptive variable names.

colnames(dataTrainSub)	<- gsub("[()]|[-]", "", featuresSub[,2])
colnames(dataTestSub)	<- gsub("[()]|[-]", "", featuresSub[,2])

#step 4: Merges the training and the test sets to create one data set.

data	<- rbind(cbind(dataTrainSub, subjectTrain, activityTrain),
				 cbind(dataTestSub , subjectTest , activityTest ))

#step 5: Uses descriptive activity names to name the activities in the data set

data	<- merge(data, activityLabel, by.x = "activityID", by.y = "ID")


###### Create a second, independent tidy data set with the average of each variable for each activity and each subject

dataset2	<- aggregate(data[,!colnames(data) %in% c("subject", "activity", "activityID")], list(subject = data$subject, activity = data$activity), mean)

write.table(dataset2, "tidy_dataset.txt", row.name=FALSE)
