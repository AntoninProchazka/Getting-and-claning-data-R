# Getting-and-claning-data-R
This repository was created for peer-grading project on Coursera (course Getting and cleaning data) and it contains
1. folder data
2. file run_anylysis.R
3. file CodeBook.md
4. text file all_data_summarized.txt

1. FOLDER DATA
the repository contains data which were donloaded here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
A full description of data is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

2. File anylysis.R
all the steps of the file are commented in detail. Here is what the script is doing:  
a) Merges the training and the test sets to create one data set.
b) Extracts only the measurements on the mean and standard deviation for each measurement.
c) Uses descriptive activity names to name the activities in the data set
d) Appropriately labels the data set with descriptive variable names.
e) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each f) activity and each subject.

3. CODEBOOK.md
this file describes the variables that are contained in the final dataframe "all_data" producted by script run_analysis.R (before the final summarising by activity and subject)

4. all_data_summarized.txt
data set with the average of each variable for each activity and each subject. Result of the step 5 of the assignment.

