scores <- c(45,67,82,91,58,76)
result <- ifelse(scores>=60,"Pass","Fail")
print(data.frame(Score=scores,Result=result))
