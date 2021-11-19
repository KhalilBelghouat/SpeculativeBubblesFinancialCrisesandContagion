# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Speculative Bubbles, Financial Crises and Contagion

# This script fits a DCC-GARCH(1, 1) model to the pre-crisis data and plots the corresponding conditional volatility and correlation.

# The DCC-GARCH(1, 1) model.
# Model specification.
pre.crisis.garch.spec <- ugarchspec(mean.model = list(armaOrder = c(0,0)), 
                                   variance.model = list(garchOrder = c(1,1),
                                   model = "sGARCH"),
                                   distribution.model = "std")
pre.crisis.dcc.garch.spec <- dccspec(uspec = multispec(replicate(2, garch.spec)), dccOrder = c(1,1), 
                                    distribution = "mvt")

# Model fitting.
pre.crisis.dcc.garch.fit <- dccfit(pre.crisis.dcc.garch.spec, data = pre.crisis.data)
pre.crisis.dcc.garch.fit

# The pre-crisis conditional volatility.
plot(pre.crisis.dcc.garch.fit, which=2)

# The pre-crisis conditional correlation.
plot(pre.crisis.dcc.garch.fit, which=4)