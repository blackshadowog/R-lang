# 100 - Complete R Data Science Project
library(dplyr)
library(ggplot2)

set.seed(100)
sales <- data.frame(
  customer_id=1:30,
  age=sample(18:60,30,replace=TRUE),
  region=sample(c("North","South","East","West"),30,replace=TRUE),
  product=sample(c("Laptop","Phone","Tablet"),30,replace=TRUE),
  quantity=sample(1:8,30,replace=TRUE),
  price=sample(c(22000,30000,65000),30,replace=TRUE)
)

sales$age[c(5,14)] <- NA

sales <- sales %>%
  mutate(
    age=ifelse(is.na(age),median(age,na.rm=TRUE),age),
    revenue=quantity*price
  )

total_revenue <- sum(sales$revenue)
total_orders <- nrow(sales)
average_order_value <- mean(sales$revenue)

product_summary <- sales %>%
  group_by(product) %>%
  summarise(revenue=sum(revenue),quantity=sum(quantity),orders=n()) %>%
  arrange(desc(revenue))

region_summary <- sales %>%
  group_by(region) %>%
  summarise(revenue=sum(revenue),orders=n()) %>%
  arrange(desc(revenue))

best_product <- slice_max(product_summary,revenue,n=1)
best_region <- slice_max(region_summary,revenue,n=1)

print(sales)
print(product_summary)
print(region_summary)

cat("Total Revenue:",total_revenue,"\n")
cat("Total Orders:",total_orders,"\n")
cat("Average Order Value:",average_order_value,"\n")
cat("Best Product:",best_product$product,"\n")
cat("Best Region:",best_region$region,"\n")

ggplot(product_summary,aes(product,revenue)) +
  geom_col() + theme_minimal() +
  labs(title="Revenue by Product",x="Product",y="Revenue")

ggplot(region_summary,aes(region,revenue)) +
  geom_col() + theme_minimal() +
  labs(title="Revenue by Region",x="Region",y="Revenue")

ggplot(sales,aes(age,revenue)) +
  geom_point() + geom_smooth(method="lm",se=FALSE) +
  theme_minimal() +
  labs(title="Age vs Revenue",x="Customer Age",y="Revenue")

model <- lm(revenue ~ age + quantity, data=sales)
print(summary(model))

cat("End-to-end R data science project complete.\n")
