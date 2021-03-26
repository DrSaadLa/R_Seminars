#=========================================================================#
#               Statistical Analysis with R:
#               ----------------------------
#                         Piecharts 
# ------------------------------------------------------------------------#

# 1. Creating A directory for plotting

if (!dir.exists(file.path(dirname(getwd()), "Plotting", "Stats-One-Variable"))) {
  dir.create(file.path(dirname(getwd()), "Plotting", "Stats-One-Variable"))
}

# 2. Changing the working directory

setwd(file.path(dirname(getwd()), "Plotting", "Stats-One-Variable"))


# Introduction to histograms ----------------------------------------------
# Histograms are used to show the distribution of continuous variables 
?hist

require(MASS)
data("Cars93")

# Create a basic histogram
hist(Cars93$Price)


# Customize the histogram -------------------------------------------------
attach(Cars93)
hist(Price, 
     breaks = 20,   # You try to change the number here to get a better look
     freq = FALSE,
     col = "slateblue", 
     main = "The Cars' Prices")             

# Adding a normal density to histogram, only if freq is FALSE 
curve(dnorm(x, mean = mean(Price), sd = sd(Price)), 
      col = "indianred", 
      lwd = 2, 
      add = TRUE)

detach(Cars93)
# Another example ---------------------------------------------------------

data("airmiles")
str(airmiles)
hist(airmiles)

# Customize the histogram
hist(airmiles, 
     breaks = 10, 
     col = "lightblue", 
     freq = FALSE, 
     main = "Passenger Miles on Commercial US Airlines\n 1937-1960")
curve(dnorm(x, mean = mean(airmiles), sd = sd(airmiles)), 
      col = "indianred", 
      lwd = 2, 
      add = TRUE)


# Exercise ----------------------------------------------------------------

# Create a hitogram of mpg.city and mpg.highway for cars93 dataset, MASS package


