#=========================================================================#
#               Statistical Analysis with R:
#               ----------------------------
#               ColorBrewer System 
# ------------------------------------------------------------------------#
setwd(file.path(dirname(getwd()), "Plotting"))

if (!require(RColorBrewer)) install.packages("RColorBrewer")

require(RColorBrewer)

help(package = "RColorBrewer")

browseURL("http://colorbrewer2.org/")

# Show all of the palettes in a graphics window

?display.brewer.all

display.brewer.all()

# Sequential
display.brewer.all(type = "seq")
# Divergent 
display.brewer.all(type = "div")
# Qualitative
display.brewer.all(type = "qual")


# To See the colors of a single palette

display.brewer.pal(5, "YlOrRd")
display.brewer.pal(9, "YlOrRd")
display.brewer.pal(8, "Accent")
display.brewer.pal(4, "Spectral")


# Choosing-the-Brewer -----------------------------------------------------

?brewer.pal

brewer.pal(6, "Set1")                 
brewer.pal(9, "Greens")

# Using The Brewer

barplot(sample(1:33, 6), col = brewer.pal(6, "Accent"))
barplot(sample(1:33, 6), col = brewer.pal(6, "Spectral"))

barplot(sort(sample(1:33, 6)), col = brewer.pal(6, "YlOrRd"))
barplot(sort(sample(1:33, 6), decreasing = TRUE),
        col = brewer.pal(6, "Greens"))


# Playing-More-With-Colors ------------------------------------------------
x <- sample(1:59, 7)

barplot(x, col = brewer.pal(7, "Blues"))
barplot(x, col = brewer.pal(7, "PuBu"))
barplot(x, col = brewer.pal(7, "Oranges"))
barplot(x, col = brewer.pal(7, "Greens"))
barplot(x, col = brewer.pal(7, "OrRd"))
barplot(x, col = brewer.pal(7, "Paired"))
barplot(x, col = brewer.pal(7, "Pastel2"))
barplot(x, col = brewer.pal(7, "Set3"))

# Finishing-up-Session ----------------------------------------------------

palette("default")  # Return to default
detach("package:RColorBrewer", unload = TRUE)
rm(list = ls())  
