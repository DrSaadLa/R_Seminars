#=========================================================================#
#               Statistical Analysis with R:
#               ----------------------------
#               Saving R objects
# ------------------------------------------------------------------------#

# There are three ways of saving R objects:
# 1. Saving a single object: This is can be done by the function saveRDS
# RDS stands for R Data Single
x <- c('A', 'B', 'C', 'D')
saveRDS(x, file = 'single.rds')

#Checking the file

dir()
list.files(path = ".")

rm(x)
exists('x')

# Reading back RDS objects

readRDS(file = "single.rds")

x                             # Error

# saveRDS does not save the name of the object, you need to name when you read it
x <- readRDS("single.rds")
x

# 2. ".RData"

x <- 1:4
y <- matrix(1:3, 3)
z <- list(Small_letters = letters, US_stataes =state.abb,
          abre_months= month.abb, 
          full_month_names=month.name )

z

save(x, y, z, file = "myfile.RData")            # you can specify a different 
                                                # directory
# save(x, y, z, file = "c:/Rlearning/myfile.RData")  
# Check the file
dir(getwd())

# 3. Rda files: rda stands for R data

save(x, y, z, file = "myfile1.rda")
# Check the file
dir(getwd())

#=========================================================================#
#               Saving All the R objects Objects in The Workspace
# ------------------------------------------------------------------------#
?save.image
rm(list = ls())

# Create Some Objects 
x <- 1:10
y <- matrix(1:12, nrow = 3)
z <- rep(c(TRUE, FALSE), each = 2)
ls()
save.image(file = "myObjs.RData")
# Check the directory
dir()
# List ojects in the workspace
ls()

# Remove All Ojects
rm(list = ls())

ls()                # No objects 
#=========================================================================#
#               Loading R objects
# ------------------------------------------------------------------------#
# Loading the saved objects
load(file = "myObjs.RData")
ls()

load(file = 'myfile1.rda')
ls()
rm(list = ls())
load('myfile.RData')
ls()

#=========================================================================#
#               Practice Saving R objects
# ------------------------------------------------------------------------#
# 1. Clean the workspace



# 2. load austres from datasets package


# Save it as .rds file



# Check whether it is saved 



# Clean the workspace then read my_austres back


# 2. Save the Same object as .RData and then .rda


# Check whether the files are saved



# Clean the work space then read the files 





#=========================================================================#
#              Challenge
# ------------------------------------------------------------------------#

# 1. Write a simple function



# Import a file of your choice


# load the data States frome carData package


# Create a matrix ojbect called mat with 10×10 using rnorm()


# Create a data frame obj called df using letters, states name, and a vector



# Create a list called my_list Using LETTERS, Months and states.abb



# Save all the objects 































































#               The Solutions

#=========================================================================#
#               Practice Saving R objects
# ------------------------------------------------------------------------#
# 1. Clean the workspace

rm(list = ls())

# 2. load austres from datasets package
austres

# Save it as .rds file

saveRDS(austres, file = "my_austres.rds")

# Check whether it is saved 

dir()

# Clean the workspace then read my_austres back

rm(list = ls())

aus <- readRDS("my_austres.rds")
head(aus)

# 2. Save the Same object as .RData and then .rda
save(aus, file = "my_austres2.RData")
save(aus, file = "my_austres3.rda")

# Check whether the files are saved

dir()

# Clean the work space then read the files 

rm(list = ls())

load("my_austres2.RData")
aus

load("my_austres3.rda")

#=========================================================================#
#              Challenge
# ------------------------------------------------------------------------#

# 1. Write a simple function

my_func <- function(x, y){}

# Import a file of your choice

class <- read.csv("F:/R_Seminars/Seminars n01/Data/class.csv")

# load the data States frome carData package
data("States", package = "carData")

# Create a matrix ojbect called mat with 10×10 using rnorm()
mat <- matrix(rnorm(100), nrow = 10)

# Create a data frame obj called df using letters, states name, and a vector

vec <- 1:50
let <- rep(letters[], 2)
US_states <- state.name
df <- data.frame(vec, let = let[c(-1,-2)], US_states)

# Create a list called my_list Using LETTERS, Months and states.abb

my_list <- list(Months= month.name, CapLet = LETTERS, abr_US = state.abb)

# Save all the objects 

save(my_func, class,  mat, df, my_list, file = "challenge-sol.rda")

