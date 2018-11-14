This file contains a list of data names and units in tidy.txt. 
## Data Transformations
Only data fields related to mean or standard deviation(std) were kept from the original data set.  
Each data heading was taken with the mean for each subject and activity combination for tidy.txt.  
The following were renamed;  

| Original  |  Replacement   |    
|-----------|----------------|   
| '-std'    | 'Std'          |  
| '-mean'   | 'Mean'         |  
| '[-()]'   | ''             |  
| '^t'      | 'time'         |  
| '^f'      | 'frequency'    |  
| 'Freq'    | 'Frequency'    |  
| 'Acc'     | 'Acceleration' |  
| 'Mag'     | 'Magnitude'    |  
| 'Gyro'    | 'Gyroscope'    |  

## Identifiers  
subject   
* id, integer, range 1 to 30  
  
activity  
* id, with 6 possible values  

### Activity Labels    
                                     
| Label              | Description                |  
|--------------------|----------------------------|  
| WALKING            | subject walking            |  
| WALKING_UPSTAIRS   | subject walking upstairs   |  
| WALKING_DOWNSTAIRS | subject walking downstairs |   
| SITTING            | subject sitting            |  
  
## Column Headings  
Each heading is descritive to the data contained.   
First id for domain:       
* time, frequency    
  
Second id for location:    
* Body, Gravity  
  
Third id for type:  
* Acceleration, Gyroscope, AccelerationJerk, GyroscopeJerk  
  
Fourth id for measurement:  
* Mean, Std , Magnitude 
  
Fifth id for direction of measurement(optional):    
* X, Y, Z  

### Time Domain  
These are raw sensor signals.  
  
timeBodyAccelerationMeanX                              
timeBodyAccelerationMeanY                              
timeBodyAccelerationMeanZ                              
timeBodyAccelerationStdX  
timeBodyAccelerationStdY                               
timeBodyAccelerationStdZ                               

timeGravityAccelerationMeanX                           
timeGravityAccelerationMeanY                           
timeGravityAccelerationMeanZ                           
timeGravityAccelerationStdX                            
timeGravityAccelerationStdY                            
timeGravityAccelerationStdZ                            

timeBodyAccelerationJerkMeanX                          
timeBodyAccelerationJerkMeanY                          
timeBodyAccelerationJerkMeanZ                          
timeBodyAccelerationJerkStdX                           
timeBodyAccelerationJerkStdY                           
timeBodyAccelerationJerkStdZ                           

timeBodyGyroscopeMeanX                                 
timeBodyGyroscopeMeanY                                 
timeBodyGyroscopeMeanZ                                 
timeBodyGyroscopeStdX                                  
timeBodyGyroscopeStdY                                  
timeBodyGyroscopeStdZ                                  

timeBodyGyroscopeJerkMeanX                             
timeBodyGyroscopeJerkMeanY                             
timeBodyGyroscopeJerkMeanZ                             
timeBodyGyroscopeJerkStdX                              
timeBodyGyroscopeJerkStdY                              
timeBodyGyroscopeJerkStdZ                              

timeBodyAccelerationMagnitudeMean                      
timeBodyAccelerationMagnitudeStd                       

timeGravityAccelerationMagnitudeMean                   
timeGravityAccelerationMagnitudeStd                    

timeBodyAccelerationJerkMagnitudeMean                  
timeBodyAccelerationJerkMagnitudeStd                   

timeBodyGyroscopeMagnitudeMean                         
timeBodyGyroscopeMagnitudeStd                          

timeBodyGyroscopeJerkMagnitudeMean                     
timeBodyGyroscopeJerkMagnitudeStd                      

### Frequency Domain  
These are time domain signals with an Fast Fourier Transform (FFT) taken.  Some signals have an additional frequency component used on their mean measurement.
  
frequencyBodyAccelerationMeanX                         
frequencyBodyAccelerationMeanY                         
frequencyBodyAccelerationMeanZ                         
frequencyBodyAccelerationStdX                          
frequencyBodyAccelerationStdY                          
frequencyBodyAccelerationStdZ                          

frequencyBodyAccelerationMeanFrequencyX                
frequencyBodyAccelerationMeanFrequencyY                
frequencyBodyAccelerationMeanFrequencyZ                

frequencyBodyAccelerationJerkMeanX                     
frequencyBodyAccelerationJerkMeanY                     
frequencyBodyAccelerationJerkMeanZ                     
frequencyBodyAccelerationJerkStdX                      
frequencyBodyAccelerationJerkStdY                      
frequencyBodyAccelerationJerkStdZ                      

frequencyBodyAccelerationJerkMeanFrequencyX            
frequencyBodyAccelerationJerkMeanFrequencyY            
frequencyBodyAccelerationJerkMeanFrequencyZ            

frequencyBodyGyroscopeMeanX                            
frequencyBodyGyroscopeMeanY                            
frequencyBodyGyroscopeMeanZ                            
frequencyBodyGyroscopeStdX                             
frequencyBodyGyroscopeStdY                             
frequencyBodyGyroscopeStdZ                             

frequencyBodyGyroscopeMeanFrequencyX                   
frequencyBodyGyroscopeMeanFrequencyY                   
frequencyBodyGyroscopeMeanFrequencyZ                   

frequencyBodyAccelerationMagnitudeMean                 
frequencyBodyAccelerationMagnitudeStd                  
frequencyBodyAccelerationMagnitudeMeanFrequency        

frequencyBodyBodyAccelerationJerkMagnitudeMean         
frequencyBodyBodyAccelerationJerkMagnitudeStd          
frequencyBodyBodyAccelerationJerkMagnitudeMeanFrequency  

frequencyBodyBodyGyroscopeMagnitudeMean                
frequencyBodyBodyGyroscopeMagnitudeStd                 
frequencyBodyBodyGyroscopeMagnitudeMeanFrequency       

frequencyBodyBodyGyroscopeJerkMagnitudeMean            
frequencyBodyBodyGyroscopeJerkMagnitudeStd             
frequencyBodyBodyGyroscopeJerkMagnitudeMeanFrequency  
