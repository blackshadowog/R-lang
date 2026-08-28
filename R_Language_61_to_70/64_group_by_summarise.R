library(dplyr)

sales <- data.frame(
  salesperson=c("Aman","Riya","Aman","Karan","Riya","Karan"),
  region=c("North","South","North","West","South","West"),
  sales=c(12000,15000,18000,14000,17000,21000)
)

print(summarise(sales,total_sales=sum(sales),average_sales=mean(sales)))

by_person <- sales %>%
  group_by(salesperson) %>%
  summarise(total_sales=sum(sales),average_sales=mean(sales))
print(by_person)

by_region <- sales %>%
  group_by(region) %>%
  summarise(total_sales=sum(sales),orders=n())
print(by_region)
