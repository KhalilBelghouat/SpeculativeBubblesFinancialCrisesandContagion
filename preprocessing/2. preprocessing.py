# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Speculative Bubbles, Financial Crises and Contagion

# This script passes the MASI and S&P 500 data through important preprocessing steps for financial contagion modeling.

# Import S&P 500 data and keeping the rows with similar dates.
GSPC = yf.download("^GSPC", start="2002-01-03", end="2021-10-29")
MASI['Date'] = pd.to_datetime(MASI['Date'])
MASI.set_index('Date', inplace=True)
MASI = MASI.loc[MASI.index.intersection(GSPC.index)]
GSPC = GSPC.loc[MASI.index.intersection(GSPC.index)]

# Export Pandas DataFrame to CSV.
MASI.to_csv('MASI.csv', index = True)
GSPC.to_csv('^GSPC.csv', index = True)