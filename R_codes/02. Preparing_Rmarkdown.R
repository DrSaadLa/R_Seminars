#=========================================================================#
#               Preparing Rmarkdown:
# ------------------------------------------------------------------------#

if (!require(rmarkdown)) install.packages("rmarkdown", dependencies=TRUE)
if (!require(tinytex)) install.packages("tinytex", dependencies=TRUE)
if (!require(knitr)) install.packages("knitr", dependencies=TRUE)

# Installing the Tex package 

tinytex::install_tinytex()             # Be patient, this will take some time
