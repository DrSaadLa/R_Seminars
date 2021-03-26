#=========================================================================#
#               Statistical Analysis with R:
#               ----------------------------
#                         Barplots 
# ------------------------------------------------------------------------#

# 1. Creating A directory for plotting

if (!dir.exists(file.path(dirname(getwd()), "Plotting", "Stats-One-Variable"))) {
  dir.create(file.path(dirname(getwd()), "Plotting", "Stats-One-Variable"))
}

# 2. Changing the working directory

setwd(file.path(dirname(getwd()), "Plotting", "Stats-One-Variable"))


# Loading - Data ----------------------------------------------------------

require(datasets)
data("chickwts")
?chickwts
str(chickwts)
head(chickwts, 15)
tail(chickwts, 15)

# Plotting the feed variable with the plot function

plot(chickwts$feed)

# If you are happy with this chart, maybe you consider coloring it
plot(chickwts$feed, col = rainbow(6))

# Introduction to barplots ------------------------------------------------
# Barplots are used to plot categorical variables
?barplot

feeds <- table(chickwts$feed)
feeds

class(feeds)

# Plotting with barplot function
barplot(feeds)

# You may consider changing how the barplots looks 
args(barplot.default)

# Most of the time we need to sort the data either increasingly or decreasingly
?sort
?order                 # gives the index 

barplot(sort(feeds, decreasing = TRUE))
# Or
barplot(feeds[order(feeds, decreasing = TRUE)])

# Created the sorted data

feeds_sorted <- feeds[order(feeds, decreasing = FALSE)]

# Horizontal barplot

barplot(feeds_sorted, horiz = TRUE)


# Customize the chart ---------------------------------------------------
opar <- par(no.readonly = TRUE)
par(oma = c(1, 1, 1, 1))  # Sets outside margins: b, l, t, r
par(mar = c(5, 6, 2, 1))  # Sets plot margins
barplot(feeds[order(feeds)], 
        horiz  = TRUE,
        las    = 1,  # las gives orientation of axis labels
        col    = c("beige", "blanchedalmond", "bisque1", 
                   "bisque2", "bisque3", "bisque4"),
        border = NA,                               # supresses the borders
        main   = "Frequencies of Different Feeds\nin chickwts Dataset",  # \n = line break
        xlab   = "Number of Chicks")
par(opar)


# More barplot args -------------------------------------------------------
opar <- par(no.readonly = TRUE)
par(oma = c(1, 1, 1, 1))  
par(mar = c(5, 6, 3, 1))  

barplot(feeds[order(feeds)], 
        horiz  = TRUE,
        las    = 1,  
        col    = rev(heat.colors(6)),
        border = "blue",                               
        main   = "Frequencies of Different Feeds\nin chickwts Dataset",  # \n = line break
        xlab   = "Number of Chicks",
        cex.main = 1.5,                    # magnify the main title
        col.main = "slateblue",            # Color of the main title
        cex.lab = 1.5,                     # Magnify the labels
        cex.names = 1.2,                   # Magnify the names
        cex.axis = 1.3,                    # Magnify the axis
        col.axis = "green",                # Axis labels color 
        col.lab = "blue",                  # xlabel color
        lwd = 3)                           # Line width of the X axis
par(opar)


# Example 02 --------------------------------------------------------------
require(MASS)
data("caith")

# Explore the dataset
?caith

caith

eyecolor <- rowSums(caith)
haircolor <- colSums(caith)

# Create barplots 










# Exercise ----------------------------------------------------------------
require(vcd)
data("Arthritis")

# Check the structure of the data



# Create barplots















# Solution ----------------------------------------------------------------
par(mar = c(5, 5, 4, 2))
barplot(eyecolor, col = rainbow(4), width = 0.75, xlim = c(0, 5),
        ylab = "No: of Poeple", las = 1)
title(main = "Colours of Eyes and Hair\n of People in Caithness", 
      cex.main = 0.75,
      adj = 0.2)
title(xlab= "Eyecolor")


barplot(sort(haircolor), col = rainbow(5), las = 3, horiz = TRUE, 
        las = 1)

barplot(haircolor, col = rainbow(5), space = 0.5)

