#=========================================================================#
#               Introduction to ggplot2 package:
#               ----------------------------
#                         Geometries 
# ------------------------------------------------------------------------#
# Introduction: Generally, all layers start with geom_X, where X is 
# point, histogram, barplot, boxplot ....

require(ggplot2)
require(dplyr)
require(AER)

# Load data
data("diamonds")            # Data From ggplot2 package
str(diamonds)

# 1. geom_point()
# The data is big, so I sampled 3000 obs
my_diamonds <- diamonds[sample(nrow(diamonds), 3000), ]

my_diamonds %>% ggplot(aes(x = carat , y = price)) +
            geom_point()

# We use the alpha aesthetic in this case

my_diamonds %>% ggplot(aes(x = carat , y = price, alpha = I(0.2))) +
  geom_point()

# Adding another layer is simple, just use the '+' sign and a geom
my_diamonds %>% ggplot(aes(x = carat , y = price)) +
  geom_point() + 
  geom_smooth()

# Add color aesthetic
my_diamonds %>% ggplot(aes(x = carat , y = price, color = clarity)) +
  geom_point() + 
  geom_smooth()

# Saving Plot as objects --------------------------------------------------
# We can actually save plots as variables, then modify them as we want 

g <- my_diamonds %>% ggplot(aes(x = carat , y = price))

class(g)
# Start adding layers
g + geom_point()
g + geom_point() + geom_smooth()

# Global and local Aesthetics  --------------------------------------------
# 1. Global Aesthetics 
# --------------------
# ggplot function has the argument mapping = aes()
# We were passing arguments so far only to ggplot function, 
# if we do that, the aesthetics are global, or passed to all layers 
# See the ggplot args as follows 
# ===========================================================================#
args(ggplot)
g <- my_diamonds %>% ggplot(aes(x = carat , y = price))
g + geom_point(alpha = 0.2) + geom_smooth()

g + geom_point(aes(color = clarity)) + 
  geom_smooth()

g + geom_point(aes(color = clarity)) + 
  geom_smooth(aes(color = clarity))

# 2. Local aesthitics mappings
# ----------------------------
# we can pass the aesthetic to each layer. And if you do so, the aesthetics are
# applied only to that layer
# We want to do this when we are using different datasets on the same graph
#and when we don't want all the layers to inherit the same aesthetics from
# different layers
#------------------------------------------------------------------------------#
# We can create the same previous plots by using local aesthetics 
# get help of geom_point() layer
?geom_point()
formalArgs(geom_point)

# Create the previous plot
my_diamonds %>% ggplot() +
                geom_point(aes(carat, price))
# A better way

g2 <- my_diamonds %>% ggplot()

g2 + geom_point(aes(carat, price))
# g2 + geom_point(aes(carat, price, color = clarity)) + 
#       geom_smooth()                               # Try uncomment and run it  

g2 + geom_point(aes(carat, price, color = clarity)) + 
  geom_smooth(aes(carat, price, color = clarity))


# Load data 
data("CPS1985")
data("Journals")

str(CPS1985)

# geom_point()

CPS1985 %>%  ggplot()