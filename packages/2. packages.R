# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Speculative Bubbles, Financial Crises and Contagion

# This script installs and loads all R packages required to reproduce the results.

# Installing R packages.
system("sudo apt-get install libgmp-dev")
system("sudo apt-get install libmpfr-dev")
install.packages('tseries')
install.packages('zoo')
install.packages('e1071')
install.packages('rugarch')
install.packages("forecast")
install.packages('rmgarch')

# Loading the installed R packages.
library(rmgarch)
library(tseries)
library(zoo)
library(e1071)
library(rugarch)
library(forecast)