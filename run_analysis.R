
 
#setwd("C:/SKOLA/Coursera/Getting and cleaning  data (R)")

# reading testing set - features
test <- read.table("./data/assignment/test/X_test.txt",  header=FALSE)

#reading feature names
feature_names <- read.table("./data/assignment/features.txt", header=FALSE)
# renaming default variable names with feature names
test <- setNames(test, feature_names$V2)

# reading activities and inserting the values in the new column
activity_test <- read.table("./data/assignment/test/y_test.txt", header=FALSE)
test$activity <- activity_test$V1

#reading subjects and insertin the values in the new column
subject_test <- read.table("./data/assignment/test/subject_test.txt", header=FALSE)
test$subject <- subject_test$V1

# reading training set - features, activities and subjects
train <- read.table("./data/assignment/train/X_train.txt",  header=FALSE)
train <- setNames(train, feature_names$V2)
activity_train <- read.table("./data/assignment/train/y_train.txt", header=FALSE)
train$activity <- activity_train$V1
subject_train <- read.table("./data/assignment/train/subject_train.txt", header=FALSE)
train$subject <- subject_train$V1

# merging train and test sets
all_data <- rbind(train, test)

# selecting only means and std using dplyr
library(dplyr)
all_data <- select(all_data, subject, contains("mean()"), contains("std()"), activity)

# reading activity labels and renaming the column name
activity_labels <- read.table("./data/assignment/activity_labels.txt", header=FALSE)
activity_labels <- rename(activity_labels, activity="V1")

# left join of the data with activity labels: will create a new column
all_data <- left_join(all_data, activity_labels, by="activity")
# delete activity column (numbers)
all_data <- select(all_data, -activity)
# rename column V2 with activity labels to "activity"
all_data <- rename(all_data, activity="V2") 

# cleaning variable names: removing "()", and replacing t with time (time domain) and f with freq (frequency domain) 
names(all_data) <- gsub("\\()", "", names(all_data))
names(all_data) <- sub("^t", "time-", names(all_data))
names(all_data) <- sub("^f", "freq-", names(all_data))

# grouping by activity and subject using dplyr package
by_subject <- group_by(all_data, activity, subject)
#summarizing data - mean of each variable
all_data_summarized <- summarize_all(by_subject, mean)
# renaming from 3rd column to the last column - writing MEANof- at begining of each variable to clarify that they are all means
names(all_data_summarized)[3:dim(all_data_summarized)[2]] <- sub("^", "MEANof-", names(all_data_summarized)[3:dim(all_data_summarized)[2]])

# viewing summarized data
str(all_data_summarized)
View(all_data_summarized)

#saving summarized data in txt file
write.table(all_data_summarized, file="all_data_summarized.txt", row.name=FALSE)
