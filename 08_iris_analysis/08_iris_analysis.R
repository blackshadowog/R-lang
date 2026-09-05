# Iris Dataset Analysis
data(iris)

print(head(iris))
print(summary(iris))

plot(
  iris$Sepal.Length,
  iris$Petal.Length,
  main="Iris: Sepal vs Petal Length",
  xlab="Sepal Length",
  ylab="Petal Length",
  pch=19
)
