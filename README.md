# GettingAndCleaningData

Cleaning data for 
Human Activity Recognition Using Smartphones Dataset


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

# The repository includes the following files:
'README.md'

'codebook.md': contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.

'run_analysis.R': script.

'tidySet.txt': independent tidy data set with the average of each variable for each activity and each subject.

# How the script run_analysis works
<li> Read Training data using read.table command
<li> Read Test data using read.table command
<li> Read feature and activity labels
<li> "Join" all data using rbind
<li> Give col names to data set - X, Y, activities and subjects
<li> Extract columns with mean or std in names
<li> Rbind all 3 data sets to create a final data frame
<li> melt the data sets using 1st three variables as id
<li> Use dcast to average all other variables
<li> Write to File

