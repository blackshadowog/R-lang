# 95 - K-Means Clustering
customers <- data.frame(
  spending=c(200,220,250,800,850,900,450,480,500,1200,1250,1300),
  visits=c(2,3,2,8,9,10,5,4,5,12,13,14)
)
set.seed(42)
model <- kmeans(customers, centers=3, nstart=20)
print(model$cluster)
print(model$centers)
customers$cluster <- factor(model$cluster)
plot(customers$spending, customers$visits, col=customers$cluster, pch=19,
     main="Customer Segmentation", xlab="Spending", ylab="Visits")
