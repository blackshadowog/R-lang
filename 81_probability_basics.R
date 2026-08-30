# Chapter 81: Probability Basics
outcomes <- c("Head", "Tail")
print(outcomes)

p_six <- 1 / 6
print(p_six)

p_even <- 3 / 6
print(p_even)

set.seed(42)
rolls <- sample(1:6, 1000, replace=TRUE)
print(table(rolls))
print(mean(rolls == 6))
