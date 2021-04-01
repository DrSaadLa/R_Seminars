# Introductio to what is called pip operator ' %>% '
# The shortcut to type is <-- ctrl + shift + m -->

# Getting help about this operator from dplyr package 
require(dplyr)
help("%>%", package = "dplyr")


# Examples of using the %>% operator 
# we have sqrt(data) ====> data %>% sqrt()
# Ex: 01
sqt(16)
16 %>% sqrt()

2 %>% exp()
exp(2)

# Ex: 02
27 %>% sqrt() %>% log()
27 %>% sqrt() %>% log(base = 2)
27 %>% sqrt() %>% log(base = 10)

# Example with dplyr operations -------------------------------------------

data("mtcars")
names(mtcars)

select(mtcars, c(mpg, hp, wt)) 
# It is the same as 
mtcars %>% select(mpg, wt, hp)

# If I want to look at the head of the selected variables, 
# I have to wrap the whole code in head function, Or I have to save the 
# data in an object than pass that object to the head function

# Step 01: 
my_data <- select(mtcars, c(mpg, hp, wt))
# step 02: 
head(my_data)

# Or
head(select(mtcars, c(mpg, hp, wt)))   # Not recommended, not readable code

# Question, what I have to do calculations on the selected variables 
# Each time you need to create new objects, the code will be long and not efficient
# Here comes the pipe operator ' %>% ' in handy 


# Pipe alternative --------------------------------------------------------
# Select and head
mtcars %>% select(mpg, hp, wt) %>% 
  head()
# Suppose you want only mpg greater than 25 
# Select and Filter

mtcars %>% select(mpg, hp, wt) %>% 
  filter(mpg >= 25)

# Filter and summarize
# Suppose we are interested only on big cars with number of cyl is 8

mtcars %>% select(mpg, cyl, wt) %>% 
          filter(cyl == 8) %>% 
          summarise(mean_mp = mean(mpg), sd_mpg = sd(mpg), 
                    mean_wt = mean(wt), sd_wt = sd(wt))


# Suppose we want to know the number of cars with gear Automatic and manual

mtcars %>% group_by(am) %>% 
           summarise(number = n())
mtcars %>% group_by(am) %>% 
           count()

# Creating a variable 

mtcars %>% group_by(am) %>% 
          count(total = n()) %>% 
          mutate(perc = n / total) 
          


