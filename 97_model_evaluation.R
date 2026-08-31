# 97 - Model Evaluation
actual <- c(10,20,30,40,50)
predicted <- c(12,18,29,43,48)
errors <- actual-predicted
mae <- mean(abs(errors))
mse <- mean(errors^2)
rmse <- sqrt(mse)
cat("MAE:",mae,"\n")
cat("MSE:",mse,"\n")
cat("RMSE:",rmse,"\n")
comparison <- data.frame(actual,predicted,error=errors)
print(comparison)
plot(actual,predicted,main="Actual vs Predicted",xlab="Actual",ylab="Predicted",pch=19)
abline(a=0,b=1)
