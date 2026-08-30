# Chapter 84: t-Test
group_a <- c(72,75,78,70,74,77,73)
group_b <- c(65,68,70,67,66,69,64)

result <- t.test(group_a, group_b)
print(result)

cat("Mean Group A:", mean(group_a), "\n")
cat("Mean Group B:", mean(group_b), "\n")
cat("p-value:", result$p.value, "\n")
