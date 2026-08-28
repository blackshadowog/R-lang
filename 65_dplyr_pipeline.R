library(dplyr)

orders <- data.frame(
  customer=c("Aman","Riya","Karan","Neha","Vikas","Priya"),
  category=c("Laptop","Phone","Laptop","Tablet","Phone","Laptop"),
  amount=c(70000,30000,85000,22000,40000,95000)
)

result <- orders %>%
  filter(amount > 30000) %>%
  mutate(tax=amount*0.18,
         final_amount=amount+tax) %>%
  arrange(desc(final_amount))

print(result)

summary_data <- orders %>%
  group_by(category) %>%
  summarise(total=sum(amount),average=mean(amount),count=n()) %>%
  arrange(desc(total))

print(summary_data)
