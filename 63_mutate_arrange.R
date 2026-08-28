library(dplyr)

products <- data.frame(
  product=c("Laptop","Phone","Tablet","Monitor","Keyboard"),
  price=c(65000,30000,22000,18000,2500),
  quantity=c(5,10,8,6,20)
)

products <- products %>%
  mutate(revenue=price*quantity,
         discount_price=price*0.90,
         total_after_discount=discount_price*quantity)

print(arrange(products,revenue))
print(arrange(products,desc(revenue)))
print(products)
