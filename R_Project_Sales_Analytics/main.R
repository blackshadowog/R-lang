# R Sales Analytics Project
library(dplyr)
library(ggplot2)

set.seed(123)
dir.create("data", showWarnings=FALSE)
dir.create("output", showWarnings=FALSE)

n <- 200
products <- c("Laptop","Phone","Tablet","Monitor","Keyboard")
regions <- c("North","South","East","West")

sales <- data.frame(
  order_id=1:n,
  date=sample(seq(as.Date("2026-01-01"),as.Date("2026-08-31"),by="day"),n,TRUE),
  customer=paste0("Customer_",sample(1:80,n,TRUE)),
  region=sample(regions,n,TRUE),
  product=sample(products,n,TRUE),
  quantity=sample(1:10,n,TRUE),
  unit_price=sample(c(1200,2500,18000,30000,65000),n,TRUE)
)

sales$revenue <- sales$quantity * sales$unit_price
sales$region[sample(1:n,5)] <- NA
write.csv(sales,"data/sales_data.csv",row.names=FALSE)

sales <- read.csv("data/sales_data.csv")
sales$date <- as.Date(sales$date)
sales$region[is.na(sales$region)] <- "Unknown"
sales <- sales %>% filter(quantity>0,unit_price>0) %>% mutate(revenue=quantity*unit_price)

total_revenue <- sum(sales$revenue)
total_orders <- nrow(sales)
total_quantity <- sum(sales$quantity)
average_order_value <- mean(sales$revenue)

cat("TOTAL REVENUE:",total_revenue,"\n")
cat("TOTAL ORDERS:",total_orders,"\n")
cat("TOTAL QUANTITY:",total_quantity,"\n")
cat("AVERAGE ORDER VALUE:",round(average_order_value,2),"\n")

product_summary <- sales %>% group_by(product) %>%
  summarise(revenue=sum(revenue),quantity=sum(quantity),orders=n(),.groups="drop") %>%
  arrange(desc(revenue))
region_summary <- sales %>% group_by(region) %>%
  summarise(revenue=sum(revenue),orders=n(),.groups="drop") %>%
  arrange(desc(revenue))
monthly_summary <- sales %>% mutate(month=format(date,"%Y-%m")) %>%
  group_by(month) %>% summarise(revenue=sum(revenue),orders=n(),.groups="drop")

print(product_summary)
print(region_summary)

p1 <- ggplot(product_summary,aes(product,revenue))+geom_col()+theme_minimal()+labs(title="Revenue by Product")
p2 <- ggplot(region_summary,aes(region,revenue))+geom_col()+theme_minimal()+labs(title="Revenue by Region")
p3 <- ggplot(monthly_summary,aes(month,revenue,group=1))+geom_line()+geom_point()+theme_minimal()+labs(title="Monthly Revenue")
p4 <- ggplot(sales,aes(quantity,revenue))+geom_point()+geom_smooth(method="lm",se=FALSE)+theme_minimal()+labs(title="Quantity vs Revenue")

ggsave("output/revenue_by_product.png",p1,width=8,height=5)
ggsave("output/revenue_by_region.png",p2,width=8,height=5)
ggsave("output/monthly_revenue.png",p3,width=9,height=5)
ggsave("output/quantity_vs_revenue.png",p4,width=8,height=5)

model <- lm(revenue ~ quantity + unit_price,data=sales)
print(summary(model))

write.csv(product_summary,"output/product_summary.csv",row.names=FALSE)
write.csv(region_summary,"output/region_summary.csv",row.names=FALSE)
write.csv(monthly_summary,"output/monthly_summary.csv",row.names=FALSE)

cat("Top Product:",product_summary$product[1],"\n")
cat("Top Region:",region_summary$region[1],"\n")
cat("PROJECT COMPLETED!\n")
