# 93 - Moving Average
sales <- c(100,120,130,125,140,150,160,155,170,180)
moving_average <- stats::filter(sales, rep(1/3,3), sides=2)
print(moving_average)
plot(sales, type="o", main="Sales and Moving Average", xlab="Period", ylab="Sales")
lines(moving_average, type="o")
