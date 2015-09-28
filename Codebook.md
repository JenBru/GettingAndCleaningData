---
title: "Codebook"
author: "JenBru"
date: "September 23, 2015"
output: html_document
---
<center> <h1>Human Activity Recognition Using Smartphones Data Set</h1> </center>
  
The data contained in the "SmartphoneHARdata.txt" dataset for analysis are described below.  The dataset is based on the raw data files that were downloaded from [link]https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  Those raw data and a full description of the study and background information on the study are described here: [link]http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  .  
See the 'Variables' and 'Notes' sections below for more details on the variables and how the dataset was constructed.  There are 30,897 observations on 21 variables.
  
### Variables

The following variables are identifying variables.

**Subject**  
&nbsp;&nbsp;&nbsp;&nbsp;Subject identifier for volunteers aged 19-48 that participated in the study  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Integer valued 1...30       
  
**Activity**  
&nbsp;&nbsp;&nbsp;&nbsp;Activity performed while wearing smartphone  (Samsung Galaxy S II) on the waist    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"WALKING"  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"WALKING_UPSTAIRS"  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"WALKING_DOWNSTAIRS"  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"SITTING"  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"STANDING"  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"LAYING"  
  
**Axis**  
&nbsp;&nbsp;&nbsp;&nbsp;Axis of direction of movement recorded by phone's embedded accelerometer or gyroscope  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"X"  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"Y"  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"Z"  
  
The following variables are measurement variables.
  
**tBodyAccM**  
&nbsp;&nbsp;&nbsp;&nbsp;Mean of time domain signal of body motion component of linear acceleration measured by accelerometer in smartphone.  3-axial linear acceleration was captured.  There is a body motion component of linear acceleration for each of the 3 axes(X,Y,and Z)for each activity and subject. See notes below for more info. Numeric variable with values ranging:     
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Min -1.000 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Max 1.000    

**tBodyAccSD**  
&nbsp;&nbsp;&nbsp;&nbsp;Standard deviation of time domain signal of body motion component of linear acceleration measured by accelerometer in smartphone.  3-axial linear acceleration was captured.  There is a body motion component of linear acceleration for each of the 3 axes(X,Y,and Z) for each activity and subject. See notes below for more info.Numeric variable with values ranging:     
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Min -1.000 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Max 1.000    

**tGravityAccM**  
&nbsp;&nbsp;&nbsp;&nbsp;Mean of time domain signal of gravity component of linear acceleration measured by accelerometer in smartphone.  3-axial linear acceleration was captured.  There is a gravity component of linear acceleration for each of the 3 axes(X,Y,and Z) for each activity and subject. See notes below for more info.Numeric variable with values ranging:    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Min -1.000 &nbsp;&nbsp;&nbsp;&nbsp;Max 1.000  

**tGravityAccSD**  
&nbsp;&nbsp;&nbsp;&nbsp;Standard deviation of time domain signal of gravity component of linear acceleration measured by accelerometer in smartphone.  3-axial linear acceleration was captured.  There is a gravity component of linear acceleration for each of the 3 axes(X,Y,and Z) for each activity and subject. See notes below for more info.Numeric variable with values ranging:    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Min -1.000 &nbsp;&nbsp;&nbsp;&nbsp;Max 1.000  

**tBodyAccJerkM**  
&nbsp;&nbsp;&nbsp;&nbsp;Mean of time domain signal of Jerk signal based on body linear acceleration and angular velocity from accelerometer in smartphone.  There is a Jerk measure for movement along each of the 3 axes(X,Y,and Z) for each activity and subject.See notes below for more info.Numeric variable with values ranging:      
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Min -1.000&nbsp;&nbsp;&nbsp;&nbsp;Max 1.000  

**tBodyAccJerkSD**  
&nbsp;&nbsp;&nbsp;&nbsp;Standard deviation of time domain signal of Jerk signal based on body linear acceleration and angular velocity from accelerometer in smartphone.  There is a Jerk measure for movement along each of the 3 axes(X,Y,and Z) for each activity and subject. See notes below for more info.Numeric variable with values ranging:      
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Min -1.000&nbsp;&nbsp;&nbsp;&nbsp;Max 1.000  

**tBodyGyroM**  
&nbsp;&nbsp;&nbsp;&nbsp;Mean of time domain signal of body motion component of linear acceleration measured by gyroscope in smartphone.  3-axial linear acceleration was captured.  There is a body motion component of linear acceleration for each of the 3 axes(X,Y,and Z)for each activity and subject. See notes below for more info. Numeric variable with values ranging:       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Min -1.000 &nbsp;&nbsp;&nbsp;&nbsp;Max 1.000  

**tBodyGyroSD**  
&nbsp;&nbsp;&nbsp;&nbsp;Standard deviation of time domain signal of body motion component of linear acceleration measured by gyroscope in smartphone.  3-axial linear acceleration was captured.  There is a body motion component of linear acceleration for each of the 3 axes(X,Y,and Z) for each activity and subject.See notes below for more info.Numeric variable with values ranging:       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Min -1.000 &nbsp;&nbsp;&nbsp;&nbsp;Max 1.000  

**tBodyGyroJerkM**  
&nbsp;&nbsp;&nbsp;&nbsp;Mean of time domain signal of Jerk signal based on body linear acceleration and angular velocity from gyroscope in smartphone.  There is a Jerk measure for movement along each of the 3 axes(X,Y,and Z) for each activity and subject. See notes below for more info.Numeric variable with values ranging:       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Min -1.000 &nbsp;&nbsp;&nbsp;&nbsp;Max 1.000  

**tBodyGyroJerkSD**  
&nbsp;&nbsp;&nbsp;&nbsp;Standard deviation of time domain signal of Jerk signal based on body linear acceleration and angular velocity from gyroscope in smartphone.  There is a Jerk measure for movement along each of the 3 axes(X,Y,and Z) for each activity and subject. See notes below for more info.Numeric variable with values ranging:       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Min -1.000 &nbsp;&nbsp;&nbsp;&nbsp;Max 1.000  

**fBodyAccM**  
&nbsp;&nbsp;&nbsp;&nbsp;Mean of frequency domain signal derived from body motion component of linear acceleration measured by accelerometer in smartphone with a Fast Fourier Transform.  There is a body motion component of linear acceleration for each of the 3 axes(X,Y,and Z) for each activity and subject.See notes below for more info.Numeric variable with values ranging:          
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Min -1.000&nbsp;&nbsp;&nbsp;&nbsp;Max 1.000  

**fBodyAccSD**  
&nbsp;&nbsp;&nbsp;&nbsp;Standard deviation of frequency domain signal derived from body motion component of linear acceleration measured by accelerometer in smartphone with a Fast Fourier Transform.  There is a body motion component of linear acceleration for each of the 3 axes(X,Y,and Z)for each activity and subject.See notes below for more info.Numeric variable with values ranging:          
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Min -1.000&nbsp;&nbsp;&nbsp;&nbsp;Max 1.000  

**fBodyAccJerkM**  
&nbsp;&nbsp;&nbsp;&nbsp;Mean of frequency domain signal derived from Jerk signal based on body linear acceleration and angular velocity and application of a Fast Fourier Transform.  There is a body motion component of linear acceleration for each of the 3 axes(X,Y,and Z)for each activity and subject.See notes below for more info.Numeric variable with values ranging:      
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Min-1.000&nbsp;&nbsp;&nbsp;&nbsp;Max 1.000  

**fBodyAccJerkSD**  
&nbsp;&nbsp;&nbsp;&nbsp;Standard deviation of frequency domain signal derived from Jerk signal based on body linear acceleration and angular velocity and application of a Fast Fourier Transform.  There is a body motion component of linear acceleration for each of the 3 axes(X,Y,and Z)for each activity and subject.See notes below for more info.Numeric variable with values ranging:      
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Min-1.000&nbsp;&nbsp;&nbsp;&nbsp;Max 1.000  

**fBodyGyroM**  
&nbsp;&nbsp;&nbsp;&nbsp;Mean of frequency domain signal derived from body motion component of linear acceleration measured by gyroscope in smartphone with a Fast Fourier Transform.  There is a body motion component of linear acceleration for each of the 3 axes(X,Y,and Z)for each activity and subject.See notes below for more info.Numeric variable with values ranging:       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Min -1.000&nbsp;&nbsp;&nbsp;&nbsp;Max1.000  

**fBodyGyroSD**  
&nbsp;&nbsp;&nbsp;&nbsp;Standard deviation of frequency domain signal derived from body motion component of linear acceleration measured by gyroscope in smartphone with a Fast Fourier Transform.  There is a body motion component of linear acceleration for each of the 3 axes(X,Y,and Z)for each activity and subject.See notes below for more info.Numeric variable with values ranging:       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Min -1.000&nbsp;&nbsp;&nbsp;&nbsp;Max1.000  

**AngleGravityM**  
&nbsp;&nbsp;&nbsp;&nbsp;Mean of an additional measure based on the average of signals in a signal sample window on the angle variable.  AngleGravity measure is available for each of the 3 axes(X,Y,and Z)for each activity and subject.  Note that only means are available, standard deviations are NA for this measure.See notes below for more info.Numeric variable with values ranging:        
&nbsp;&nbsp;&nbsp;&nbsp;Min -1.000&nbsp;&nbsp;&nbsp;&nbsp;Max 1.000  

**TrainOrTest**  
&nbsp;&nbsp;&nbsp;&nbsp;Marker denoting whether the observation is from test or training subset of the data.  The raw data were randomly partitioned into these two subsets, where 70% of the subjects were included in the training data and 30% were included in the test data.  This marker was created to preserve an indication of this split for future analysis or reproducibility.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"Test"  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"Train"  

### Notes  
The raw data on Human Activity Recognition (HAR) data were downloaded from [link]https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The script "run_analysis.R" downloaded, unzipped, read the data into R memory and transformed it into a more user friendly format,"SmartphoneHARdata.txt".  The downloaded zip file contained a series of text files with information on features, activities, and the actual observations.  The file "features.txt" contained information on the 561 features contained in the main data sets. The raw data had been randomly partitioned into test and training subsets, which were contained in separate directories ("test" and "train"), with files in both directories having the same basic format. The information in "SmartphoneHARdata"" was based on the following files:  
  
*X_test* and *X_train*  
&nbsp;&nbsp;&nbsp;&nbsp;Together, these 2 files contained 10,299 observations. These were the main data files, with 561 columns that corresponded to the 561 rows in the "features.txt" file.  
  
*y_test* and *y_train*    
&nbsp;&nbsp;&nbsp;&nbsp;Together, these 2 files contained 10,299 observations.  There were 2 columns containing a numeric code (integers with values 1 thru 6) and text descriptions of each activity. These activity codes corresponded to the observed data in *X_test* and *X_train*. 
  
*subject_test* and *subject_train*  
&nbsp;&nbsp;&nbsp;&nbsp;These files each contained a single column with the participant identifiers (integers ranging from 1 to 30) that corresponded to the observed data in *X_test* and *X_train*. Together, these 2 files contained 10,299 observations.  

Because there were no common identifiers across the 3 component files (X_*, y_*, and subject_*) in each of the "test" and "train" directories, an index variable was created in each of the 3 files and used to merge them together.  This merging based on index was done separately for the 'test' and 'train' files before combining the 2 subsets, which was done via the 'rbind' function. This produced the full dataset of training data and test data, each complete with subject and activity identifiers.  The resulting dataset was not in a tidy data format so additional data cleaning was performed to transform it.  Tidy data should satisfy the following 3 criteria according to Wickham (2014: 4):  
&nbsp;&nbsp;&nbsp;&nbsp;1. Each variable forms a column.  
&nbsp;&nbsp;&nbsp;&nbsp;2. Each observation forms a row.  
&nbsp;&nbsp;&nbsp;&nbsp;3. Each type of observation unit forms a table.  

Based on the third criteria, the data contained in the "Inertial Signals" directory of the raw data in the downloaded zip file was omitted from "SmartphoneHARdata.txt".  In order to conform to the 1st and 2nd criteria, some reshaping was necessary. This is described below.   

First, the dataset was limited to the variables of interest, that is , those measures pertaining to means or standard deviations.  Next, columns that appeared to capture the same feature or measure for different observations were identified.  These observations violated criteria 1 and 2.  In the raw data, the basic structure recorded observations for a given feature in 3 different columns, one for each axis along which a feature was measured.  This violates criteria 1 and 2 because these observations should be broken into separate rows and the feature (a.k.a variable) should be recorded in only 1 column. For example, in the raw data *tBodyAcc* (Mean of time domain signal of body motion component of linear acceleration measured by accelerometer in smartphone) appeared in 3 different columns as measured for 3 different axes.  See the following example for data on subject 1 with the activity walking:    
  
#### Table 1. Sample data layout in raw data      
subject | activity |tBodyAcc-mean()-X | tBodyAcc-mean()-Y | tBodyAcc-mean()-Z|tBodyAcc-std()-X | tBodyAcc-std()-Y | tBodyAcc-std()-Z
------- | -------- |----------------- | ------------------| ------------------|----------------- | ------------------| ------------------
1 | WALKING | value1 | value2 | value3| value4 | value5 | value6

Because there is a single variable (mean of the time signal of body linear acceleration from an accelerometer) measured over different observations on the 3 axes, the data were reshaped to reflect that and to better conform to tidy data principles.  The above example was transformed into the following format:  
     
#### Table 2. Sample raw data reshaped   
subject | activity |axis|tBodyAcc-mean()|tBodyAcc-std() 
------- | -------- |-----|------------ | ------------------
1 | WALKING |x| value1 | value4 
1 | WALKING |y| value2 | value5
1 | WALKING |z| value3 | value6 

This format removes the axis of movement component from the column dimension as a variable, and places the axis indicator in its own variable *axis*.  Thus, axis becomes part of the identifying variables while *tBodyAcc-mean()* and *tBodyAcc-std()* are left as measure variables. The inclusion of characters like "(", ")", and "-" are not compatible with programmatic interactions with the data and standard variable naming conevntions in R, so the variables were renamed to remove hyphens and parentheses, and capitalization was added.  The following illustrates the naming transformation for the tBodyAcc variables:
  
#### Table 3. Sample Tidy Data    
Subject | Activity |Axis|tBodyAccM|tBodyAccSD
------- | -------- |-----|------------ | ------------------
1 | WALKING |x| value1 | value4 
1 | WALKING |y| value2 | value5
1 | WALKING |z| value3 | value6 

This type of transformation was performed in order to obtain all of the measurement variables in the tidy datset. The table below indicates the crossover between column names in the raw dataset and in the tidy dataset.
  
####Table 4. Correspondence between raw data columns and "SmartphoneHARdata.txt" columns   
Raw data |becomes|SmartphoneHARdata.txt
---------| -------------|--------
tBodyAcc-mean()-X, tBodyAcc-mean()-Y,tBodyAcc-mean()-Z|->|  tBodyAccM
tBodyAcc-std()-X, tBodyAcc-std()-Y,tBodyAcc-std()-Z|->|  tBodyAccSD
tGravityAcc-mean()-X, tGravityAcc-mean()-Y,tGravityAcc-mean()-Z|->|tGravityAccM
tGravityAcc-std()-X, tGravityAcc-std()-Y,tGravityAcc-std()-Z|->|tGravityAccSD
tBodyAccJerk-mean()-X, tBodyAccJerk-mean()-Y,tBodyAccJerk-mean()-Z|->|tBodyAccJerkM
tBodyAccJerk-std()-X, tBodyAccJerk-std()-Y,tBodyAccJerk-std()-Z|->|tBodyAccJerkSD
tBodyGyro-mean()-X, tBodyGyro-mean()-Y,tBodyGyro-mean()-Z|->|tBodyGyroM
tBodyGyro-std()-X, tBodyGyro-std()-Y,tBodyGyro-std()-Z|->|tBodyGyroSD
tBodyGyroJerk-mean()-X, tBodyGyroJerk-mean()-Y,tBodyGyroJerk-mean()-Z|->|tBodyGyroJerkM
tBodyGyroJerk-std()-X, tBodyGyroJerk-std()-Y,tBodyGyroJerk-std()-Z|->|tBodyGyroJerkSD
fBodyAcc-mean()-X, fBodyAcc-mean()-Y,fBodyAcc-mean()-Z|->|fBodyAccM
fBodyAcc-std()-X, fBodyAcc-std()-Y,fBodyAcc-std()-Z|->|fBodyAccSD
fBodyAccJerk-mean()-X, fBodyAccJerk-mean()-Y,fBodyAccJerk-mean()-Z|->|fBodyAccJerkM
fBodyAccJerk-std()-X, fBodyAccJerk-std()-Y,fBodyAccJerk-std()-Z|->|fBodyAccJerkSD
fBodyGyro-mean()-X, fBodyGyro-mean()-Y,fBodyGyro-mean()-Z|->|fBodyGyroM
fBodyGyro-std()-X, fBodyGyro-std()-Y,fBodyGyro-std()-Z|->|fBodyGyroSD
AngleGravity-mean()-X, AngleGravity-mean()-Y,AngleGravity-mean()-Z|->|AngleGravityM

###HARSummaryStats.txt  
The file "HARSummaryStats.txt" presents some summary measures for the quantitative variables contained in "SmartphoneHARdata.txt", namely the means.  It was generated using the ddply() function.  The data were averaged by subject, activity, and axis.  Note that the *Axis* indicator column was included because the data are now long and that variable is an identifying variable in the cleaned data though it was not in the raw data, which used a wide format.  For example, rather than taking an average of the measures "tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", and "tBodyAcc-mean()-Z" across subject and activity, the average of a single variable *tBodyAccM* is taken across *Subject*, *Activity*, **and** *Axis*.  The syntax and resulting format are different, but the values of the results would be the same for a given axis and measure.    

The identifying variable names (*Subject*,*Activity*, and *Axis*) are the same as those in the cleaned data as described above.  The names of the measurement variables are the same as described above for "SmartphoneHARdata.txt", with the prefix 'mean' added to the variable name.  For example, the variable *meantBodyAccM* denotes the mean of the variable *tBodyAccM* from the "SmartphoneHARdata.txt data, and *meantBodyAccSD* denotes the mean of the variable *tBodyAccSD*.  
  

### References
Wickham, Hadley. (2014). "Tidy Data," *Journal of Statistical Software*, 59(10),1-23.
   
 