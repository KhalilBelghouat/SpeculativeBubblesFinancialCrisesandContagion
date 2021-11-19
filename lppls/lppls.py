# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Speculative Bubbles, Financial Crises and Contagion

# This script estimates the Log Periodic Power Law Singularity (LPPLS) Model.

# Locating MASI's all-time high (peak before the crash).
MASI.loc[MASI["Price"] == np.max(MASI["Price"])]

# Locating MASI's all-time low (start date).
MASI.loc[MASI["Price"] == np.min(MASI["Price"])]

# Locating MASI's all-time low (end date).
MASI.loc[MASI["Date"] == "2007-07-31"]

# Create list of observation data.
price = np.log(MASI['Price'][MASI.loc[MASI["Price"] == np.min(MASI["Price"])].index[0]:MASI.loc[MASI["Date"] == "2007-07-31"].index[0] + 1].values)

# Create observations array (expected format for LPPLS observations).
observations = np.array([time[MASI.loc[MASI["Price"] == np.min(MASI["Price"])].index[0]:MASI.loc[MASI["Date"] == "2007-07-31"].index[0] + 1], price])

# Instantiate a new LPPLS model with the MASI dataset.
lppls_model = lppls_cmaes.LPPLSCMAES(observations=observations)

# Fit the model to the data using the Covariance Matrix Adaptation Evolution Strategy (CMA-ES) and get back the parameters.
tc, m, w, a, b, c, c1, c2, O, D = lppls_model.fit(max_iteration=2500, pop_size=4)

# Visualize the fit.
lppls_model.plot_fit()

# Print model estimates.
print("Estimates:")
print("tc:", pd.Timestamp.fromordinal(round(tc)))
print("B:", b)
print("m:", m)
print("w:", w)
print("c1:", c1)
print("c2:", c2)
print("c1^2 + c2^2:", c1**2 + c2**2)