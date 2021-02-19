#=========================================================================#
#         Statistical Analysis with R 2021. 
#         ================================
#         Getting Help from  R
# ------------------------------------------------------------------------#

# 1. Getting help on datasets and libraries 

?datasets

library(help = "datasets")       #  list all the available data in the package

?library()                       
library()   # Available libraries

library(datasets)

# Detach a library    
# Suppose you loaded a package then you want to unload it 
# Use detach()
require(MASS)

detach(package:MASS)
#=========================================================================#
#         Extensive Help
# ------------------------------------------------------------------------#

# 1. Packages

help(package = "base")

help(package = "datasets")

help.start()               # Useful, it takes you to the start page

# 2. Single data 
?AirPassengers

# 3. Functions
help(mean)
?mean

example(mean)           # Get examples

# Double "??" look up deeper 

??mean

# To see all the available data sets write 

data()

# Data from specific package 

data(package = "base")
data(package = "carData")
data(package = "AER")

#=========================================================================#
#                Loading and Using Data
# ------------------------------------------------------------------------#

# Data from base package is available
airmiles
lynx
co2

# load data from othere packages
data(package = "carData")
data(Duncan)                       

# show available packages in the current environment 
search()

require(carData)
data(Duncan)   


#=========================================================================#
#                 Exploring the Data:
# ------------------------------------------------------------------------#
# Using str function 
?str 

str(AirPassengers)             # Structure of a dataset
str(anscombe)
str(airmiles)
str(Duncan)

# You can use the the function structure()  to see further attributes
structure(Duncan)
structure(AirPassengers)


# Use View() function: Capital 'V'
View(Duncan)
# Just write the name of the data object
Duncan

# Changing of editing the dataset 
fix(airmiles)
edit(Duncan)

#=========================================================================#
#                 Getting Access to variables:
# ------------------------------------------------------------------------#
# 1. Using The dollar Sign '$'

data("anscombe")
anscombe

x1 <- anscombe$x1
x1
x2                  # It does not exist unless you have already created one

anscombe$x2
rm(x1)

# If you use the data throughout a lot you can use attach()
attach(anscombe)
x1
x2
y1; y2; y3; y4

# detach the data
detach(anscombe)

# Using With function:
with(anscombe, print(x1))             # It is usefull especially in long codes
                                      # Be Aware that with() exists
#=========================================================================#
#                 Listing all objects in the environment: 
# ------------------------------------------------------------------------#
?ls
ls()

#=========================================================================#
#                 Cleaning the environment: 
# ------------------------------------------------------------------------#

# Removing all objects from the current env 

rm(list = ls())                  # Don't use it when sharing codes with others

