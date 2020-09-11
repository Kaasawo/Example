***********************************
*Project: Example
*Version: 9/11/2020
*Author: Kimberly
************************************

help shell //getting help on calling Git on Stata Command

cd .. // going back one directorate during change of directorate

cd Desktop //getting to Desktop directorate

cd Gitproject1 //getting to Gitproject1 file within Desktop. your work is saved here

shell git init //initiating Git within stata

sysuse cancer.dta //using example data from stata

label define died 1 "patient died" 0 "patient alive" //variable labling for 1=dead patients, 0= live patients
label define died 0 "patient alive" 1 "patient died", replace
label values died died

tabulate died // tabulating the variable died to get the frequncy of deaths

summarize studytime drug age died // getting descriptive data of variables ie obs, mean, SD, min, max

summarize studytime died age, detail // getting additinal descriptive data including variance, skewness, kurtosis

graph pie, over (died) //graphing variable died, on a pie chart

histogram studytime, normal //developing a histogram with normal distribution curve

describe //describing data set

reg studytime died drug age //regressing the model
*the regression is insignificant*

