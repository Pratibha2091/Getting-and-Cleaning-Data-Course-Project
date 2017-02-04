# Introduction
 
 The R code performs the 5 steps as descibed in the projects objectives.
 
 * 1) All the similar data with is merged using the `rbind()` function. 
 * 2) The columns with the mean and standard deviation measures are extracted from the whole dataset and they are given the correct names as per `features.txt`.
 * 3) We take the activity names and IDs from `activity_labels.txt` and they are substituted in the dataset.
 * 4) On the entire dataset, the vague column names are corrected.
 * 5) Finally, a new dataset is generated which includes all the average measures for each subject and activity type that is 
      30 subjects * 6 activities = 180 rows
      The output file is called `averages_data.txt`, and uploaded to this repository.
 
 # Variables
 
 * `xtrain`, `ytrain`, `xtest`, `ytest`, `subjecttrain` and `subjecttest` contain the data from the downloaded files.
 * `xdata`, `ydata` and `subjectdata` merge the previous datasets to further analysis.
 * `features` contains the correct names for the `xdata` dataset, which are applied to the column names stored in `meanandstdevfeatures`, a numeric vector used to extract the desired data.
 * A similar approach is taken with activity names through the `activities` variable.
 * `all_data` merges `xdata`, `ydata` and `subjectdata` in a big dataset.
 * Finally, `averages_data` contains the relevant averages which will be later stored in a `.txt` file. `ddply()` from the plyr package is used to apply `colMeans()` and ease the development.
