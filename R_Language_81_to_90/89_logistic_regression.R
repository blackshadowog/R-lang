# Chapter 89: Logistic Regression
data <- data.frame(
  hours=1:10,
  passed=c(0,0,0,0,1,1,1,1,1,1)
)

model <- glm(passed ~ hours,
             data=data,
             family=binomial)

print(summary(model))

new_data <- data.frame(hours=c(3,6,9))
probabilities <- predict(model, newdata=new_data, type="response")

results <- data.frame(
  hours=new_data$hours,
  probability=probabilities,
  predicted=ifelse(probabilities >= 0.5, 1, 0)
)

print(results)
