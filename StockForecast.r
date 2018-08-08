library (forecast)
library(tseries)
library(MASS)
library(quantmod)

# ----- tAKE 1, USING quantmod ----- ##
getSymbols("SUP", src = "yahoo", from = "2016-07-01", to = "2018-04-01")

#Time series and auto.arima

#fit <- auto.arima(SUP$SUP.Close)
#fit
#price <- (as.ts(SUP$SUP.Close))
#plot(price)
#lines(fitted(fit), col = "grey")

# ----- Take 2, using classic csv readin ----- #
setwd("C:/Users/Jcalso/Documents/R/Stock Forecast")
pricearima <- ts(read.csv( "HistoricalQuotes.csv"), start = 2017-06-06, frequency = 252)




fit <- auto.arima(SUP[,2])


#continue
fit_forecast <- forecast(fit, h = 100)

autoplot(fit_forecast)



# ----- SOme extra Shtuff ----- #
#FVE <- as.numeric(fit_forecast$mean)
#final_forecast_values <- exp(FVE)
#final_forecast_values
