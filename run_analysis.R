##The purpose of this project is to demonstrate an ability to collect, work with, and clean a data set.
##The outcome is to prepare tidy data that can be used for later analysis.

##One of the most exciting areas in all of data science right now is wearable computing . 
##Companies like >Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. >The data linked to from the course website represent data collected from the accelerometers from the >Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
##
##http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
##
##Here are the datasets for the project: 
##
##https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##---------------------------------------------------------------------------------------

## Get a list of installed packages

    installed_packages <- installed.packages()

## Check if reshape2, data.table, markdown, knitr packages are installed
    
    if (is.element("reshape2", installed_packages[,1]) == FALSE)
    { install.packages("reshape2")
    }
    if (is.element("data.table", installed_packages[,1]) == FALSE)
    { install.packages("data.table")
    }
    if (is.element("markdown", installed_packages[,1]) == FALSE)
    { install.packages("markdown")
    }
    if (is.element("knitr", installed_packages[,1]) == FALSE)
    { install.packages("knitr")
    }

## load all these packages

    library(reshape2)
    library(data.table)
    library(markdown)
    library(knitr)

##Read Train Features Data Set 
    
    traindata_features = read.table("./UCI HAR Dataset/train/X_train.txt")

##Read Train Activity Data Set
    
    traindata_activities = read.table("./UCI HAR Dataset/train/Y_train.txt")

##Read Subject Train Set
    
    traindata_subjects = read.table("./UCI HAR Dataset/train/subject_train.txt")

##Make complete test data set
    
    traindataset <- cbind(traindata_features,traindata_subjects,traindata_activities)

##Read Test Features Data Set
    
    testdata_features = read.table("./UCI HAR Dataset/test/X_test.txt")

##Read Activity Test Data Set
    
    testdata_activities = read.table("./UCI HAR Dataset/test/Y_test.txt")

##Read Subject Test Set and add the column names
    
    testdata_subjects = read.table("./UCI HAR Dataset/test/subject_test.txt")

##Make complete train data set
    
    testdataset <- cbind(testdata_features,testdata_subjects,testdata_activities)

##Part 1--> Merge both - train and test data sets
    
    fulldataset <- rbind(traindataset, testdataset)

##Part4 --> Appropriately labels the data set with descriptive variable names.
    
    features_names = read.table("./UCI HAR Dataset/features.txt")[,2]
    names(fulldataset) <- c(as.character(features_names), "SubjectId","ActivityId")

##Part 2--> Extracts only the measurements on the mean and standard deviation for each measurement.
##First find the indices where feature name contains "std" or "mean"
    
    indices_std_mean <- grep("std|mean", features_names)
    subsetdataset <- fulldataset[,c(indices_std_mean, 562,563)]

##Part3 --> Uses descriptive activity names to name the activities in the data set
    
    activity_labels_names = read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
    activity_index <- ncol(subsetdataset)
    subsetdataset[,activity_index ] = activity_labels_names[subsetdataset[,activity_index]]


##Part5 --> Creates a second, independent tidy data set with the average of each variable for each activity and each subject
    
    tidydataset <- melt(subsetdataset, id = c("SubjectId", "ActivityId"))
    tidydataset <- dcast(tidydataset, SubjectId + ActivityId ~ variable, mean)
    write.table(tidydataset, file = "./tidy_data.txt")

##Part6 --> Run Codebook.Rmd file to create Codebook.md and Codebook.html file
    
    knit("Codebook.Rmd", encoding="ISO8859-1")
    markdownToHTML("Codebook.md", "Codebook.html")