# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Speculative Bubbles, Financial Crises and Contagion

# This script passes the MASI data through important preprocessing steps.

# Import MASI data and converting date to ordinal format.
MASI = pd.read_csv("Moroccan All Shares Historical Data.csv", thousands=',')
MASI.iloc[:] = MASI.iloc[::-1].values
MASI['Date'] = pd.to_datetime(MASI['Date'])
MASI['Date'] = MASI['Date'].map(lambda x: x.strftime('%Y-%m-%d'))
time = [pd.Timestamp.toordinal(dt.strptime(t1, '%Y-%m-%d')) for t1 in MASI['Date']]