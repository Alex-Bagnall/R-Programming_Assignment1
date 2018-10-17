# R-Programming_Assignment1

## This was a project required to complete the R Programming course: https://www.coursera.org/learn/r-programming

Each script accesses the csv files in the folder, by default every files is accessed but the user has the option to specify a set of files. 
* The pollutantMean.R script takes a file directory input, type of pollutant, for this dataset the user must enter "nitrate" or "sulfate", and id input to decide which csv files to choose. The mean of these pollutants is assessed, only complete rows are used for this calculation. 
* The complete.R script takes a file directory input and id input. This script removes the incomplete rows from each chosen file and returns the number of complete cases in the file.
* The corr.R script takes a file directory input and a threshold value. The script uses the complete script to find the number of complete cases for each csv file. Then this is compared to the threshold value, if it is higher then it is considered. The considered csv files are then used to assess the correlation of nitrate and sulfate in each area.

This project recieved 100% from assessment. Assessment involved running multiple test cases through each script.
