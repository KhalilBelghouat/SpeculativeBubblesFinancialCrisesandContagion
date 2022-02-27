# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Speculative Bubbles, Financial Crises and Contagion

# This script installs and loads all R packages required to reproduce the results.

# Installing R packages.
system("sudo apt-get install libgmp-dev")
system("sudo apt-get install libmpfr-dev")
install.packages('zoo')
install.packages('aTSA')
install.packages('e1071')
install.packages('psych')
install.packages('tseries')
install.packages('rugarch')
install.packages('rmgarch')
install.packages('forecast')

# Loading the installed R packages.
library(zoo)
library(aTSA)
library(e1071)
library(psych)
library(tseries)
library(rugarch)
library(rmgarch)
library(forecast)