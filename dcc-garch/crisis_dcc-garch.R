# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Speculative Bubbles, Financial Crises and Contagion

# This script fits a DCC-GARCH(1, 1) model to the crisis data and plots the corresponding conditional volatility and correlation.

# The DCC-GARCH(1, 1) model.
# Model specification.
crisis.garch.spec <- ugarchspec(mean.model = list(armaOrder = c(0,0)), 
                               variance.model = list(garchOrder = c(1,1),
                               model = "sGARCH"),
                               distribution.model = "std")
crisis.dcc.garch.spec = dccspec(uspec = multispec(replicate(2, garch.spec)), dccOrder = c(1,1), 
                                distribution = "mvt")

# Model fitting.
crisis.dcc.garch.fit <- dccfit(crisis.dcc.garch.spec, data = crisis.data)
crisis.dcc.garch.fit

# The crisis conditional volatility.
plot(crisis.dcc.garch.fit, which=2)

# The crisis conditional correlation.
plot(crisis.dcc.garch.fit, which=4)