library(plyr)
# 1) Merge the Test and Train data
##Read the data
xtrain <- read.table("X_train.txt")
ytrain <- read.table("y_train.txt")
subjecttrain <- read.table("subject_train.txt")

xtest <- read.table("X_test.txt")
ytest <- read.table("y_test.txt")
subjecttest <- read.table("subject_test.txt")

##Merge testing and training dataset into one data set
xdata <- rbind(xtrain, xtest)

ydata <- rbind(ytrain, ytest)

subjectdata <- rbind(subjecttrain, subjecttest)

# 2) Extract only the measurements on the mean and standard deviation for each measurement
features <- read.table("features.txt")

# Columns with mean and std
meanandstdevfeatures <- grep("-(mean|std)\\(\\)", features[, 2])

#Create subset of these columns
xdata <- xdata[, meanandstdevfeatures]

names(xdata) <- features[meanandstdevfeatures, 2]

#3) Use descriptive activity names to name the activities in the data set
activities <- read.table("activity_labels.txt")

ydata[, 1] <- activities[ydata[, 1], 2]

names(ydata) <- "activity"

# Appropriately label the data set with descriptive variable names

names(subjectdata) <- "subject"

# bind all the data in a single data set
data <- cbind(xdata, ydata, subjectdata)


# Create a second, independent tidy data set with the average of each variable for each activity and each subject

averages <- ddply(data, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(averages, "averages_data.txt", row.name=FALSE)
