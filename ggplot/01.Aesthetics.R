#=========================================================================#
#               Introduction to ggplot2 package:
#               ----------------------------
#                         Aesthetics
# ------------------------------------------------------------------------#

require(ggplot2)
require(dplyr)
data("mtcars")

# Remember
# ggplot(data, mapping) + Layers 01 + layer 02 + ... or
# data %>% ggplot() + Layer 01 + layer 02 + Layer 03 + ...

# Color aesthetic ---------------------------------------------------------
?ggplot
?aes
mtcars %>% ggplot(aes(wt, mpg, color = "blue")) + 
            geom_point()

mtcars %>% ggplot(aes(wt, mpg, color = I("blue"))) + 
  geom_point()

# Most of the time we want to color by another variable

# 01. Coloring with Categorical variable

mtcars %>% ggplot(aes(wt, mpg, color = cyl)) + 
  geom_point()   # This is not what we want because cyl variable is still numeric

mtcars %>% ggplot(aes(wt, mpg, color = factor(cyl))) + 
  geom_point() 

# More on categorical

ggplot(data = mtcars, mapping = aes(x = factor(am),
                                    y = mpg, color = factor(cyl))) +
                                    geom_point()

ggplot(data = mtcars, mapping = aes(x = factor(cyl),
                                    y = mpg, color = factor(cyl))) +
                                    geom_point()
# ------------------------------------------------------------------------#
# You can create a factor like this 
cyl_fact <- factor(mtcars$cyl, 
                   levels = c(4, 6, 8), 
                   labels = c("4 cylinders", "6 cylinders", "8 cylinders"))

# ------------------------------------------------------------------------#
# 02. Coloring with numeric variable
mtcars %>% ggplot(aes(wt, mpg, color = disp)) + 
  geom_point() 


# Size Aesthetic ----------------------------------------------------------

# 01. Categorical 

mtcars %>% ggplot(aes(wt, mpg, size = factor(cyl))) + 
  geom_point() 

# Another way to do it 
mtcars %>% ggplot(aes(wt, mpg)) + 
  geom_point(aes(size = factor(cyl))) 

mtcars %>% ggplot(aes(x = factor(cyl), y = mpg, size = factor(cyl))) + 
  geom_point() 

# 02. Numeric
mtcars %>% ggplot(aes(wt, mpg, size = disp)) + 
  geom_point() 


# Shape Aesthetic ---------------------------------------------------------
# 01. Categorical 

mtcars %>% ggplot(aes(wt, mpg, shape = factor(cyl))) + 
  geom_point() 
mtcars %>% ggplot(aes(factor(cyl), mpg, shape = factor(cyl))) + 
  geom_point() 

# 02. Numeric
# mtcars %>% ggplot(aes(wt, mpg, shape = disp)) + 
  #geom_point()                                   This does not work

# Alpha  ------------------------------------------------------------------

mtcars %>% ggplot(aes(wt, mpg, alpha = disp)) + 
  geom_point()  

# label -------------------------------------------------------------------
mtcars %>% ggplot(aes(wt, mpg)) + 
  geom_text(aes(label = factor(cyl)))

# Label with color 
mtcars %>% ggplot(aes(wt, mpg, color = factor(cyl))) + 
  geom_text(aes(label = factor(cyl)), show.legend = FALSE)


# fill --------------------------------------------------------------------
# Map fcyl to fill
ggplot(mtcars, aes(wt, mpg, fill = factor(cyl))) +
  geom_point(shape = 1, size = 4)

# Change the shape to one of 21 ... 25 
ggplot(mtcars, aes(wt, mpg, fill = factor(cyl))) +
  geom_point(shape = 22, size = 4)

ggplot(mtcars, aes(wt, mpg, fill = factor(cyl))) +
  geom_point(shape = 25, size = 4)

# Stroke  -----------------------------------------------------------------
# This applies to the outer line of  shapes 21, ..., 25 
ggplot(mtcars, aes(wt, mpg, 
                   fill = factor(cyl),
                   color = I("slateblue"),
                   stroke = 5)) +
  geom_point(shape = 21, size = 5)

ggplot(mtcars, aes(wt, mpg, 
                   fill = factor(cyl),
                   color = I("slateblue"),
                   stroke = 5)) +
  geom_point(shape = 24, size = 5)

ggplot(mtcars, aes(wt, mpg, fill = factor(cyl))) +
  geom_point(shape = 23, size = 5,
             color = I("slateblue"),
             stroke = 3)
# Master Aesthetics  ------------------------------------------------------
# 3 aesthetics: qsec vs. mpg, colored by fcyl
ggplot(mtcars, aes(mpg,qsec, color = factor(cyl))) +
  geom_point(size = 4)

# 4 aesthetics: add a mapping of shape to fam
ggplot(mtcars, aes(mpg, qsec, color = factor(cyl), shape = factor(am))) +
  geom_point()

# 5 aesthetics: add a mapping of size to hp / wt
ggplot(mtcars, aes(mpg, qsec, 
                   color = factor(cyl), 
                   shape = factor(am), 
                   size = hp/wt)) +
                    geom_point()

# More Aesthetics ---------------------------------------------------------

mtcars %>% ggplot(aes(wt, mpg, color = factor(cyl),
                      shape = factor(cyl),
                      size = disp)) + 
                      geom_point() 

mtcars %>% ggplot(aes(wt, mpg, color = factor(cyl),
                      shape = factor(cyl), size = I(4))) + 
                        geom_point(show.legend = FALSE) 

mtcars %>% ggplot(aes(wt, mpg, color = factor(cyl),
                      shape = factor(cyl), size = I(4))) + 
                        geom_point() 

mtcars %>% ggplot(aes(wt, mpg, alpha = disp, color = disp, size = disp)) + 
  geom_point()  

ggplot(mtcars, aes(wt, mpg, color = factor(cyl))) +
  geom_point(shape = 1, size = 4)



