# fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# download.file(fileURL, "set.zip", method = "curl")

#Read Training data
sub_train<- read.table("UCI HAR Dataset/train/subject_train.txt")
x_train<- read.table("UCI HAR Dataset/train/X_train.txt")
y_train<- read.table("UCI HAR Dataset/train/y_train.txt")

#Read Test data
sub_test<- read.table("UCI HAR Dataset/test/subject_test.txt")
x_test<- read.table("UCI HAR Dataset/test/X_test.txt")
y_test<- read.table("UCI HAR Dataset/test/y_test.txt")

#Read feature and activity labels
features <- read.table("UCI HAR Dataset/features.txt")
activity <- read.table("UCI HAR Dataset/activity_labels.txt")

# "Join" all data using rbind
x_train <- rbind(x_train, x_test)
y_train <- rbind(y_train, y_test)
sub_train <- rbind(sub_train, sub_test)


# Give col names to data set
names(x_train) <- features[, 2]
names(y_train) <- "Activity"
names(sub_train) <- "Subjects"
names(activity) <- c("ActivityId", "ActivityName")


y_train$Activity <- factor(y_train$Activity,
                    levels = activity$ActivityId,
                    labels = activity$ActivityName)
# Extract columns with mean or std in names
x_meanstd <- x_train[,grep("mean|std", features[,2], ignore.case = TRUE)]

#Rbind all 3 data sets to create a final data frame
df <- cbind(sub_train, y_train, x_meanstd)

# melt the data sets using 1st three variables as id
dfMelt <- melt(df,id=c(names(sub_train), names(y_train)),
               measure.vars=names(x_meanstd))

#average all other variables
tidySet <- dcast(dfMelt, Subjects + Activity ~ variable, mean)

# Write to File
write.table(tidySet, file = "tidySet.txt", row.names = FALSE)
