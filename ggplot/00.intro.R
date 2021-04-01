#=========================================================================#
#               Introduction to ggplot2 package:
#               ----------------------------
#                         Introduction
# ------------------------------------------------------------------------#
if (!dir.exists(file.path(dirname(getwd()), "Ggplot2-Training"))) {
  dir.create(file.path(dirname(getwd()), "Ggplot2-Training"))
}

# 2. Changing the working directory

setwd(file.path(dirname(getwd()), "Ggplot2-Training"))

# Install and Load the package

if (!require(ggplot2)) install.packages("ggplot2")
if (!require(tidyverse)) install.packages("tidyverse")

# require(tidyverse)
# require(ggplot2)

# A Closer at the package  ------------------------------------------------
# Familiarization with the package 

help(package = "ggplot2")
?ggplot
vignette("ggplot2-specs")
browseVignettes("ggplot2")

# The structure of the function
# ggplot(data = NULL, mapping = aes(), ..., environment = parent.frame())

# Creating an empty plot

dev.new()
plot.new()         # Blank slate 

dev.new()
ggplot()           # Blank slate

# General Rule

# ggplot(data, mapping) + Layers 01 + layer 02 + ...


# Loading Data ------------------------------------------------------------
data("mtcars")
?mtcars
str(mtcars)

# First Example

ggplot(data = mtcars, mapping = aes(x = wt, y = mpg))

# We didn't add any layers, we have to add them
# They are easy, just use the '+' with the right geometry

ggplot(data = mtcars, mapping = aes(x = wt, y = mpg)) +
            geom_point()

# Second Example 
ggplot(data = mtcars, mapping = aes(x = cyl, y = mpg)) +
  geom_point()

# We better change the cyl variable into a factor
ggplot(data = mtcars, mapping = aes(x = factor(cyl), y = mpg)) +
  geom_point()

ggplot(data = mtcars, mapping = aes(x = am, y = mpg)) +
  geom_point()

# Well-known Example, The iris dataset
data("iris")
iris %>% ggplot(aes(Sepal.Length, 
                    Sepal.Width, 
                    color = Species)) + 
                     geom_point()

# Using the Pipe Operator -------------------------------------------------

mtcars %>% ggplot(mapping = aes(x = wt, y = mpg)) + 
         geom_point()


# Remember: GG Stands for Grammar of Graphics 
# Reference: Grammar of Graphics by Leland Wilkinson

# GGplot mainly consists of three components, Data, mapping, Geometries  
