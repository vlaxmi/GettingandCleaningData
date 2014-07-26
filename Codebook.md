Codebook
========================================================

The purpose of this project is to demonstrate an ability to collect, work with, and clean a data set.
The outcome is to prepare tidy data that can be used for later analysis.

One of the most exciting areas in all of data science right now is wearable computing.  
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the datasets for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Codebook for this program : variables and logic used in this program
--------------------------------------------------------------------

Step 1: Complete train data set (i.e. of 70% volunteers): after combining X_train.txt, Y_train.txt & Subject_train.txt

Here is a summary of train.txt

--------------------------------------------------------------------------------------------------------------


```r
## number of columns in traindataset
ncol(traindataset)
```

```
## [1] 563
```

```r
## number of rows in traindataset
nrow(traindataset)
```

```
## [1] 7352
```


Step2: Complete test data set (i.e. of 30% volunteers): after combining X_test.txt, Y_test.txt & Subject_test.txt

Here is a summary of test.txt with 561 columns

--------------------------------------------------------------------------------------------------------------


```r
## number of columns in testdataset
ncol(testdataset)
```

```
## [1] 563
```

```r
## number of rows in testdataset
nrow(testdataset)
```

```
## [1] 2947
```

Step3: Extract the features names from the feature.txt

Here is all list of features names

--------------------------------------------------------------------------------------------------------------


```r
str(as.character(features_names))
```

```
##  chr [1:561] "tBodyAcc-mean()-X" "tBodyAcc-mean()-Y" ...
```

Step 4 : Merge two data sets to create full data set (i.e. of 100% Volunteers)

Step 5 : Add labels from features.txt


--------------------------------------------------------------------------------------------------------------


```r
## number of columns in fulldataset
ncol(fulldataset)
```

```
## [1] 563
```

```r
## number of rows in fulldataset
nrow(fulldataset)
```

```
## [1] 10299
```


Step 6: Extracts only the measurements on the mean and standard deviation for each measurement

Step 7: Uses descriptive activity names to name the activities in the data set

--------------------------------------------------------------------------------------------------------------

```r
## number of columns in subsetdataset
ncol(subsetdataset)
```

```
## [1] 81
```

```r
## number of rows in subsetdataset
nrow(subsetdataset)
```

```
## [1] 10299
```


Step 8 : Creates a second, independent tidy data set 

Tidy data set with the average of each variable for each activity and each subject

--------------------------------------------------------------------------------------------------------------

```r
## number of columns in tidydataset
ncol(tidydataset)
```

```
## [1] 81
```

```r
## number of rows in tidydataset
nrow(tidydataset)
```

```
## [1] 180
```

```r
## summary
summary(tidydataset)
```

```
##    SubjectId                 ActivityId tBodyAcc-mean()-X
##  Min.   : 1.0   LAYING            :30   Min.   :0.222    
##  1st Qu.: 8.0   SITTING           :30   1st Qu.:0.271    
##  Median :15.5   STANDING          :30   Median :0.277    
##  Mean   :15.5   WALKING           :30   Mean   :0.274    
##  3rd Qu.:23.0   WALKING_DOWNSTAIRS:30   3rd Qu.:0.280    
##  Max.   :30.0   WALKING_UPSTAIRS  :30   Max.   :0.301    
##  tBodyAcc-mean()-Y  tBodyAcc-mean()-Z tBodyAcc-std()-X tBodyAcc-std()-Y 
##  Min.   :-0.04051   Min.   :-0.1525   Min.   :-0.996   Min.   :-0.9902  
##  1st Qu.:-0.02002   1st Qu.:-0.1121   1st Qu.:-0.980   1st Qu.:-0.9421  
##  Median :-0.01726   Median :-0.1082   Median :-0.753   Median :-0.5090  
##  Mean   :-0.01788   Mean   :-0.1092   Mean   :-0.558   Mean   :-0.4605  
##  3rd Qu.:-0.01494   3rd Qu.:-0.1044   3rd Qu.:-0.198   3rd Qu.:-0.0308  
##  Max.   :-0.00131   Max.   :-0.0754   Max.   : 0.627   Max.   : 0.6169  
##  tBodyAcc-std()-Z tGravityAcc-mean()-X tGravityAcc-mean()-Y
##  Min.   :-0.988   Min.   :-0.680       Min.   :-0.4799     
##  1st Qu.:-0.950   1st Qu.: 0.838       1st Qu.:-0.2332     
##  Median :-0.652   Median : 0.921       Median :-0.1278     
##  Mean   :-0.576   Mean   : 0.698       Mean   :-0.0162     
##  3rd Qu.:-0.231   3rd Qu.: 0.942       3rd Qu.: 0.0877     
##  Max.   : 0.609   Max.   : 0.975       Max.   : 0.9566     
##  tGravityAcc-mean()-Z tGravityAcc-std()-X tGravityAcc-std()-Y
##  Min.   :-0.4951      Min.   :-0.997      Min.   :-0.994     
##  1st Qu.:-0.1173      1st Qu.:-0.983      1st Qu.:-0.971     
##  Median : 0.0238      Median :-0.970      Median :-0.959     
##  Mean   : 0.0741      Mean   :-0.964      Mean   :-0.952     
##  3rd Qu.: 0.1495      3rd Qu.:-0.951      3rd Qu.:-0.937     
##  Max.   : 0.9579      Max.   :-0.830      Max.   :-0.644     
##  tGravityAcc-std()-Z tBodyAccJerk-mean()-X tBodyAccJerk-mean()-Y
##  Min.   :-0.991      Min.   :0.0427        Min.   :-0.03869     
##  1st Qu.:-0.961      1st Qu.:0.0740        1st Qu.: 0.00047     
##  Median :-0.945      Median :0.0764        Median : 0.00947     
##  Mean   :-0.936      Mean   :0.0795        Mean   : 0.00757     
##  3rd Qu.:-0.918      3rd Qu.:0.0833        3rd Qu.: 0.01340     
##  Max.   :-0.610      Max.   :0.1302        Max.   : 0.05682     
##  tBodyAccJerk-mean()-Z tBodyAccJerk-std()-X tBodyAccJerk-std()-Y
##  Min.   :-0.06746      Min.   :-0.995       Min.   :-0.990      
##  1st Qu.:-0.01060      1st Qu.:-0.983       1st Qu.:-0.972      
##  Median :-0.00386      Median :-0.810       Median :-0.776      
##  Mean   :-0.00495      Mean   :-0.595       Mean   :-0.565      
##  3rd Qu.: 0.00196      3rd Qu.:-0.223       3rd Qu.:-0.148      
##  Max.   : 0.03805      Max.   : 0.544       Max.   : 0.355      
##  tBodyAccJerk-std()-Z tBodyGyro-mean()-X tBodyGyro-mean()-Y
##  Min.   :-0.993       Min.   :-0.2058    Min.   :-0.2042   
##  1st Qu.:-0.983       1st Qu.:-0.0471    1st Qu.:-0.0896   
##  Median :-0.884       Median :-0.0287    Median :-0.0732   
##  Mean   :-0.736       Mean   :-0.0324    Mean   :-0.0743   
##  3rd Qu.:-0.512       3rd Qu.:-0.0168    3rd Qu.:-0.0611   
##  Max.   : 0.031       Max.   : 0.1927    Max.   : 0.0275   
##  tBodyGyro-mean()-Z tBodyGyro-std()-X tBodyGyro-std()-Y tBodyGyro-std()-Z
##  Min.   :-0.0724    Min.   :-0.994    Min.   :-0.994    Min.   :-0.986   
##  1st Qu.: 0.0747    1st Qu.:-0.974    1st Qu.:-0.963    1st Qu.:-0.961   
##  Median : 0.0851    Median :-0.789    Median :-0.802    Median :-0.801   
##  Mean   : 0.0874    Mean   :-0.692    Mean   :-0.653    Mean   :-0.616   
##  3rd Qu.: 0.1018    3rd Qu.:-0.441    3rd Qu.:-0.420    3rd Qu.:-0.311   
##  Max.   : 0.1791    Max.   : 0.268    Max.   : 0.476    Max.   : 0.565   
##  tBodyGyroJerk-mean()-X tBodyGyroJerk-mean()-Y tBodyGyroJerk-mean()-Z
##  Min.   :-0.1572        Min.   :-0.0768        Min.   :-0.09250      
##  1st Qu.:-0.1032        1st Qu.:-0.0455        1st Qu.:-0.06172      
##  Median :-0.0987        Median :-0.0411        Median :-0.05343      
##  Mean   :-0.0961        Mean   :-0.0427        Mean   :-0.05480      
##  3rd Qu.:-0.0911        3rd Qu.:-0.0384        3rd Qu.:-0.04898      
##  Max.   :-0.0221        Max.   :-0.0132        Max.   :-0.00694      
##  tBodyGyroJerk-std()-X tBodyGyroJerk-std()-Y tBodyGyroJerk-std()-Z
##  Min.   :-0.997        Min.   :-0.997        Min.   :-0.995       
##  1st Qu.:-0.980        1st Qu.:-0.983        1st Qu.:-0.985       
##  Median :-0.840        Median :-0.894        Median :-0.861       
##  Mean   :-0.704        Mean   :-0.764        Mean   :-0.710       
##  3rd Qu.:-0.463        3rd Qu.:-0.586        3rd Qu.:-0.474       
##  Max.   : 0.179        Max.   : 0.296        Max.   : 0.193       
##  tBodyAccMag-mean() tBodyAccMag-std() tGravityAccMag-mean()
##  Min.   :-0.9865    Min.   :-0.987    Min.   :-0.9865      
##  1st Qu.:-0.9573    1st Qu.:-0.943    1st Qu.:-0.9573      
##  Median :-0.4829    Median :-0.607    Median :-0.4829      
##  Mean   :-0.4973    Mean   :-0.544    Mean   :-0.4973      
##  3rd Qu.:-0.0919    3rd Qu.:-0.209    3rd Qu.:-0.0919      
##  Max.   : 0.6446    Max.   : 0.428    Max.   : 0.6446      
##  tGravityAccMag-std() tBodyAccJerkMag-mean() tBodyAccJerkMag-std()
##  Min.   :-0.987       Min.   :-0.993         Min.   :-0.995       
##  1st Qu.:-0.943       1st Qu.:-0.981         1st Qu.:-0.977       
##  Median :-0.607       Median :-0.817         Median :-0.801       
##  Mean   :-0.544       Mean   :-0.608         Mean   :-0.584       
##  3rd Qu.:-0.209       3rd Qu.:-0.246         3rd Qu.:-0.217       
##  Max.   : 0.428       Max.   : 0.434         Max.   : 0.451       
##  tBodyGyroMag-mean() tBodyGyroMag-std() tBodyGyroJerkMag-mean()
##  Min.   :-0.981      Min.   :-0.981     Min.   :-0.9973        
##  1st Qu.:-0.946      1st Qu.:-0.948     1st Qu.:-0.9852        
##  Median :-0.655      Median :-0.742     Median :-0.8648        
##  Mean   :-0.565      Mean   :-0.630     Mean   :-0.7364        
##  3rd Qu.:-0.216      3rd Qu.:-0.360     3rd Qu.:-0.5119        
##  Max.   : 0.418      Max.   : 0.300     Max.   : 0.0876        
##  tBodyGyroJerkMag-std() fBodyAcc-mean()-X fBodyAcc-mean()-Y
##  Min.   :-0.998         Min.   :-0.995    Min.   :-0.9890  
##  1st Qu.:-0.981         1st Qu.:-0.979    1st Qu.:-0.9536  
##  Median :-0.881         Median :-0.769    Median :-0.5950  
##  Mean   :-0.755         Mean   :-0.576    Mean   :-0.4887  
##  3rd Qu.:-0.577         3rd Qu.:-0.217    3rd Qu.:-0.0634  
##  Max.   : 0.250         Max.   : 0.537    Max.   : 0.5242  
##  fBodyAcc-mean()-Z fBodyAcc-std()-X fBodyAcc-std()-Y  fBodyAcc-std()-Z
##  Min.   :-0.990    Min.   :-0.997   Min.   :-0.9907   Min.   :-0.987  
##  1st Qu.:-0.962    1st Qu.:-0.982   1st Qu.:-0.9404   1st Qu.:-0.946  
##  Median :-0.724    Median :-0.747   Median :-0.5134   Median :-0.644  
##  Mean   :-0.630    Mean   :-0.552   Mean   :-0.4815   Mean   :-0.582  
##  3rd Qu.:-0.318    3rd Qu.:-0.197   3rd Qu.:-0.0791   3rd Qu.:-0.266  
##  Max.   : 0.281    Max.   : 0.658   Max.   : 0.5602   Max.   : 0.687  
##  fBodyAcc-meanFreq()-X fBodyAcc-meanFreq()-Y fBodyAcc-meanFreq()-Z
##  Min.   :-0.636        Min.   :-0.3795       Min.   :-0.5201      
##  1st Qu.:-0.392        1st Qu.:-0.0813       1st Qu.:-0.0363      
##  Median :-0.257        Median : 0.0079       Median : 0.0658      
##  Mean   :-0.232        Mean   : 0.0115       Mean   : 0.0437      
##  3rd Qu.:-0.061        3rd Qu.: 0.0863       3rd Qu.: 0.1754      
##  Max.   : 0.159        Max.   : 0.4665       Max.   : 0.4025      
##  fBodyAccJerk-mean()-X fBodyAccJerk-mean()-Y fBodyAccJerk-mean()-Z
##  Min.   :-0.995        Min.   :-0.989        Min.   :-0.992       
##  1st Qu.:-0.983        1st Qu.:-0.973        1st Qu.:-0.980       
##  Median :-0.813        Median :-0.782        Median :-0.871       
##  Mean   :-0.614        Mean   :-0.588        Mean   :-0.714       
##  3rd Qu.:-0.282        3rd Qu.:-0.196        3rd Qu.:-0.470       
##  Max.   : 0.474        Max.   : 0.277        Max.   : 0.158       
##  fBodyAccJerk-std()-X fBodyAccJerk-std()-Y fBodyAccJerk-std()-Z
##  Min.   :-0.995       Min.   :-0.991       Min.   :-0.9931     
##  1st Qu.:-0.985       1st Qu.:-0.974       1st Qu.:-0.9837     
##  Median :-0.825       Median :-0.785       Median :-0.8951     
##  Mean   :-0.612       Mean   :-0.571       Mean   :-0.7565     
##  3rd Qu.:-0.247       3rd Qu.:-0.169       3rd Qu.:-0.5438     
##  Max.   : 0.477       Max.   : 0.350       Max.   :-0.0062     
##  fBodyAccJerk-meanFreq()-X fBodyAccJerk-meanFreq()-Y
##  Min.   :-0.5760           Min.   :-0.6020          
##  1st Qu.:-0.2897           1st Qu.:-0.3975          
##  Median :-0.0609           Median :-0.2321          
##  Mean   :-0.0691           Mean   :-0.2281          
##  3rd Qu.: 0.1766           3rd Qu.:-0.0472          
##  Max.   : 0.3314           Max.   : 0.1957          
##  fBodyAccJerk-meanFreq()-Z fBodyGyro-mean()-X fBodyGyro-mean()-Y
##  Min.   :-0.6276           Min.   :-0.993     Min.   :-0.994    
##  1st Qu.:-0.3087           1st Qu.:-0.970     1st Qu.:-0.970    
##  Median :-0.0919           Median :-0.730     Median :-0.814    
##  Mean   :-0.1376           Mean   :-0.637     Mean   :-0.677    
##  3rd Qu.: 0.0386           3rd Qu.:-0.339     3rd Qu.:-0.446    
##  Max.   : 0.2301           Max.   : 0.475     Max.   : 0.329    
##  fBodyGyro-mean()-Z fBodyGyro-std()-X fBodyGyro-std()-Y fBodyGyro-std()-Z
##  Min.   :-0.986     Min.   :-0.995    Min.   :-0.994    Min.   :-0.987   
##  1st Qu.:-0.962     1st Qu.:-0.975    1st Qu.:-0.960    1st Qu.:-0.964   
##  Median :-0.791     Median :-0.809    Median :-0.796    Median :-0.822   
##  Mean   :-0.604     Mean   :-0.711    Mean   :-0.645    Mean   :-0.658   
##  3rd Qu.:-0.264     3rd Qu.:-0.481    3rd Qu.:-0.415    3rd Qu.:-0.392   
##  Max.   : 0.492     Max.   : 0.197    Max.   : 0.646    Max.   : 0.522   
##  fBodyGyro-meanFreq()-X fBodyGyro-meanFreq()-Y fBodyGyro-meanFreq()-Z
##  Min.   :-0.3958        Min.   :-0.6668        Min.   :-0.5075       
##  1st Qu.:-0.2134        1st Qu.:-0.2943        1st Qu.:-0.1548       
##  Median :-0.1155        Median :-0.1579        Median :-0.0508       
##  Mean   :-0.1046        Mean   :-0.1674        Mean   :-0.0572       
##  3rd Qu.: 0.0027        3rd Qu.:-0.0427        3rd Qu.: 0.0415       
##  Max.   : 0.2492        Max.   : 0.2731        Max.   : 0.3771       
##  fBodyAccMag-mean() fBodyAccMag-std() fBodyAccMag-meanFreq()
##  Min.   :-0.987     Min.   :-0.988    Min.   :-0.3123       
##  1st Qu.:-0.956     1st Qu.:-0.945    1st Qu.:-0.0147       
##  Median :-0.670     Median :-0.651    Median : 0.0813       
##  Mean   :-0.536     Mean   :-0.621    Mean   : 0.0761       
##  3rd Qu.:-0.162     3rd Qu.:-0.365    3rd Qu.: 0.1744       
##  Max.   : 0.587     Max.   : 0.179    Max.   : 0.4358       
##  fBodyBodyAccJerkMag-mean() fBodyBodyAccJerkMag-std()
##  Min.   :-0.994             Min.   :-0.994           
##  1st Qu.:-0.977             1st Qu.:-0.975           
##  Median :-0.794             Median :-0.813           
##  Mean   :-0.576             Mean   :-0.599           
##  3rd Qu.:-0.187             3rd Qu.:-0.267           
##  Max.   : 0.538             Max.   : 0.316           
##  fBodyBodyAccJerkMag-meanFreq() fBodyBodyGyroMag-mean()
##  Min.   :-0.1252                Min.   :-0.987         
##  1st Qu.: 0.0453                1st Qu.:-0.962         
##  Median : 0.1720                Median :-0.766         
##  Mean   : 0.1625                Mean   :-0.667         
##  3rd Qu.: 0.2759                3rd Qu.:-0.409         
##  Max.   : 0.4881                Max.   : 0.204         
##  fBodyBodyGyroMag-std() fBodyBodyGyroMag-meanFreq()
##  Min.   :-0.982         Min.   :-0.4566            
##  1st Qu.:-0.949         1st Qu.:-0.1695            
##  Median :-0.773         Median :-0.0535            
##  Mean   :-0.672         Mean   :-0.0360            
##  3rd Qu.:-0.428         3rd Qu.: 0.0823            
##  Max.   : 0.237         Max.   : 0.4095            
##  fBodyBodyGyroJerkMag-mean() fBodyBodyGyroJerkMag-std()
##  Min.   :-0.998              Min.   :-0.998            
##  1st Qu.:-0.981              1st Qu.:-0.980            
##  Median :-0.878              Median :-0.894            
##  Mean   :-0.756              Mean   :-0.771            
##  3rd Qu.:-0.583              3rd Qu.:-0.608            
##  Max.   : 0.147              Max.   : 0.288            
##  fBodyBodyGyroJerkMag-meanFreq()
##  Min.   :-0.1829                
##  1st Qu.: 0.0542                
##  Median : 0.1116                
##  Mean   : 0.1259                
##  3rd Qu.: 0.2081                
##  Max.   : 0.4263
```

Step 9: Tidy Variable name & Description

--------------------------------------------------------------------------------------------------------------

```r
##output Data set Fields 
    
tidydataset_full_desc= c("Subject ID", "Activity ", "Avg. body accel. (X)", "Avg. body accel. (Y)","Avg. body accel. (Z)",
                         "Std. body accel. (X)","Std. body accel. (Y)","Std. body accel. (Z)","Avg. gravity accel. (X)",    
                         "Avg. gravity accel. (Y)","Avg. gravity accel. (Z)", "Std. gravity accel. (X)","Std. gravity accel. (Y)",
                         "Std. gravity accel. (Z)","Avg. body accel. linear jerk (X)","Avg. body accel. linear jerk (Y)",
                         "Avg. body accel. linear jerk (Z)","Std. body accel. linear jerk (X)","Std. body accel. linear jerk (Y)",
                         "Std. body accel. linear jerk (Z)","Avg. body accel. angular (X)","Avg. body accel. angular (Y)",
                         "Avg. body accel. angular (Z)","Std. body accel. angular (X)","Std. body accel. angular (Y)",
                         "Std. body accel. angular (Z)","Avg. body accel. angular jerk (X)","Avg. body accel. angular jerk (Y)",
                         "Avg. body accel. angular jerk (Z)", "Std. body accel. angular jerk (X)","Std. body accel. angular jerk (Y)",
                         "Std. body accel. angular jerk (Z)","Avg. body accel. magnitude Euc. norm","Std. body accel. magnitude Euc. norm",
                         "Avg. gravity accel. magnitude Euc. norm","Std. gravity accel. magnitude Euc. norm","Avg. body accel. jerk magnitude Euc. norm",
                         "Std. body accel. jerk magnitude Euc. norm","Avg. body accel. angular magnitude Euc. norm",
                         "Std. body accel. angular magnitude Euc. norm","Avg. body accel. angular jerk magnitude Euc. norm",
                         "Std. body accel. angular jerk magnitude Euc. norm","Avg. body accel. FFT (X)","Avg. body accel. FFT (Y)",
                         "Avg. body accel. FFT (Z)", "Std. body accel. FFT (X)","Std. body accel. FFT (Y)","Std. body accel. FFT (Z)",
                         "Avg. body accel. frequency FFT (X)","Avg. body accel. frequency FFT (Y)","Avg. body accel. frequency FFT (Z)",  
                         "Avg. body accel. jerk FFT (X)","Avg. body accel. jerk FFT (Y)","Avg. body accel. jerk FFT (Z)",
                         "Std. body accel. jerk FFT(X)","Std. body accel. jerk FFT(Y)","Std. body accel. jerk FFT(Z)", 
                         "Avg. body accel. jerk frequency FFT (X)","Avg. body accel. jerk frequency FFT (Y)",
                         "Avg. body accel. jerk frequency FFT (Z)","Avg. body accel. angular FFT (X)","Avg. body accel. angular FFT (Y)",
                         "Avg. body accel. angular FFT (Z)","Std. body accel. angular FFT (X)","Std. body accel. angular FFT (Y)",
                         "Std. body accel. angular FFT (Z)","Avg. body accel. angular frequency FFT (X)","Avg. body accel. angular frequency FFT (Y)",
                         "Avg. body accel. angular frequency FFT (Z)","Avg. body accel. mangintude FFT","Std. body accel. mangintude FFT",
                         "Avg. body accel. frequency magnitude FFT","Avg. body accel. jerk magnitude FFT","Std. body accel. jerk mangintude FFT",
                         "Avg. body accel. jerk frequency magnitude FFT","Avg. body accel. angular mangnitude FFT",
                         "Std. body accel. angular mangnitude FFT","Avg. body accel. angular frequency mangintude FFT",
                         "Avg. body accel. angular jerk mangnitude FFT","Std. body accel. angular jerk mangnitude FFT",
                         "Avg. body accel. angular frequency mangintude FFT")

vartable <- function(x,y) { paste (x, y, sep = " == ")}
vartable(names(tidydataset), tidydataset_full_desc)
```

```
##  [1] "SubjectId == Subject ID"                                                             
##  [2] "ActivityId == Activity "                                                             
##  [3] "tBodyAcc-mean()-X == Avg. body accel. (X)"                                           
##  [4] "tBodyAcc-mean()-Y == Avg. body accel. (Y)"                                           
##  [5] "tBodyAcc-mean()-Z == Avg. body accel. (Z)"                                           
##  [6] "tBodyAcc-std()-X == Std. body accel. (X)"                                            
##  [7] "tBodyAcc-std()-Y == Std. body accel. (Y)"                                            
##  [8] "tBodyAcc-std()-Z == Std. body accel. (Z)"                                            
##  [9] "tGravityAcc-mean()-X == Avg. gravity accel. (X)"                                     
## [10] "tGravityAcc-mean()-Y == Avg. gravity accel. (Y)"                                     
## [11] "tGravityAcc-mean()-Z == Avg. gravity accel. (Z)"                                     
## [12] "tGravityAcc-std()-X == Std. gravity accel. (X)"                                      
## [13] "tGravityAcc-std()-Y == Std. gravity accel. (Y)"                                      
## [14] "tGravityAcc-std()-Z == Std. gravity accel. (Z)"                                      
## [15] "tBodyAccJerk-mean()-X == Avg. body accel. linear jerk (X)"                           
## [16] "tBodyAccJerk-mean()-Y == Avg. body accel. linear jerk (Y)"                           
## [17] "tBodyAccJerk-mean()-Z == Avg. body accel. linear jerk (Z)"                           
## [18] "tBodyAccJerk-std()-X == Std. body accel. linear jerk (X)"                            
## [19] "tBodyAccJerk-std()-Y == Std. body accel. linear jerk (Y)"                            
## [20] "tBodyAccJerk-std()-Z == Std. body accel. linear jerk (Z)"                            
## [21] "tBodyGyro-mean()-X == Avg. body accel. angular (X)"                                  
## [22] "tBodyGyro-mean()-Y == Avg. body accel. angular (Y)"                                  
## [23] "tBodyGyro-mean()-Z == Avg. body accel. angular (Z)"                                  
## [24] "tBodyGyro-std()-X == Std. body accel. angular (X)"                                   
## [25] "tBodyGyro-std()-Y == Std. body accel. angular (Y)"                                   
## [26] "tBodyGyro-std()-Z == Std. body accel. angular (Z)"                                   
## [27] "tBodyGyroJerk-mean()-X == Avg. body accel. angular jerk (X)"                         
## [28] "tBodyGyroJerk-mean()-Y == Avg. body accel. angular jerk (Y)"                         
## [29] "tBodyGyroJerk-mean()-Z == Avg. body accel. angular jerk (Z)"                         
## [30] "tBodyGyroJerk-std()-X == Std. body accel. angular jerk (X)"                          
## [31] "tBodyGyroJerk-std()-Y == Std. body accel. angular jerk (Y)"                          
## [32] "tBodyGyroJerk-std()-Z == Std. body accel. angular jerk (Z)"                          
## [33] "tBodyAccMag-mean() == Avg. body accel. magnitude Euc. norm"                          
## [34] "tBodyAccMag-std() == Std. body accel. magnitude Euc. norm"                           
## [35] "tGravityAccMag-mean() == Avg. gravity accel. magnitude Euc. norm"                    
## [36] "tGravityAccMag-std() == Std. gravity accel. magnitude Euc. norm"                     
## [37] "tBodyAccJerkMag-mean() == Avg. body accel. jerk magnitude Euc. norm"                 
## [38] "tBodyAccJerkMag-std() == Std. body accel. jerk magnitude Euc. norm"                  
## [39] "tBodyGyroMag-mean() == Avg. body accel. angular magnitude Euc. norm"                 
## [40] "tBodyGyroMag-std() == Std. body accel. angular magnitude Euc. norm"                  
## [41] "tBodyGyroJerkMag-mean() == Avg. body accel. angular jerk magnitude Euc. norm"        
## [42] "tBodyGyroJerkMag-std() == Std. body accel. angular jerk magnitude Euc. norm"         
## [43] "fBodyAcc-mean()-X == Avg. body accel. FFT (X)"                                       
## [44] "fBodyAcc-mean()-Y == Avg. body accel. FFT (Y)"                                       
## [45] "fBodyAcc-mean()-Z == Avg. body accel. FFT (Z)"                                       
## [46] "fBodyAcc-std()-X == Std. body accel. FFT (X)"                                        
## [47] "fBodyAcc-std()-Y == Std. body accel. FFT (Y)"                                        
## [48] "fBodyAcc-std()-Z == Std. body accel. FFT (Z)"                                        
## [49] "fBodyAcc-meanFreq()-X == Avg. body accel. frequency FFT (X)"                         
## [50] "fBodyAcc-meanFreq()-Y == Avg. body accel. frequency FFT (Y)"                         
## [51] "fBodyAcc-meanFreq()-Z == Avg. body accel. frequency FFT (Z)"                         
## [52] "fBodyAccJerk-mean()-X == Avg. body accel. jerk FFT (X)"                              
## [53] "fBodyAccJerk-mean()-Y == Avg. body accel. jerk FFT (Y)"                              
## [54] "fBodyAccJerk-mean()-Z == Avg. body accel. jerk FFT (Z)"                              
## [55] "fBodyAccJerk-std()-X == Std. body accel. jerk FFT(X)"                                
## [56] "fBodyAccJerk-std()-Y == Std. body accel. jerk FFT(Y)"                                
## [57] "fBodyAccJerk-std()-Z == Std. body accel. jerk FFT(Z)"                                
## [58] "fBodyAccJerk-meanFreq()-X == Avg. body accel. jerk frequency FFT (X)"                
## [59] "fBodyAccJerk-meanFreq()-Y == Avg. body accel. jerk frequency FFT (Y)"                
## [60] "fBodyAccJerk-meanFreq()-Z == Avg. body accel. jerk frequency FFT (Z)"                
## [61] "fBodyGyro-mean()-X == Avg. body accel. angular FFT (X)"                              
## [62] "fBodyGyro-mean()-Y == Avg. body accel. angular FFT (Y)"                              
## [63] "fBodyGyro-mean()-Z == Avg. body accel. angular FFT (Z)"                              
## [64] "fBodyGyro-std()-X == Std. body accel. angular FFT (X)"                               
## [65] "fBodyGyro-std()-Y == Std. body accel. angular FFT (Y)"                               
## [66] "fBodyGyro-std()-Z == Std. body accel. angular FFT (Z)"                               
## [67] "fBodyGyro-meanFreq()-X == Avg. body accel. angular frequency FFT (X)"                
## [68] "fBodyGyro-meanFreq()-Y == Avg. body accel. angular frequency FFT (Y)"                
## [69] "fBodyGyro-meanFreq()-Z == Avg. body accel. angular frequency FFT (Z)"                
## [70] "fBodyAccMag-mean() == Avg. body accel. mangintude FFT"                               
## [71] "fBodyAccMag-std() == Std. body accel. mangintude FFT"                                
## [72] "fBodyAccMag-meanFreq() == Avg. body accel. frequency magnitude FFT"                  
## [73] "fBodyBodyAccJerkMag-mean() == Avg. body accel. jerk magnitude FFT"                   
## [74] "fBodyBodyAccJerkMag-std() == Std. body accel. jerk mangintude FFT"                   
## [75] "fBodyBodyAccJerkMag-meanFreq() == Avg. body accel. jerk frequency magnitude FFT"     
## [76] "fBodyBodyGyroMag-mean() == Avg. body accel. angular mangnitude FFT"                  
## [77] "fBodyBodyGyroMag-std() == Std. body accel. angular mangnitude FFT"                   
## [78] "fBodyBodyGyroMag-meanFreq() == Avg. body accel. angular frequency mangintude FFT"    
## [79] "fBodyBodyGyroJerkMag-mean() == Avg. body accel. angular jerk mangnitude FFT"         
## [80] "fBodyBodyGyroJerkMag-std() == Std. body accel. angular jerk mangnitude FFT"          
## [81] "fBodyBodyGyroJerkMag-meanFreq() == Avg. body accel. angular frequency mangintude FFT"
```
