#=========================================================================#
#               Introduction to ggplot2 package:
#               ----------------------------
#                       Adding some embellishment
# ------------------------------------------------------------------------#

setwd(file.path(dirname(getwd()), "Ggplot2-Training"))

# Loading the required packages, and data

require(tidyverse)
require(datasets)
data("mtcars")

# Adding labels to the plot -----------------------------------------------

p <- ggplot(mtcars, aes(wt, mpg)) +
            geom_point(color = "blue", 
                       alpha = 0.4,
                       size = 3, 
                       shape = 19)

# Adding Axes labels

p + labs(x= "Car's Weight", 
         y = "Millage per Gallon")

# Each axis alone ---------------------------------------------------------
# X-axis
 p + xlab("Cars' Weight")

# Y-axis
p + ylab("Millage Per Gallon")

# Alltogether
p + xlab("Cars' Weight") + 
  ylab("Millage Per Gallon")

# Adding a title  ---------------------------------------------------------
?labs
p + labs(title = "MPG vs. wt From mtcars dataset")

# Or: Using ggtitle
?ggtitle
p + ggtitle( "MPG vs. wt From mtcars dataset")

# Change the axes limits --------------------------------------------------

p2 <- ggplot(mtcars, aes(mpg, 0)) + geom_point(position = "jitter")
p2

# Setting the y-axis limits

p2 + ylim(c(-1, 1))
p2 + ylim(c(-2, 2))

# Setting the x-axis limits
p3 <- ggplot(mtcars, aes(0, mpg)) + geom_point(position = "jitter")
p3 

p3 + xlim(x = c(-1, 1))
p3 + xlim(c(-2, 2))


# Putting all together

p + xlim(x = c(-1, 10))
p + ylim(y = c(0, 40))


p + xlim(x = c(-1, 8)) +
  ylim(y = c(0, 40))
