# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Speculative Bubbles, Financial Crises and Contagion

# This script computes the unconditional correlation during the pre-crisis and crisis periods.

# The unconditional correlation during the pre-crisis period.
pre.crisis.ucorr <- cor(pre.crisis.data)

# The unconditional correlation during the crisis period.
crisis.ucorr <- cor(crisis.data)