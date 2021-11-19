# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Speculative Bubbles, Financial Crises and Contagion

# This script passes the MASI and S&P 500 data through important preprocessing steps.

# Importing MASI and S&P 500 data.
MASI <- read.csv("MASI.csv")
GSPC <- read.csv("^GSPC.csv")

# Extracting the log-returns of the indices.
MASI.log.returns <- diff(log(MASI$Price))
GSPC.log.returns <- diff(log(GSPC$Adj.Close))

# Getting the different periods of study.
full.period <- GSPC$Date[-1][726:1928]
pre.crisis.period <- full.period[1:624]
crisis.period <- full.period[625:1203]

# The full period data.
full.period.GSPC <- data.frame(Date = full.period, GSPC = GSPC.log.returns[726:1928])
full.period.MASI <- data.frame(Date = full.period, MASI = MASI.log.returns[726:1928])

# The pre-crisis data.
pre.crisis.GSPC <- data.frame(Date = pre.crisis.period, GSPC = full.period.GSPC$GSPC[1:624])
pre.crisis.MASI <- data.frame(Date = pre.crisis.period, MASI = full.period.MASI$MASI[1:624])
pre.crisis.data <- data.frame(Date = pre.crisis.period, SP500 = pre.crisis.GSPC["GSPC"], MASI = pre.crisis.MASI["MASI"])
rownames(pre.crisis.data) <- pre.crisis.data$Date
pre.crisis.data$Date <- NULL

# The crisis data.
crisis.GSPC <- data.frame(Date = crisis.period, GSPC = GSPC.log.returns[625:1203])
crisis.MASI <- data.frame(Date = crisis.period, MASI = MASI.log.returns[625:1203])
crisis.data <- data.frame(Date = crisis.period, GSPC = crisis.GSPC["GSPC"], MASI = crisis.MASI["MASI"])
rownames(crisis.data) <- crisis.data$Date
crisis.data$Date <- NULL