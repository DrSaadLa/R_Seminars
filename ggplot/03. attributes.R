#=========================================================================#
#               Introduction to ggplot2 package:
#               ----------------------------
#                         Attributes 
# ------------------------------------------------------------------------#
# Loading the required packages, and data

require(tidyverse)
require(datasets)
data("mtcars")
data("diamonds")


# Introduction ------------------------------------------------------------

# Attributes are always called in the geom layers
# They are different from aesthetics, aesthetics are related to mapping,
# in terms of ggplot2, aesthetic means aesthetic mapping.
# Attributes control how something looks, points, shapes, bars ...

# Example 01:
# ----------

mtcars %>% ggplot(mapping = aes(wt, mpg)) +
  geom_point()

# We want to change the color of points 

mtcars %>% ggplot(aes(wt, mpg, color = "blue")) +  
        geom_point()                               # OOPs, does not work
                              # Careful, anything inside aes() is a variable
                              # "blue" is internally scaled

# Solution: 
# using I() function, [I() it is read "as is"]

mtcars %>% ggplot(aes(wt, mpg, color = I("blue"))) + 
  geom_point() 

# Worked, but better to do it this way
mtcars %>% ggplot(aes(wt, mpg)) + 
  geom_point(color = "blue")       # This is an attribute, not aesthetic

# Why?
#---

mtcars %>% ggplot(aes(wt, mpg)) + 
  geom_point(aes(color = "blue"))     # This is the reason, if it is inside 
                                      # aes() it means it is a variable
                                      # Passing the color parameter to geom layers
                                      # it means setting it to all points

# Another Example ---------------------------------------------------------

# If we want to control how all the points looks, we can use alpha, and color
# 1. Two attributes: color, alpha

mtcars %>% ggplot(aes(wt, mpg)) + 
  geom_point(color = "blue", alpha = 0.5)

# 2. Three attributes: color, alpha, size

mtcars %>% ggplot(aes(wt, mpg)) + 
  geom_point(color = "blue", alpha = 0.5, size = 5)

# 3. Four attributes: color, alpha, size, shape

mtcars %>% ggplot(aes(wt, mpg)) + 
  geom_point(color = "blue", 
             alpha = 0.5, 
             size = 7, 
             shape = "+")
# 4. Five attributes: color, alpha, size, shape, fill

mtcars %>% ggplot(aes(wt, mpg)) + 
  geom_point(color = "blue", 
             alpha = 0.5, 
             size = 7, 
             fill = "lightgreen", 
             shape = 21)

# 5. Many attributes
mtcars %>% ggplot(aes(wt, mpg)) + 
  geom_point(color = "red", 
             alpha = 0.5, 
             size = 5, 
             fill = "lightgreen", 
             shape = 23, 
             stroke = 2)

# Warning -----------------------------------------------------------------

# Attributes will overwrite the aesthetics 
mtcars %>% ggplot(aes(wt, mpg, color = factor(cyl))) + 
  geom_point(color = "blue", size = 4)



# Bonus: Label ------------------------------------------------------------
# Using geom_text() with label parameter will plot the labels 

ggplot(mtcars, aes(wt, mpg, color = factor(cyl))) +
  geom_text(label = rownames(mtcars),
            color = "red") 

ggplot(mtcars, aes(wt, mpg)) +
  geom_text(label = factor(mtcars$cyl),
            color = "red", 
            size = 7)
