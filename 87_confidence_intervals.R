# Chapter 87: Confidence Intervals
sales <- c(120,135,128,150,142,138,155,148,160,145)

test <- t.test(sales, conf.level=0.95)

print(test)
cat("Mean:", mean(sales), "\n")
cat("95% Confidence Interval:\n")
print(test$conf.int)
