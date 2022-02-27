# Speculative Bubbles, Financial Crises and Contagion

This repository includes the code used in one of the master's projects "Speculative Bubbles, Financial Crises and Contagion" by Khalil Belghouat, Fadoua Essalhi, Khaoula Ghazal and Amal Essakali.

In this project, the LPPLS model and DCC-GARCH were employed for, respectively, bubble/regime shift detection and for contagion effects analysis.

## Prerequisites

The ```R```, version 4.1.2, and ```Python```, version 3.7.12, programming languages and their statistical and machine learning libraries were used to build all applied models. The ```R``` script _packages.R_ and the ```Python``` script _packages.py_ in the _packages_ folder installs and loads all necessary ```R``` and ```Python``` packages. 

All operations, from data preprocessing to model estimation, were carried out on the Google Colaboratory platform.

## Theoretical Background



## Application and Results

The parameter estimates indicate that the evolution of the volatility process is heterogeneous between the two regimes. Indeed, we first notice that the two regimes report different levels of unconditional volatility: 10.69 % in the first regime and 26.70 % in the second. As well as different reactions to past negative returns: 0.2171 versus 0.3364. In addition, the persistence of volatility in the two regimes is different. The first regime yields 0.65835 while the second regime yields 0.7333. In summary, the first regime is characterized by: (i) low unconditional volatility, (ii) lower volatility response to past negative returns, and (iii) relatively low persistence of the volatility process. Differently, the second regime is characterized by: (i) high unconditional volatility, (ii) a higher volatility response to past negative returns, and (iii) relatively high persistence of the volatility process. The posterior mean stable probabilities indicate that the probability of being in the first regime is 63.99 %, while being in the second is 36.01 %. Regarding the subsequent distribution of unconditional volatility in each regime. The first regime registers, on average, about 7.34 % per annum. While the second registers 54.30 %. The Bayesian approach provides 95% confidence intervals which are respectively [4.08 %, 14.60 %] and [24.78 %, 134.60 %]. Additionally, the results from backtesting VaR at 5% risk confirm that the two-regime Bayesian Markov-switching GARCH model outperforms its single-regime counterpart. This study, therefore, provides an empirical evidence supporting the ability of the latter to improve MASI’s volatility forecasting.

## Code Structure

### About The Data

The data, a financial time series, is organized in a table containing 7 columns and 2501 rows. The first column contains the date, the following 4 columns contain the closing, opening, high and low prices of the MASI index, while the remaining columns contain the index's trading volumes and daily variations.

### Model Building and Estimation

The two-regime Markov-switching GARCH model and its single-regime counterpart were both built using the ```MSGARCH``` package. The estimation procedure was done via Bayesian Markov chain Monte Carlo (MCMC) technique generating draws from the posterior distribution. These draws are used to characterize the distribution of the parameters.

