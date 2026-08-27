# R Chapter 58: Correlation and Simple Linear Regression

hours <- c(1, 2, 3, 4, 5, 6, 7, 8)
marks <- c(45, 50, 54, 61, 66, 72, 78, 85)

# Correlation
correlation <- cor(hours, marks)
print(paste("Correlation:", correlation))

# Linear regression
model <- lm(marks ~ hours)

print(summary(model))
print(coef(model))

# Predict marks for 10 hours
prediction <- predict(model, data.frame(hours = 10))
print(prediction)

# Plot regression
plot(hours, marks,
     main = "Study Hours vs Marks",
     xlab = "Study Hours",
     ylab = "Marks",
     pch = 19)

abline(model)
