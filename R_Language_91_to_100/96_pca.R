# 96 - Principal Component Analysis
data <- data.frame(
  math=c(80,90,70,85,75,95,88,78),
  science=c(82,92,68,87,72,96,85,80),
  english=c(78,88,75,82,80,90,86,77)
)
pca <- prcomp(data, scale.=TRUE)
print(pca)
print(summary(pca))
print(pca$rotation)
plot(pca, main="PCA Scree Plot")
biplot(pca, main="PCA Biplot")
