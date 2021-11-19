# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Speculative Bubbles, Financial Crises and Contagion

# This script installs and loads all Python packages required to reproduce the results.

# Installing Python packages.
!pip install yfinance
!pip install -U lppls
!pip install cma

# Loading the installed Python packages.
% matplotlib inline
import numpy as np
import pandas as pd
import yfinance as yf
from lppls import lppls
from lppls import lppls_cmaes
import matplotlib.pyplot as plt
import sklearn.metrics as metrics
from datetime import datetime as dt