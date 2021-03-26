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

# Introduction to piecharts -----------------------------------------------
# Pie charts are used to show a univariate distribution of a categorical variable
?pie

require(datasets)
data("chickwts")
feeds <- table(chickwts$feed)
feeds

# Create a pie chart
pie(feeds)

# Customize the pie chart 
feeds_sorted <- sort(feeds, decreasing = TRUE)

pie(feeds_sorted, 
    init.angle = 90, 
    clockwise = TRUE,
    col = rainbow(6), 
    radius = 1,
    border = "red",
    main = "Pie Chart of Feeds from chickwts")


# Pie Charts are bad for plotting ------------------------------------------

# THE PROBLEM WITH PIE CHARTS
# Three data sets
pie.a <- c(22, 14, 18, 20, 14, 12)
pie.b <- c(20, 18, 16, 18, 16, 12)
pie.c <- c(12, 14, 20, 18, 14, 22)

# Changing graphical parameters for a minute
oldpar <- par()   # Stores old graphical parameters
par(mfrow    = c(3, 1),  # Num. rows/cols
    cex.main = 2)   #  Main title 3x bigger
par(mar = c())
colors <- c("grey98", "grey90", "lightskyblue", "lightgreen", "grey98", "grey90")


# Three pie charts side by side
# Is the green slice or blue slice bigger?
pie(pie.a, main = "Pie A", col = colors, radius = 1)
pie(pie.b, main = "Pie B", col = colors, radius = 1)
pie(pie.c, main = "Pie C", col = colors, radius = 1)

# Three bar charts side by side
# Is the green bar or blue bar bigger?
barplot(pie.a, main = "Bar A", col = colors)
barplot(pie.b, main = "Bar B", col = colors)
barplot(pie.c, main = "Bar C", col = colors)

# CONCLUSION
# From R help on pie charts:
?pie

# Pie charts are a very bad way of displaying information.
# The eye is good at judging linear measures and bad at
# judging relative areas. A bar chart or dot chart is a
# preferable way of displaying this type of data.
# 
# Cleveland (1985), page 264: "Data that can be shown by
# pie charts always can be shown by a dot chart. This means
# that judgements of position along a common scale can be
# made instead of the less accurate angle judgements."
# This statement is based on the empirical investigations
# of Cleveland and McGill as well as investigations by
# perceptual psychologists.

par(oldpar)  # Restore old graphical parameters
rm(list = lm()) 
