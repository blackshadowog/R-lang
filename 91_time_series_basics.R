# 91 - Time Series Basics
sales <- c(120,135,128,150,142,160,155,170,180,175,190,205)
monthly_sales <- ts(sales, start=c(2026,1), frequency=12)
print(monthly_sales)
print(start(monthly_sales))
print(end(monthly_sales))
plot(monthly_sales, main="Monthly Sales Time Series", xlab="Year", ylab="Sales")
