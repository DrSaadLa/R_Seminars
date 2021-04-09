#=========================================================================#
#               Introduction to ggplot2 package:
#               ----------------------------
#                         Positions
# ------------------------------------------------------------------------#
#  Position specifies how ggplot will adjust for overlapping bars or points on 
#  a single layer. 
# For example, we have:
# 1.identity
# 2. dodge,           (with barplots)
# 3. stack,           (barplots)
# 4. fill,            (barplot)
# 5. jitter,          (points)
# 6. jitterdodge, 
# 7. nudge 

# These are set just like attributes 
data("iris")

# 1. position = "identity" (default) --------------------------------------
# "Identity" means that the value in the data frame is exactly where the value
# will be positioned in the plot. This basically means, don't do anything, just
# put the information where the data says to put the information

# In other words: Identity = don't adjust the points

iris %>% ggplot(aes(Sepal.Length, Sepal.Width, color = Species)) + 
            geom_point(position = "identity")

# Because position = "identity" is the default,
#it is not necessary to write it

iris %>% ggplot(aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point()

# 2. position = "jitter" --------------------------------------------------
# Jitter means adding some random noise on x and y axes in order to 
# overcome overplotting, and to see regions with high density. 

# jitter: aims to avoid overplotting
?jitter

# Example of jitter function
jitter(rep(1, 5))             # It adds random noise to the scale


data("mtcars")
# Plot 0 vs. mpg
dev.new()
ggplot(mtcars, aes(x = mpg, y= 0)) +
  geom_point(position = 'jitter', color = "blue")
dev.new()
ggplot(mtcars, aes(mpg, 0)) +
  geom_point(color = "red")

# Example with real data
dev.new()
iris %>% ggplot(aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point()
dev.new()
iris %>% ggplot(aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point(position = "jitter")

# We can use geom_jitter() function as well 
ggplot(mtcars, aes(mpg, 0)) +
  geom_jitter() + 
  ylim(-2, 2)
iris %>% ggplot(aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_jitter()

# 3. Function position_jitter ---------------------------------------------
?position_jitter
# We can use it to keep consistency over all plots
posit_j <- position_jitter(width = 0.2, seed = 234)

iris %>% ggplot(aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point(position = posit_j)


