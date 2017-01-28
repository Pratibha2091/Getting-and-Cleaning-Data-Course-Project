# Getting-and-Cleaning-Data-Course-Project

Steps carried out:

In first step the data was merged using the rbind() function. 
The files having the same number of columns were addressed using the same entities.
Then selecting the coumns with mean and standard deviation measures and extracting extracting them, they were given the 
proper names using features data.
The 1:6 values from activity data set were used for names and IDs and were put in the dataset.
Lastly I created a new dataset which consisted of all the average measures for each subject and activity type.

Variables Description

xtrain, ytrain, xtest, ytest, subjecttrain and subjecttest were for the features in original file.
xdata, ydata and subjectdata were the merged variables.
features contains the correct names for the x_data dataset, which are applied to the column names stored in mean_and_std_features, a numeric vector used to extract the desired data.
For activities variable.
data joins xdata, ydata and subjectdata
averages consists of relevant averages which is stored in .txt file. ddply() from the plyr package.