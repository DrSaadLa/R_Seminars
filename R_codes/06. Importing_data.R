#=========================================================================#
#         Statistical Analysis with R 2021. 
#         ================================
#         Importing Data From Different sources
# ------------------------------------------------------------------------#

# load packages 
require(readxl)
require(readr)
require(haven)
require(foreign)

# Reading excel files: 
class_xlsx <- read_xlsx("F:\R_Seminars\Seminars n01\Data\class.xlsx")    # Error
                                                        # Use forward slash

class_xlsx <- read_xlsx("F:/R_Seminars/Seminars n01/Data/class.xlsx")
                                                                    # We used / 
str(class_xls)

# Piece of advice: When working on a project, change your directory 
# to same directory where your data and files are located

class_xls <- read_xlsx("F:/R_Seminars/Seminars n01/Data/class.xls")
str(class_xls)
head(class_xls)
tail(class_xlsx)



#=========================================================================#
#         Importing text files
# ------------------------------------------------------------------------#
#Change your directory contains the data

# 1. CSV file
# 1.1. Base R

class_csv <- read.csv('class.csv')    # the extension must be written clearly

str(class_csv)                      # Charcter columns are factors
head(class_csv)
?read.csv

class_csv2 <- read.csv('class.csv', stringsAsFactors = FALSE) 
str(class_csv2)
head(class_csv2)

# Birthday column as class Date
class_csv2$Birthdate <- as.Date(class_csv2$Birthdate, format = "%m/%d/%Y")
head(class_csv2)


# 1.2: readr package

class_csv3 <- read_csv('class.csv')
str(class_csv3)
head(class_csv3)

# 2. Text files 
?read.table
class_txt <- read.table('class.txt', header = TRUE, sep = ',', 
                        stringsAsFactors = F)
str(class_txt)

#=========================================================================#
#         Importing files from STATA, SPSS and SAS
# ------------------------------------------------------------------------#

# 1. Stata

class_stata <- read_dta('class.dta')       # Haven package
str(class_stata)
head(class_stata)

class_stata2 <- readstata13::read.dta13('class.dta')       # readstata13 package
str(class_stata2)
head(class_stata2)
class_stata2
# for stata 12 or less, we can use foreign package with read.dta() function

# 2. SPSS
social_net <- read_sav("social_network.sav")
str(social_net)
head(social_net)
social_net

# 3. SAS
?read_sas

class_sas <- read_sas("class.sas7bdat")
str(class_sas)
head(class_sas)
class_sas

# Database

class_db <- read.dbf('class.dbf')
str(class_db)
head(class_db)

# More sources could be read by R

# Cleaning up 

rm(list = ls())
