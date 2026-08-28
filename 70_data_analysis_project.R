library(dplyr)
library(tidyr)
library(ggplot2)

sales <- data.frame(
  order_id=1:12,
  region=c("North","South","East","West","North","South","East","West","North","South","East","West"),
  product=c("Laptop","Phone","Tablet","Laptop","Phone","Tablet","Laptop","Phone","Tablet","Laptop","Phone","Tablet"),
  quantity=c(2,5,3,1,4,6,2,3,5,2,4,7),
  price=c(65000,30000,22000,65000,30000,22000,65000,30000,22000,65000,30000,22000)
)

sales <- sales %>% mutate(revenue=quantity*price)
print(sales)

product_summary <- sales %>%
  group_by(product) %>%
  summarise(
    total_quantity=sum(quantity),
    total_revenue=sum(revenue),
    average_order_value=mean(revenue),
    orders=n()
  ) %>%
  arrange(desc(total_revenue))
print(product_summary)

region_summary <- sales %>%
  group_by(region) %>%
  summarise(total_revenue=sum(revenue),total_quantity=sum(quantity)) %>%
  arrange(desc(total_revenue))
print(region_summary)

best_product <- slice_max(product_summary,total_revenue,n=1)
best_region <- slice_max(region_summary,total_revenue,n=1)

print(best_product)
print(best_region)

ggplot(product_summary,aes(x=product,y=total_revenue)) +
  geom_col() +
  labs(title="Revenue by Product",x="Product",y="Total Revenue")

ggplot(region_summary,aes(x=region,y=total_revenue)) +
  geom_col() +
  labs(title="Revenue by Region",x="Region",y="Total Revenue")

cat("Total Revenue:",sum(sales$revenue),"\n")
cat("Total Quantity:",sum(sales$quantity),"\n")
cat("Best Product:",best_product$product,"\n")
cat("Best Region:",best_region$region,"\n")
