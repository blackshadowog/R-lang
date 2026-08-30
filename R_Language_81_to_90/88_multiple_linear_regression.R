# Chapter 88: Multiple Linear Regression
data <- data.frame(
  hours=c(2,3,4,5,6,7,8,9,10,11),
  attendance=c(60,65,70,72,78,80,85,88,92,95),
  marks=c(50,55,61,65,70,75,80,84,90,94)
)

model <- lm(marks ~ hours + attendance, data=data)

print(summary(model))
print(coef(model))

new_student <- data.frame(hours=8, attendance=85)
prediction <- predict(model, newdata=new_student)

cat("Predicted marks:", prediction, "\n")
