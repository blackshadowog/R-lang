library(tidyr)

sales <- data.frame(
  month=c("Jan","Feb","Mar"),
  laptop=c(100,120,140),
  phone=c(150,170,180),
  tablet=c(80,90,100)
)

long_data <- pivot_longer(
  sales,
  cols=c(laptop,phone,tablet),
  names_to="product",
  values_to="sales"
)
print(long_data)

wide_data <- pivot_wider(
  long_data,
  names_from=product,
  values_from=sales
)
print(wide_data)
