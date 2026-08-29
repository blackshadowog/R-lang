library(ggplot2)
df <- data.frame(hours=1:10, marks=c(42,48,55,61,65,72,78,84,89,94))
ggplot(df,aes(hours,marks))+geom_point()+geom_smooth(method="lm",se=FALSE)+labs(title="Study Hours vs Marks",x="Study Hours",y="Marks")
