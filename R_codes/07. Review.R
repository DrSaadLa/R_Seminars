#=========================================================================#
#         Statistical Analysis with R 2021. 
#         ================================
#             Review of the first Seminars
# ------------------------------------------------------------------------#

# 1. Installing Packages:
# 1.1

install.packages("package_name")
# ex: install.packages("tidyr")

# 1.2

if(!require("package_name")) install.packages("package_name")
#Ex:

if(!require("MASS")) install.packages("MASS")

# 2. Loading Packages
#2.1
library(MASS)

# 2.2 
require(MASS)

# Special Case: If you don't want to load a package you can use "::" 

MASS::Boston
dplyr::select()

# Package help

help(package = "package_name")

# Function help
?print

help(print)
help(data)
help("airmiles")
# Loading data from packages 

data(package = "package_name")
data(package = "MASS")
#=========================================================================#
#         Statistical Analysis with R 2021. 
#         ================================
#             Useful website to start looking for packages
# ------------------------------------------------------------------------#

browseURL("https://cran.r-project.org/web/views/")


install.packages("ctv")

if(!require("ctv")) install.packages("ctv")

ctv::available.views()
#ctv::download.views()
#ctv::install.views()
