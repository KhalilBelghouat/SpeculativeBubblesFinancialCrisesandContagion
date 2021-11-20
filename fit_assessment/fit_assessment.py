# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Speculative Bubbles, Financial Crises and Contagion

# This script computes the Mean Absolute Error (MAE), the Mean Squared Error (MSE) and Root Mean Square Error (RMSE).

# The LPPLS model.
def lppls(t, tc, m, w, a, b, c1, c2):
  return a + np.power(tc - t, m) * (b + ((c1 * np.cos(w * np.log(tc - t))) + (c2 * np.sin(w * np.log(tc - t)))))

# Observations and predicted values of the LPPLS model.
yhat = lppls(time[MASI.loc[MASI["Price"] == np.min(MASI["Price"])].index[0]:MASI.loc[MASI["Date"] == "2007-07-31"].index[0] + 1], tc, m, w, a, b, c1, c2)
y = price

# Compute MAE, MSE and RMSE metrics.
mae = metrics.mean_absolute_error(y, yhat)
mse = metrics.mean_squared_error(y, yhat)
rmse = np.sqrt(mse)

# Print MAE, MSE and RMSE metrics.
print("Results of sklearn.metrics:")
print("MAE:",mae)
print("MSE:", mse)
print("RMSE:", rmse)

# Get residual values.
residuals = pd.DataFrame(y - yhat, columns = ["Residuals"])
residuals.to_csv('residuals.csv', index = True)