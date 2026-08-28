library(ggplot2)

sales <- data.frame(
  month=c("Jan","Feb","Mar","Apr","May","Jun"),
  sales=c(12000,15000,14000,18000,21000,19500)
)

ggplot(sales,aes(x=month,y=sales)) +
  geom_col() +
  labs(title="Monthly Sales",x="Month",y="Sales")

ggplot(sales,aes(x=month,y=sales,group=1)) +
  geom_line() + geom_point() +
  labs(title="Sales Trend",x="Month",y="Sales")

ggplot(sales,aes(x=sales)) +
  geom_histogram(bins=5) +
  labs(title="Sales Distribution")
