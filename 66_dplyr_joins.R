library(dplyr)

customers <- data.frame(
  customer_id=c(1,2,3,4),
  name=c("Aman","Riya","Karan","Neha")
)

orders <- data.frame(
  order_id=c(101,102,103,104,105),
  customer_id=c(1,2,1,3,5),
  amount=c(500,800,1200,700,900)
)

print(inner_join(customers,orders,by="customer_id"))
print(left_join(customers,orders,by="customer_id"))
print(right_join(customers,orders,by="customer_id"))
print(full_join(customers,orders,by="customer_id"))
