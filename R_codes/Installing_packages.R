#=========================================================================#
#               Installing the required packages:
# ------------------------------------------------------------------------#

required_packages <- c('tidyverse', 'readr', 'dplyr','tidyr', 'stringr', 'reshape2',
                  'gdata', 'car', 'lubridate', 'AER', 'Hmisc', 'MASS', 
                  'psych', 'corrplot', 'caret', 'astsa', 'Quandl', 
                  'foreign', 'rvest', 'purrr', 'magrittr', 'cluster', 'dslabs', 
                  'forcats', 'knitr', 'readxl', 'scales', 'assist', 'pander', 
                  'remedy', 'RcmdrMisc', 'broom', 'lattice', 'gridExtra',
                  'haven', 'xts', 'forecast', 'Amelia', 'boot', 'foreach', 
                  'gmodels', 'rcompanion', 'ltm', 'assist', 'assertive',
                  'mlogit', 'lmtest', 'vars', 'urca', 'Ecdat', 'fpp2', 'abind',
                  'ggstatsplot', 'nlme', 'rugarch', 'vcd', 'ggfortify', 'shiny',
                  'raster', 'quantmod', 'quantreg', 'summarytools', 'funModeling',
                  'data.table', 'here', "esquisse")

# Find the installed packages

installed_packages <- required_packages %in% rownames(installed.packages())

# Install missing packages

if (any(installed_packages == FALSE)){
  install.packages(required_packages[!installed_packages], dependencies = TRUE)
} else{
  message("All the packages are installed")
  message("You are good to Go, and happy learning!")
}

# Do this and be patient untill all packages have been installed