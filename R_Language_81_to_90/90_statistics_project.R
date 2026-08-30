# Chapter 90: Statistics Mini Project

library(ggplot2)

scores <- data.frame(
  method=factor(rep(c("Method_A","Method_B","Method_C"), each=8)),
  score=c(
    72,75,70,78,74,76,73,77,
    65,68,70,66,69,67,71,64,
    82,85,88,80,84,86,83,87
  )
)

print(scores)

summary_data <- aggregate(score ~ method, data=scores, FUN=mean)
print(summary_data)

model <- aov(score ~ method, data=scores)
print(summary(model))
print(TukeyHSD(model))

ggplot(scores, aes(x=method, y=score)) +
  geom_boxplot() +
  labs(
    title="Scores by Teaching Method",
    x="Teaching Method",
    y="Score"
  ) +
  theme_minimal()

p_value <- summary(model)[[1]][["Pr(>F)"]][1]

cat("ANOVA p-value:", p_value, "\n")

if (p_value < 0.05) {
  cat("Conclusion: Significant difference detected.\n")
} else {
  cat("Conclusion: No significant difference detected.\n")
}
