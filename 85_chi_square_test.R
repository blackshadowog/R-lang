# Chapter 85: Chi-Square Test
data <- matrix(c(30,20,15,35), nrow=2, byrow=TRUE)

rownames(data) <- c("Male", "Female")
colnames(data) <- c("Buy", "Not_Buy")

print(data)

test <- chisq.test(data)
print(test)

cat("p-value:", test$p.value, "\n")
