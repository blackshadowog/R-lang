# Chapter 83: Hypothesis Testing
scores <- c(72,75,68,80,74,77,69,73,76,71)

test <- t.test(scores, mu=70)
print(test)

cat("Sample mean:", mean(scores), "\n")
cat("p-value:", test$p.value, "\n")

if (test$p.value < 0.05) {
  cat("Reject the null hypothesis.\n")
} else {
  cat("Fail to reject the null hypothesis.\n")
}
