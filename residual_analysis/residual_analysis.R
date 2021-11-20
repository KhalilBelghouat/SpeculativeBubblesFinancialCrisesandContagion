# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Speculative Bubbles, Financial Crises and Contagion

# This script applies different stationarity tests to the residuals.

residuals <- read.csv("residuals.csv")
rownames(residuals) <- residuals$X
residuals$X <- NULL

# The Augmented Dickey-Fuller (ADF) test.
adf.test(unlist(residuals['Residuals']))

# The Kwiatkowski-Phillips-Schmidt-Shin (KPSS) test.
kpss.test(unlist(residuals['Residuals']))

# The Phillips-Perron (PP) test.
pp.test(unlist(residuals['Residuals']))