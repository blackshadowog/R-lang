# 5. While Loop: Sum of First N Numbers
n <- 10
i <- 1
total <- 0

while (i <= n) {
  total <- total + i
  i <- i + 1
}

cat("Sum of first", n, "numbers =", total, "\n")
