#=========================================================================#
#         Statistical Analysis with R 2021. 
#         ================================
#         Entering Data Manually
# ------------------------------------------------------------------------#

# 1. Sequential Data 

x1 <- 1:5                     # Assiging data to x1
x1

x2 <- -5:1
x2

# 2. Using seq()
?seq
seq(5)                              # Starts from 1
x3 <- seq(from= 1, to = 5, by = 1)
x3

x4 <- seq(1, 50, by = 5)
x4

# Reverse the seq

x5 <- seq(50, 10, by = -10)
x5

# Using length.out argument

x6 <- seq(0, 1, length.out = 10)
x6
length(x6)

# 2. Vector: using c() function
?c
v1 <- c(4, 5, 1, 0, 9)             # Numeric 
v2 <- c(TRUE, FALSE, FALSE, TRUE)  # Logical
v3 <- c('A', 'Y', 'D', 'H')        # Character

# Scan() function

v4 <- scan()                      # Entering data in the console

#=========================================================================#
#                 Cleaning the environment: 
# ------------------------------------------------------------------------#
rm(list = ls())
