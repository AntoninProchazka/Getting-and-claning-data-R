As UCI database description states, the variables come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.

The time domain signals has prefix 'time' instead of native prefix 't'. As UCI database description states, They were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (time-BodyAcc-XYZ and time-GravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Signals in frequency domain are denoted by prefix 'freq' instead of native prefix 'f'. They were obtained by Fast Fourier Transform (FFT) producing freq-BodyAcc-XYZ, freq-BodyAccJerk-XYZ, freq- BodyGyro-XYZ, freq-BodyAccJerkMag, freq-BodyGyroMag, freg-BodyGyroJerkMag.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

time-BodyAcc-XYZ
time-GravityAcc-XYZ
time-BodyAccJerk-XYZ
time-BodyGyro-XYZ
time-BodyGyroJerk-XYZ
time-BodyAccMag
time-GravityAccMag
time-BodyAccJerkMag
time-BodyGyroMag
time-BodyGyroJerkMag
freq-BodyAcc-XYZ
freq-BodyAccJerk-XYZ
freq-BodyGyro-XYZ
freq-BodyAccMag
freq-BodyAccJerkMag
freq-BodyGyroMag
freq-BodyGyroJerkMag

The set of variables that were estimated from these signals were reduced to only two:
mean: Mean value
std: Standard deviation

