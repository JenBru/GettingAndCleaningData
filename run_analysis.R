# this program will prepare the samsung sensor data for analysis


#1. Merge the training and the test sets to create one data set.

#first, check working directory is appropriately set
getwd()

#Begin by downloading files 
download.file()
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="sensordata.zip")
list.files()

# record time & date downloaded
dateDownloaded<-date()

#next, unzip data files
unzip("sensordata.zip",exdir="project")
# note that the exdir will be created if necessary; see help for unzip function for details

#rename subfolder to conform better to standard naming conventions
file.rename("project/UCI HAR Dataset","project/UCIHARDataset")

#note:this file not be preparing the data in the "Inertial Signals" subfolders; 
# further, we will focus solely on mean and standard deviation measures

# open files that will indicate what will be variables and observations
#features
features<-read.table("project/UCIHARDataset/features.txt")
# this looks like names of variables, there are 561 

#featuresInfo
featuresInfo<-read.table("project/UCIHARDataset/features_info.txt", skip=12,nrows=17)
#this also looks like variable names, there are 17 of them

# install any necessary packages
install.packages("plyr")
library(plyr)
install.packages("reshape2")
library(reshape2)
install.packages("Hmisc")
library(Hmisc)

# next open the actual data files
# there are 2 subsets of the data (training data and test data), will need to 
#   load each separately and then combine
# Begin with the training data
# note: b/c lg amount of mutating to build datasets, use temp files that can be recycled
# most of intermediate data frames are not reused, they are only used as 
#   intermediate steps to get to data

#first open main data file
temp<-read.table("project/UCIHARDataset/train/X_train.txt") #n=7352 obs on 561 variables

#create an index to link by to other files
row<-row(temp,as.factor=FALSE)
X_train<-mutate(indx=row[,1],temp)

# next open data on activity codes
temp<-read.table("project/UCIHARDataset/train/y_train.txt") #7352 obs of 1 var, values are integers 1-6

#create index to link by
row<-row(temp,as.factor=FALSE)
y_train<-mutate(indx=row[,1],temp)

#then open participant/subject codes
temp<-read.table("project/UCIHARDataset/train/subject_train.txt") #n=7352 obs on 1 var; values are 1-30
#create index to link by
row<-row(temp,as.factor=FALSE)
subject_train<-mutate(indx=row[,1],temp)

# link (merge) x_train(data),y_train(activity codes), subject_train(participant codes) 
# link via the newly created index identifier
temp<-merge(subject_train,X_train, by="indx") 
mergeTrain<-merge(y_train,temp,by="indx")
mergeTrain$part<-"train" #create a marker indicating this as train subset
# this is the full subset of training data

# next, repeat the above for TEST data
# TEST
#BEGIN BY OPENING THE MAIN DATA FILE
temp<-read.table("project/UCIHARDataset/test/X_test.txt") #n=7352 obs on 561 variables
#create index to link by
row<-row(temp,as.factor=FALSE)
X_test<-mutate(indx=row[,1],temp)

# NEXT OPEN DATA ON ACTIVITY CODES
temp<-read.table("project/UCIHARDataset/test/y_test.txt") #7352 obs of 1 var, values are integers 1-6
#create index to link by
row<-row(temp,as.factor=FALSE)
y_test<-mutate(indx=row[,1],temp)

#THEN OPEN DATA ON PARTICIPANT CODES
temp<-read.table("project/UCIHARDataset/test/subject_test.txt") #n=7352 obs on 1 var; values are 1-30
#create index to link by
row<-row(temp,as.factor=FALSE)
subject_test<-mutate(indx=row[,1],temp)

# link x_test(data),y_test(activity), subject_test(participant) via the newly created index
temp<-merge(subject_test,X_test, by="indx") 
mergeTest<-merge(y_test,temp,by="indx")
mergeTest$part<-"test" #create a marker indicating this as test subset
# this is the full subset of test data

# Next, use rbind to combine test & train datasets to get full data
alldata<-rbind(mergeTest, mergeTrain)

# 2.Extract only the measurements on the mean and standard deviation for each measurement. 

# Clean up data and make into tidy data

#  First, drop variables that are not of interest (not means or std devs)
# at same time, begin working toward tidy data format with each column a variable
# will want to separate out separate rows for observations on x,y,z axes 
# rather than having separate variable columns for same measure on each

#  X
Xdata_clean<-alldata[,c(1:3,4,7,44,47,84,87,124,127,164,167,269,272,348,351,427,430,562,565)]
Xdata_clean$axis<-"X"
 
 # Need to rename columns before doing rbind, otherwise, error will result
 colnames(Xdata_clean)<-c("index", "activity", "subject","tBodyAccM","tBodyAccSD", 
                          "tGravityAccM","tGravityAccSD", "tBodyAccJerkM","tBodyAccJerkSD",
                          "tBodyGyroM","tBodyGyroSD","tBodyGyroJerkM","tBodyGyroJerkSD",
                          "fBodyAccM","fBodyAccSD","fBodyAccJerkM","fBodyAccJerkSD",
                          "fBodyGyroM","fBodyGyroSD","AngleGravityM","part","axis")
 
# note---- multi obs for a given index but different subjects for a gien index (ie index=1, but subject may be 1 or 2... probabyly b/c created for both test and train data maybe make new index or drop index, don't really need it onec data has been linked across sets)
        
#Need to repeat the above for y, z; then combine x,y&z into 1 dataset
Ydata_clean<-alldata[,c(1:3,5,8,45,48,85,88,125,128,165,168,270,273,349,352,428,431,563,565)]
Ydata_clean$axis<-"Y"

# Need to rename columns before doing rbind, otherwise, error will result
colnames(Ydata_clean)<-c("index", "activity", "subject","tBodyAccM","tBodyAccSD", 
                         "tGravityAccM","tGravityAccSD", "tBodyAccJerkM","tBodyAccJerkSD",
                         "tBodyGyroM","tBodyGyroSD","tBodyGyroJerkM","tBodyGyroJerkSD",
                         "fBodyAccM","fBodyAccSD","fBodyAccJerkM","fBodyAccJerkSD",
                         "fBodyGyroM","fBodyGyroSD","AngleGravityM","part","axis")


#Z
Zdata_clean<-alldata[,c(1:3,6,9,46,49,86,89,126,129,166, 169,271,274,350,353,429,432,564,565)]
Zdata_clean$axis<-"Z"

# Need to rename columns before doing rbind, otherwise, error will result
colnames(Zdata_clean)<-c("index", "activity", "subject","tBodyAccM","tBodyAccSD", 
                         "tGravityAccM","tGravityAccSD", "tBodyAccJerkM","tBodyAccJerkSD",
                         "tBodyGyroM","tBodyGyroSD","tBodyGyroJerkM","tBodyGyroJerkSD",
                         "fBodyAccM","fBodyAccSD","fBodyAccJerkM","fBodyAccJerkSD",
                         "fBodyGyroM","fBodyGyroSD","AngleGravityM","part","axis")



# combine data from all 3 axes X,Y & Z into a single dataset
temp<-rbind(Xdata_clean,Ydata_clean)       
combined_XYZ<-rbind(temp,Zdata_clean)
#combined_XYZ is master dataset with all component parts

# Next, read activity labels file into memory
ActLabels<-read.table("project/UCIHARDataset/activity_labels.txt")  
    # contains 6 rows indicating each of the 6 activities
colnames(ActLabels)<-c("V1","Activity")

# then, combine activity labels with main full data above
temp<-merge(combined_XYZ,ActLabels, by.x="activity",by.y="V1") 

# drop out a few variables created but no longer needed (index) and activity numeric codes
combinedXYZ<-temp[,3:23]

#sort data according to identifier variables for better presentation
sortorder<-order(combinedXYZ$subject, combinedXYZ$Activity, combinedXYZ$axis)

#recast some variables as factors
combinedXYZ$Axis<-as.factor(combinedXYZ$axis)
combinedXYZ$TrainOrTest<-as.factor(combinedXYZ$part)
combinedXYZ$Subject<-as.factor(combinedXYZ$subject)

#rearrange columns in a more intuitive way
SmartphoneHARdata<-combinedXYZ[sortorder,c(24,21,22,2:18,23)]

# 3. Uses descriptive activity names to name the activities in the data set

# next create informative data names & labels
#colnames(SmartphoneHARdata)<-c("Subject","Activity","Axis","BodyAccelTimeM",
#                                "BodyAccelTimeSD","GravityAccelM","GravityAccelSD",
#                                "JerkAccelTimeM","JerkAccelTimeSD","BodyGyroTimeM",
#                                "BodyGyroTimeSD","JerkGyroTimeM","JerkGyroTimeSD",
#                                "BodyAccelFreqM","BodyAccelFreqSD","JerkAccelFreqM",
#                                "JerkAccelFreqSD","BodyGyroFreqM","BodyGyroFreqSD",
#                                 "AngleGravityM","TrainOrTest")

# 4.Appropriately labels the data set with descriptive variable names. 

# label(SmartphoneHARdata$Subject) <- "Subject identifier"
# label(SmartphoneHARdata$Activity) <- "Activity performed with smartphone"
# label(SmartphoneHARdata$Axis) <- "Axis of direction of movement recorded"
# 
# label(SmartphoneHARdata$tBodyAccM) <- "Body linear acceleration time domain
# signal from accelerometer, mean"
# label(SmartphoneHARdata$tBodyAccSD) <- "Body linear acceleration time domain 
# signal from accelerometer, std dev"
# 
# label(SmartphoneHARdata$tGravityAccM) <- "Gravity acceleration time domain 
# signal from accelerometer,mean"
# label(SmartphoneHARdata$tGravityAccSD) <- "Gravity acceleration time domain 
# signal from accelerometer"
# 
# label(SmartphoneHARdata$tBodyAccJerkM) <- "Jerk signal based on body linear 
# acceleration and angular velocity from accelerometer,mean "
# label(SmartphoneHARdata$tBodyAccJerkSD) <- "Jerk signal based on body linear 
# acceleration and angular velocity from accelerometer, std dev "
# 
# label(SmartphoneHARdata$tBodyGyroM) <- "Body linear acceleration time domain 
# signal from gyroscope,mean"
# label(SmartphoneHARdata$tBodyGyroSD) <- "Body linear acceleration time domain 
# signal from gyroscope, std dev"
# 
# label(SmartphoneHARdata$tBodyGyroJerkM) <- "Jerk signal based on body linear 
# acceleration and angular velocity from gyroscope,mean"
# label(SmartphoneHARdata$tBodyGyroJerkSD) <- "Jerk signal based on body linear 
# acceleration and angular velocity from gyroscope, std dev"
# 
# label(SmartphoneHARdata$tBodyAccM) <- "Body linear acceleration time domain
# signal from accelerometer, with Fast Fourier Transform,mean"
# label(SmartphoneHARdata$tBodyAccSD) <- "Body linear acceleration time domain 
# signal from accelerometer, with Fast Fourier Transform, std dev"
# 
# label(SmartphoneHARdata$fBodyAccJerkM) <- "Jerk signal based on body linear 
# acceleration and angular velocity from accelerometer, with Fast Fourier Transform,mean "
# label(SmartphoneHARdata$fBodyAccJerkSD) <- "Jerk signal based on body linear
# acceleration and angular velocity from accelerometer, with Fast Fourier Transform, std dev "
# 
# label(SmartphoneHARdata$fBodyGyroM) <- "Body linear acceleration time domain 
# signal from gyroscope, with Fast Fourier Transform,mean"
# label(SmartphoneHARdata$fBodyGyroSD) <- "Body linear acceleration time domain
# signal from gyroscope, with Fast Fourier Transform, std dev"
# 
# label(SmartphoneHARdata$AngleGravity) <- "Angle Gravity, computed measure,mean "
# 
# label(SmartphoneHARdata$TrainOrTest) <- "Marker denoting from test or train data"
describe(SmartphoneHARdata)

# 5. From the data set in step 4, creates a second, independent tidy data set 
#   with the average of each variable for each activity and each subject.
#   next, create file containing average values of variables for each subject for each activity
HARSummaryStats<-ddply(SmartphoneHARdata,.(Subject,Activity,Axis), summarise,
                       meantBodyAccM=mean(tBodyAccM,na.rm=TRUE),
                       meantBodyAccSD=mean(tBodyAccSD,na.rm=TRUE), 
                       meantGravityAccM=mean(tGravityAccM,na.rm=TRUE),
                       meantGravityAccSD=mean(tGravityAccSD,na.rm=TRUE),
                       meantBodyAccJerkM=mean(tBodyAccJerkM,na.rm=TRUE),
                       meantBodyAccJerkSD=mean(tBodyAccJerkSD,na.rm=TRUE),
                       meantBodyGyroM=mean(tBodyGyroM,na.rm=TRUE),
                       meantBodyGyroSD=mean(tBodyGyroSD,na.rm=TRUE),
                       meantBodyGyroJerkM=mean(tBodyGyroJerkM,na.rm=TRUE),
                       meantBodyGyroJerkSD=mean(tBodyGyroJerkSD,na.rm=TRUE),
                       meantBodyAccM=mean(tBodyAccM,na.rm=TRUE),
                       meantBodyAccSD=mean(tBodyAccSD,na.rm=TRUE),
                       meanfBodyAccJerkM=mean(fBodyAccJerkM,na.rm=TRUE),
                       meanfBodyAccJerkSD=mean(fBodyAccJerkSD,na.rm=TRUE),
                       meanfBodyGyroM=mean(fBodyGyroM,na.rm=TRUE),
                       meanfBodyGyroSD=mean(fBodyGyroSD,na.rm=TRUE),
                       meanAngleGravityM=mean(AngleGravityM,na.rm=TRUE))

write.table(HARSummaryStats,"project/HARSummaryStats.txt", row.names=FALSE)

#disk/memory cleanup
rm(temp, temp1, temp2)
rm(combined_XYZ,alldata,ActLabels,combinedXYZ,features,featuresInfo,mergeTest, mergeTrain)
rm(row,subject_test,subject_train,X_test,X_train,Xdata_clean,y_test,y_train,Ydata_clean,Zdata_clean)
rm(sortorder)

