# Simple Linear Regression
hours <- c(1, 2, 3, 4, 5, 6, 7, 8)
scores <- c(35, 40, 48, 52, 60, 68, 75, 82)

model <- lm(scores ~ hours)

print(summary(model))

plot(hours, scores, main="Study Hours vs Score",
     xlab="Study Hours", ylab="Score", pch=19)

abline(model)
