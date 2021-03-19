#=========================================================================#
#               Statistical Analysis with R:
#               ----------------------------
#               Setting the directory for plotting 
# ------------------------------------------------------------------------#

# 1. Creating A directory for plotting

if (!dir.exists(file.path(dirname(getwd()), "Plotting"))) {
  dir.create(file.path(dirname(getwd()), "Plotting"))
}

# 2. Changing the working directory

setwd(file.path(dirname(getwd()), "Plotting"))

# 3. Check the working directory
getwd()

# 4. check the file
rstudioapi::getActiveDocumentContext()$path

#=========================================================================#
#               Plotting Basics:
# ------------------------------------------------------------------------#


# 1. colors ---------------------------------------------------------------

# 1.1 Examples Barplot

x <- seq(5, 25, by = 5)
plot(x)
barplot(x)


# 1.2. colors() functions 
?colors
# Web page with PDFs of colors in R
browseURL("https://raw.githubusercontent.com/EarlGlynn/colorchart/master/ColorChart.pdf")


colors()                             # This function has 657 color names
length(colors())

# 1.3 Color-with-names --------------------------------------------------------


barplot(x, col = "slateblue1")
barplot(x, col = "yellowgreen")
barplot(x, col = "navy")

# Color each differently
length(x)

barplot(x, col = c("mistyrose1", "moccasin",
                   "olivedrab1", "orange", "oldlace"))


# 1.4. Using colors by refering to them by numbers ------------------------

# Slicing with square brackets, do not forget the parenthesis "()"

barplot(rep(3, 10), col = colors()[1:10])
colors()[1:10]

barplot(rep(3, 10), col = colors()[100:110])
colors()[100:110]

barplot(rep(3, 10), col = colors()[600:610])
barplot(rep(3, 10), col = c(colors()[1], colors()[233:236],
                            colors()[399], colors()[550],
                            colors()[50:53])) 
# The color names used 
c(colors()[1], colors()[233:236],
  colors()[399], colors()[550],
  colors()[50:53])


# RGB ---------------------------------------------------------------------

# RGB stands for Red Green Blue
# By default, colors are specified in 0-1 range 
# We can specify max = 255 to work the scale 0 to 255

?rgb

barplot(x, col = rgb(.45, .0, .0))      # 0 means the darkest possible of the
barplot(x, col = rgb(.0, 0.45, .0))      # specific color. 1 means the whitest
barplot(x, col = rgb(.0, .0, 0.45))

barplot(x, col = rgb(.45, .30, .0))      
barplot(x, col = rgb(.75, 0.15, .50))      
barplot(x, col = rgb(.1, .60, 0.65))

# You can save the RGB colors in an abject to use it later
my_col <- rgb(.8, .2, .9)
barplot(x, col = my_col)

# Recycling  --------------------------------------------------------------

barplot(sample(1:25, 8), col = c("blue", "orange"))
barplot(sample(1:25, 8), col = c("red", "blue", "orange"))
barplot(sample(1:25, 5), col = c("red", "blue", "orange", "yellow", "green"))


# max-255 -----------------------------------------------------------------
x <- sample(1:15, 5)

barplot(x, col = rgb(255, 0, 0, max = 255))
barplot(x, col = rgb(0, 255, 0, max = 255))
barplot(x, col = rgb(0, 0, 255, max = 255))

# You can mix the color the same way with before

barplot(x, col = rgb(100, 0, 222, max = 255))

# But we have a nice function in the next section

# Converting-colors-to-RGB ------------------------------------------------

# col2rgb
?col2rgb

col2rgb(colors()[1])
col2rgb(colors()[553])
col2rgb(colors()[254])

col2rgb(colors()[100])

# Colors-To-hsv -----------------------------------------------------------

# hsv stands for Hue-Saturation value
?rgb2hsv


# Hexcode -----------------------------------------------------------------

barplot(x, col = "#FF0000")          # Red
barplot(x, col = "#00FF00")          # Green
barplot(x, col = "#0000FF")          # Blue
barplot(x, col = "#000000")          # Black
barplot(x, col = "#FFFFFF")          # White

barplot(x, col = "#FFEBCC")         # Example

# Palettes ----------------------------------------------------------------

help(package = 'colorspace')
?palette                     # from grDevices package

palette.pals()
palette.colors()

# Obtain the current palette
palette()

palette("Accent")
palette()

barplot(rep(1, 8), col = palette("Accent"))
barplot(rep(1, 8), col = palette("R3"))
barplot(rep(1, 8), col = palette("set 1"))
barplot(rep(1, 8), col = palette("set 2"))
barplot(rep(1, 8), col = palette("set 3"))
barplot(rep(1, 8), col = palette("ggplot2"))

# Built-in palettes -------------------------------------------------------

?rainbow

# rainbow(n, s = 1, v = 1, start = 0, end = max(1, n - 1)/n, alpha = 1)
# heat.colors(n, alpha = 1)  # Yellow through red
# terrain.colors(n, alpha = 1)  # Gray through green
# topo.colors(n, alpha = 1)  # Purple through tan
# cm.colors(n, alpha = 1)  # Blues and pinks



# First: Let us look at the default palette
palette("default")

?barplot(rep(1, 8), col = 1:8)

x <-  sample(1:35, 6)

barplot(x, col = 1:6)
barplot(x, col = rainbow(6))
barplot(x, col = heat.colors(6))
barplot(x, col = terrain.colors(6))
barplot(x, col = topo.colors(6))
barplot(x, col = cm.colors(6))
palette("default")  # Return to default



