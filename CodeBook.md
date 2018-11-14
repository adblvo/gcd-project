This file contains a list of data names and units in tidy.txt. Each data heading was taken the mean for each subject and activity combination.

## Identifiers  
subject   
* id, integer, range 1 to 30  
  
activity  
* id, with 6 possible values  

### Activity Labels                                       
WALKING -------------- subject walking  
WALKING_UPSTAIRS ----- subject walking upstairs  
WALKING_DOWNSTAIRS --- subject walking downstairs  
SITTING -------------- subject sitting  
STANDING ------------- subject standing  
LAYING --------------- subject laying down  
  
## Column Headings  
Each heading is descritive to the data contained.   
First id for domain:       time, frequency    
Second id for locaiton:    Body, Gravity  
Third id for type:         Acceleration, Gyroscope  
Fourth id for measurement: Mean,Std  
Fifth id for direction:    X, Y, Z  

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
These are time domain signals with an Fast Fourier Transform (FFT) taken.  
  
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
