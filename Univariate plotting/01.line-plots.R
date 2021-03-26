#=========================================================================#
#               Statistical Analysis with R:
#               ----------------------------
#               Line Plots with R
# ------------------------------------------------------------------------#

# 1. Creating A directory for plotting

if (!dir.exists(file.path(dirname(getwd()), "Plotting", "Stats-One-Variable"))) {
  dir.create(file.path(dirname(getwd()), "Plotting", "Stats-One-Variable"))
}

# 2. Changing the working directory

setwd(file.path(dirname(getwd()), "Plotting", "Stats-One-Variable"))

# ------------------------------------------------------------------------#
# Creating some random data

x_csum <- cumsum(rnorm(500))
y_csum <- cumsum(rnorm(500))
z_csum <- cumsum(rnorm(500))

df <- cbind(x_csum, y_csum, z_csum)             # bind the vectors into a mtrix
head(df)

# Creating a line plot 
plot(x_csum, type = 'l', col = 'blue')

# Adding the second line 

lines(y_csum, type = 'l', col = 'green') # We ran into a problem we should fix 

# Adjusting the axes limits 
plot(x_csum, type = 'l', lwd = 2, col = 'blue', 
     lty = 2, ylim = range(df),
     xlab = 'time', 
     ylab = 'Series', 
     col.axis = 'slateblue',
     col.lab = 'yellow')
lines(y_csum, type = 'l', lty = 3,  lwd = 2, col = 'red')
lines(z_csum, type = 'l', lwd = 2, col = 'green')
lines(rowMeans(df), type = 'l', lty = 4, lwd = 3, col = 'orange')
title(main = 'Random Walk Series', font.main = 4, 
      col.main = 'blue', 
      cex.main = 2)
