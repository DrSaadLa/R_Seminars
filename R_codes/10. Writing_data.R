#=========================================================================#
#               Statistical Analysis with R:
#               ----------------------------
#               Exporting Data
# ------------------------------------------------------------------------#

# R can write data to many different formats
# laoding required packages 

if(!require(fore)) install.packages("pacman")

pacman::p_load(foreign)
pacman::p_load(haven)
pacman::p_load(xlsx)
pacman::p_load(dplyr)
pacman::p_load(readr)
pacman::p_load(MASS)

#=========================================================================#
#               Writing text files
# ------------------------------------------------------------------------#
# 1. CSV files 

data("Cars93")
head(Cars93)
colnames(Cars93)
?write.csv

cars_csv <- write.csv(Cars93, 
                      file = "F:/R_Seminars/seminar n02/Data2/cars93.csv")

# Check the data 
dir(path = "F:/R_Seminars/seminar n02/Data2")

# Read the data back 
car_1 <- read.csv(file = "F:/R_Seminars/seminar n02/Data2/cars93.csv")
head(car_1)
colnames(car_1)

# Check whether the colnames are identical 
identical(colnames(Cars93), colnames(car_1))

# Save Correctly 
cars_csv_correct <- write.csv(Cars93, 
                      file = "F:/R_Seminars/seminar n02/Data2/cars93.csv",
                      row.names = FALSE)

# We will use the write_csv function from readr package in the practice section

# 2. Text file

cars_txt <- write.table(Cars93, 
                        "F:/R_Seminars/seminar n02/Data2/cars93.txt")

# read back to to check 

car_txt1 <- read.table(file = "F:/R_Seminars/seminar n02/Data2/cars93.txt",
                       header = TRUE)
head(car_txt1)

# Are colnames identical 
identical(colnames(Cars93), colnames(car_txt1))

# Tab separated file

cars_tab <- write.table(Cars93, 
                        "F:/R_Seminars/seminar n02/Data2/cars_tab.txt", 
                        sep = "\tab")


#=========================================================================#
#               Writing data to external sources
# ------------------------------------------------------------------------#

# 1. Stata or .dta files
?write_dta
cars_dta <- write.dta(Cars93, "cars.dta")

# 2. A Second version of saving Stata files

names(Cars93) <- gsub(".", "_", names(Cars93), fixed = TRUE)

cars_v2 <- write_dta(Cars93, file.path(getwd(), "Data2", "cars93.dta"))

list.files(file.path(getwd(), "Data2"))

# 2. Excel files:

cars_xlsx <- write.xlsx(Cars93, file.path(getwd(), "Data2", "cars93.xlsx"))

dir(file.path(getwd(), "Data2"))

# 3. SPSS files

cars_sav <- write_sav(Cars93, file.path(getwd(), "Data2", "cars93.sav"))


# 4. SAS

cars_minitab <- write_sas(Cars93, file.path(getwd(), "Data2", "cars93.sas7bdat"))

