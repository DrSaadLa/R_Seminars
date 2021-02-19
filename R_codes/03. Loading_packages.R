#=========================================================================#
#             Automatic laoding and installing packages
# ------------------------------------------------------------------------#
# It is necessary to make the code automatic when working with R
# if the required  package is installed then loaded it, else install it then 
# load it

if(!require("MASS")) install.packages("MASS")

# Another way 
if(!require("pacman")) install.packages("pacman")

p_load(MASS)
p_load(xts)
p_load(ggplot2)
p_load(tidyverse)

#=========================================================================#
#             Installing packages:
# ------------------------------------------------------------------------#
#1. Methods 01:

install.packages("package_name")  # put the package name in the parenthesis

# 2. Method 02:
# Many packages require other packages, using dependencies = TRUE will install them

install.packages("package_name", dependencies = TRUE)

#=========================================================================#
#             Installing packages from gitHub repository
# ------------------------------------------------------------------------#
# It requires the devtools 
install.packages("devtools")

devtools::install_github("Displayr/flipPlots")

#=========================================================================#
#             loading packages
# ------------------------------------------------------------------------#

# After installing a package, it must be loaded to be available for use

# 1. Using library() 
library("package_name")

# 2. Using require()
require("package_name")
#=========================================================================#
#             loading packages using other packages
# ------------------------------------------------------------------------#
# pacman and librarian packages

install.packages(c("pacman", 'librarian'), dependencies = TRUE)

# Using pacman package, p_load() function

pacman::p_load(package_name)    # this function checks to see if the specified
                                  # package is installed, if not, it will to install
                                # it and then load it

# Using librarian package, shelf()

librarian::shelf(package_name)   # read the documentation about this for more 
                                 # information
