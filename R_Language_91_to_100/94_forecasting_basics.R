# 94 - Forecasting Basics
sales <- ts(c(120,135,128,150,142,160,155,170,180,175,190,205,
              210,220,215,235,245,240,260,270,265,280,295,300),
            start=c(2025,1), frequency=12)
model <- HoltWinters(sales)
print(model)
forecast_values <- predict(model, n.ahead=6)
print(forecast_values)
plot(model, main="Holt-Winters Forecast")
