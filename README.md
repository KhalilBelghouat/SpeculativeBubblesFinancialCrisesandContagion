# Speculative Bubbles, Financial Crises and Contagion

This repository includes the code used in one of the master's projects "Speculative Bubbles, Financial Crises and Contagion" by Khalil Belghouat, Fadoua Essalhi, Khaoula Ghazal and Amal Essakali.

In this project, the LPPLS model and DCC-GARCH were employed for, respectively, bubble/regime shift detection and for contagion effects analysis.

## Prerequisites

The ```R```, version 4.1.2, and ```Python```, version 3.7.12, programming languages and their statistical and machine learning libraries were used to build all applied models. The ```R``` script _packages.R_ and the ```Python``` script _packages.py_ in the _packages_ folder installs and loads all necessary ```R``` and ```Python``` packages. 

All operations, from data preprocessing to model estimation, were carried out on the Google Colaboratory platform.

## Theoretical Background

Financial crises occur with notable regularity, and moreover, they have notable similarities. This repeated occurrence, of crises as well as crashes, has defined the interest of researchers around the world to explore the interrelationships between the financial markets of various economies. From the Great Depression of 1929, through the subprime crisis in the United States in 2007-2008 and the European debt crisis in early 2009, among others. Almost all of these crises originated in a single country, but the violent tremors were felt in different parts of the globe. In this paper, an empirical study was conducted in which two models were applied to the MASI and S&P 500 indices, namely, the LPPLS model for bubble and regime shift detection and DCC-GARCH for contagion effects analysis. The study has found that during the period preceding the 2008 global financial crisis MASI was indeed a bubble and that the latter wasn't safe from the effects of the subprime mortgage crisis that hit the United States' financial system during the same period. However, such an analysis is faced with a fondamental limitation, in that both approaches are sensitive to the estimation periods selected. And thus different estimation periods may yield different conclusions and inferences.

## Application and Results

The LPPLS model is applied to the Moroccan All Shares Index. The fitting process gives as result parameters located in very specific intervals, respecting the conditions of Filimonov and Sornette (2013) and indicating that the estimation period is indeed a bubble. The DCC-GARCH model was also used to directly assess whether there was a significant increase in correlation during the turbulent period --- that is the period of crisis. An analysis of the estimation results shows different levels of persistence. For the S&P 500, the pre-crisis period yields 0.9568 while the crisis period yields 0.9990. As well as a higher volatility reaction to past shocks --- 0.1065 in the crisis period versus 0.0425 in the pre-crisis period for the S&P 500 and 0.4147 in the crisis period versus 0.2846 in the pre-crisis period for the MASI. The parameters of the DCC component of the model are not jointly insignificant, in the two periods, indicating the existence of time-varying dynamic correlations. To verify the existence of a contagion, we use the Student-t test of mean comparison and the Wilcoxon's z test of median comparison. As represented by the significance of the p-values, 0.0000 for both, the tests demonstrate the presence of contagion effects resulting from the subprime financial crisis.

## Code Structure

### About The Data

The data, a financial time series, is organized in a table containing 7 columns and 4940 rows. The first column contains the date, the following 4 columns contain the closing, opening, high and low prices of the MASI index, while the remaining columns contain the index's trading volumes and daily variations.

### Model Building and Estimation

The LPPLS model was built using the ```lppls``` package in ```Python```. As for the DCC-GARCH, it was built using the ```rmgarch``` package in ```R```. For identifying the best estimation of LPPLS's three non-linear parameters, the CMA-ES evolutionary algorithm was used.

