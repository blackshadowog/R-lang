# Chapter 86: ANOVA
group_a <- c(72,75,78,70,74)
group_b <- c(65,68,70,67,66)
group_c <- c(82,85,88,80,84)

scores <- c(group_a, group_b, group_c)
group <- factor(rep(c("A","B","C"), each=5))

model <- aov(scores ~ group)
print(summary(model))
print(TukeyHSD(model))

boxplot(scores ~ group,
        main="Scores by Group",
        xlab="Group", ylab="Score")
