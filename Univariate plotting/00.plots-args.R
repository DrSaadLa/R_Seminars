#=========================================================================#
#               Statistical Analysis with R:
#               ----------------------------
#               Learning the argument of plotting, Basic R
# ------------------------------------------------------------------------#

# 1. Creating A directory for plotting

if (!dir.exists(file.path(dirname(getwd()), "Plotting", "Stats-One-Variable"))) {
  dir.create(file.path(dirname(getwd()), "Plotting", "Stats-One-Variable"))
}

# 2. Changing the working directory

setwd(file.path(dirname(getwd()), "Plotting", "Stats-One-Variable"))

#1. Plot function
# 1.1. default Plot functions
# creating some random data from normal and uniform distribution
?plot
?plot.default


x_norm <- rnorm(500)
x_unif <- runif(500)
x_csum <- cumsum(x)

plot(x_norm)           
plot(x_unif)
plot(x_csum)

# 1.2. The type Argument

plot(x_norm, type = 'l')                # "l" letter for line plot
plot(x_unif, type = "l")
plot(x_csum, type = "l")

# 1.3. Other types 
plot(x_csum, type = "h")               # 'h' histogram
plot(x_csum, type = "p")               # 'p' point, the default
plot(x_csum, type = 'o')               # 'o' overlap
plot(x_csum[1:20], type = 's')        # 's' for step

# 1.4. color argument

plot(x_csum, type = 'l', col = 'blue')
plot(x_csum, type = 'l', col = 'green')

# 1.4 line type argument

y_csum <- cumsum(rnorm(50))
plot(y_csum, type = 'l', col = 'blue', lty = 1)
plot(y_csum, type = 'l', col = 'blue', lty = 2)          # Dashed line
plot(y_csum, type = 'l', col = 'blue', lty = 3)          # Dotted line
plot(y_csum, type = 'l', col = 'blue', lty = 4)          # dotdash
plot(y_csum, type = 'l', col = 'blue', lty = 5)          # longdahs
plot(y_csum, type = 'l', col = 'blue', lty = 6)          #twodash
plot(y_csum, type = 'l', col = 'blue', lty = 0)          # blank

# you can use the name of the line type as well 

plot(y_csum, type = 'l', col = 'blue', lty = "dashed") 
plot(y_csum, type = 'l', col = 'blue', lty = "dotted") 

# 1.5. line width argument
plot(y_csum, type = 'l', col = 'blue', lty = 2, lwd = 1) 
plot(y_csum, type = 'l', col = 'blue', lty = 2, lwd = 2) 
plot(y_csum, type = 'l', col = 'blue', lty = 2, lwd = 3) 
plot(y_csum, type = 'l', col = 'blue', lty = 2, lwd = 4) 

# 1.6. Adding a title to the plot 
# 1.6.1. main argument

plot(y_csum, type = 'l', col = 'blue', lty = 2, lwd = 2,
     main = 'Financial Data in Blue')

plot(y_csum, type = 'l', col = 'red', lty = 4, lwd = 2,
     main = 'Financial Data in Red')

# 1.6.2 title function. 
# first: create the plot without a title
plot(y_csum, type = 'l', col = 'blue', lty = 2, lwd = 2)

# Second: Add a title with the title() function
title(main = "Fictitious Financial Data")


# Main argument -----------------------------------------------------------
plot(y_csum, type = 'l', col = 'blue', lty = 2, lwd = 2)

# main with different color
title(main = "Fictitious Financial Data", col.main = "blue")

# More arguments with title

plot(y_csum, type = 'l', col = 'blue', lty = 2, lwd = 2)

# The font size:
title(main = "Fictitious Financial Data", 
        col.main = "blue",
        font.main = 4)            # Bold Italic font, try 1, 2, 3

# Magnifying the title

plot(y_csum, type = 'l', col = 'blue', lty = 2, lwd = 2)

# The font size:
title(main = "Fictitious Financial Data", 
      col.main = "blue",
      font.main = 2, 
      cex.main = 3)     # Try other numbers          

# Adding a subtitle to a plot
plot(y_csum, type = 'l', col = 'blue', lty = 2, lwd = 2)

title(main = "Fictitious Financial Data", 
      sub = "example of a random walk",
      col.main = "blue",
      col.sub = "red",
      font.main = 2, 
      font.sub = 4,
      cex.main = 3, 
      cex.sub = 1.5)

# Adding labels -----------------------------------------------------------
plot(y_csum, type = 'l', col = 'blue', lty = 2, lwd = 2,
     xlab = "Time", 
     ylab = "Cumulative sum of normal dist")

# Changing the color of labels
plot(y_csum, type = 'l', col = 'blue', lty = 2, lwd = 2,
     xlab = "Time", 
     ylab = "Cumulative sum of normal dist",
     col.lab = "slateblue")


# Axes color --------------------------------------------------------------

plot(y_csum, type = 'l', col = 'blue', lty = 2, lwd = 2,
     xlab = "Time", 
     ylab = "Cumulative sum of normal dist",
     col.lab = "slateblue",
     col.axis = 'red')


# label position ----------------------------------------------------------

plot(y_csum, type = 'l', col = 'blue', lty = 2, lwd = 2,
     xlab = "Time", 
     ylab = "Cumulative sum of normal dist",
     col.lab = "slateblue",
     col.axis = 'red',
     las = 0)           # 0 (default),1, 2, 3 

# Axes limits -------------------------------------------------------------

plot(y_csum, 
     type = 'l',
     col = 'blue', 
     lty = 1,
     lwd = 2, 
     xlim = c(-1, 60),
     ylim = c(-1, 4))







