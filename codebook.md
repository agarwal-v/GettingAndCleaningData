# Code Book

This document describes the variables inside `run_analysis.R`.

<li> sub_train: Data read from "UCI HAR Dataset/train/subject_train.txt". Also used to store merged data.
<li> x_train: Data read from "UCI HAR Dataset/train/X_train.txt". Also used to store merged data.
<li> y_train: Data read from "UCI HAR Dataset/train/y_train.txt". Also used to store merged data.
<li> sub_test: Data read from "UCI HAR Dataset/test/subject_test.txt"
<li> x_test: Data read from "UCI HAR Dataset/test/X_test.txt"
<li> y_test: Data read from "UCI HAR Dataset/test/y_test.txt"
<li> features: Data read from "UCI HAR Dataset/features.txt"
<li> activity: Data read from "UCI HAR Dataset/activity_labels.txt"

<li> x_meanstd: Extract X data columns with mean or std in names  
<li> y_activityNames: y_train data with ACtivity Names added
<li> df: Data frame with all elementsi (sub_train, y_activityNames, x_meanstd) combined 

<li> dfMelt: Melted dataset using subject and activity as id
<li> tidySet: Final tidied data set

