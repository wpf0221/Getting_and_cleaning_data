# Code book

## Introduction
This dataset (MeanData.txt) contains the data extracted and calculated based on the following original dataset, Human Activity Recognition Using Smartphones Dataset Version 1.0. The original data set can be downloaded from: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", and A full description of the original data set is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Introduction of the original dataset
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 
 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Subject: subjects volunteered to participate in the experiments
Activity: activities performed by the subjects (volunteers)
Other labels: features come from the the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

the mean and standard deviation 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Time
Frequence
'-X', '-Y' or '-Z' is used to denote 3-axial signals in the X, Y and Z directions



Mean: Mean value
Std: Standard deviation


TimeBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


The mean value is used.
 [1] "Subject"                          "Activity"                         "TimeBodyAccMean-X"               
 [4] "TimeBodyAccMean-Y"                "TimeBodyAccMean-Z"                "TimeBodyAccStd-X"                
 [7] "TimeBodyAccStd-Y"                 "TimeBodyAccStd-Z"                 "TimeGravityAccMean-X"            
[10] "TimeGravityAccMean-Y"             "TimeGravityAccMean-Z"             "TimeGravityAccStd-X"             
[13] "TimeGravityAccStd-Y"              "TimeGravityAccStd-Z"              "TimeBodyAccJerkMean-X"           
[16] "TimeBodyAccJerkMean-Y"            "TimeBodyAccJerkMean-Z"            "TimeBodyAccJerkStd-X"            
[19] "TimeBodyAccJerkStd-Y"             "TimeBodyAccJerkStd-Z"             "TimeBodyGyroMean-X"              
[22] "TimeBodyGyroMean-Y"               "TimeBodyGyroMean-Z"               "TimeBodyGyroStd-X"               
[25] "TimeBodyGyroStd-Y"                "TimeBodyGyroStd-Z"                "TimeBodyGyroJerkMean-X"          
[28] "TimeBodyGyroJerkMean-Y"           "TimeBodyGyroJerkMean-Z"           "TimeBodyGyroJerkStd-X"           
[31] "TimeBodyGyroJerkStd-Y"            "TimeBodyGyroJerkStd-Z"            "TimeBodyAccMagMean"              
[34] "TimeBodyAccMagStd"                "TimeGravityAccMagMean"            "TimeGravityAccMagStd"            
[37] "TimeBodyAccJerkMagMean"           "TimeBodyAccJerkMagStd"            "TimeBodyGyroMagMean"             
[40] "TimeBodyGyroMagStd"               "TimeBodyGyroJerkMagMean"          "TimeBodyGyroJerkMagStd"          
[43] "FrequenceBodyAccMean-X"           "FrequenceBodyAccMean-Y"           "FrequenceBodyAccMean-Z"          
[46] "FrequenceBodyAccStd-X"            "FrequenceBodyAccStd-Y"            "FrequenceBodyAccStd-Z"           
[49] "FrequenceBodyAccJerkMean-X"       "FrequenceBodyAccJerkMean-Y"       "FrequenceBodyAccJerkMean-Z"      
[52] "FrequenceBodyAccJerkStd-X"        "FrequenceBodyAccJerkStd-Y"        "FrequenceBodyAccJerkStd-Z"       
[55] "FrequenceBodyGyroMean-X"          "FrequenceBodyGyroMean-Y"          "FrequenceBodyGyroMean-Z"         
[58] "FrequenceBodyGyroStd-X"           "FrequenceBodyGyroStd-Y"           "FrequenceBodyGyroStd-Z"          
[61] "FrequenceBodyAccMagMean"          "FrequenceBodyAccMagStd"           "FrequenceBodyBodyAccJerkMagMean" 
[64] "FrequenceBodyBodyAccJerkMagStd"   "FrequenceBodyBodyGyroMagMean"     "FrequenceBodyBodyGyroMagStd"     
[67] "FrequenceBodyBodyGyroJerkMagMean" "FrequenceBodyBodyGyroJerkMagStd" 