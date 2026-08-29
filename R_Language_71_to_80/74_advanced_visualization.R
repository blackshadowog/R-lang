library(ggplot2)
df <- data.frame(product=c("Laptop","Phone","Tablet","Monitor","Keyboard","Mouse"),price=c(65000,30000,22000,18000,2500,1200),quantity=c(10,25,18,15,40,55),category=c("Computer","Mobile","Mobile","Computer","Accessory","Accessory"))
df$revenue <- df$price*df$quantity
ggplot(df,aes(price,revenue,size=quantity))+geom_point()+labs(title="Price vs Revenue")
ggplot(df,aes(category,revenue))+geom_boxplot()+labs(title="Revenue by Category")
ggplot(df,aes(revenue))+geom_density()+labs(title="Revenue Density")
