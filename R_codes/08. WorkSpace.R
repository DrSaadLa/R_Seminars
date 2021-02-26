#=========================================================================#
#               Statistical Analysis with R:
#               ----------------------------
#               Workspace with R
# ------------------------------------------------------------------------#
# The working directory is the default location for all file inputs and outputs.
# 1. Getting the path of the current Working Directory
getwd()

# 2. Setting The Working Directory
setwd("your_directory goes here")
# Example 
setwd("c:/mydocumnet/Rlearning")

# 2. list all the objects Available in R globalenvironment 
ls()
ls.str()                     # list the objects with their structure

# 3. Checking if a variable exists
?exists
exists('obj')            # Returns FALSE

x <- 1
exists('x')               # Returns TRUE

exists('y')               # Returns FALSE

# 4. Removing objects from the directory rm() function

rm(x)

# Removing more than one object
x <- 1
y <- 2

rm(x, y)

# Removing all objects
x <- 1; y <- 2; z <- 3
rm(list = ls())
exists('x')                        # Returns FALSE

#=========================================================================#
#               Workspace Options
# ------------------------------------------------------------------------#
help("options")

#  Change a specific option (i.e. number of digits to print on output)
# Let me save the defaults firts
def <- options()


options(digits=3)
# Ex:
print(1/3)

# Change the "prompt"
options(prompt = ">>>: ")

# Get the default options
options(def)

