# Input load. Please do not change #
#Confidential csv file containing scrap data from Power BI `dataset` = read.csv();
# Original Script. Please update your script content here and once completed copy below section back to the original editing window #

library (forecast)
library(tseries)
library(basicTrendline)
library(ggplot2)

scrapArima <- ts(dataset, start = c(2018,1,2), frequency = 365)

fit <- auto.arima(scrapArima[,2])

fit_forecast <- forecast(fit, h = 10)


# -- To view the trendline -- #

#comment out this line
autoplot(fit_forecast, xlab = "Date", ylab = "Amount", main= "Total Scrap by Date")

#and uncomment this line
#trendline(Date, Amount, model = "line2P", linecolor = "blue", lty = "dashed")
