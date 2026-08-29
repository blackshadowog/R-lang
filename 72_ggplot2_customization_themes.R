library(ggplot2)
df <- data.frame(month=c("Jan","Feb","Mar","Apr","May","Jun"),revenue=c(12000,15000,14000,18000,21000,19500))
ggplot(df,aes(month,revenue,group=1))+geom_line()+geom_point(size=3)+labs(title="Monthly Revenue",subtitle="First Half of Year",x="Month",y="Revenue")+theme_minimal()+theme(plot.title=element_text(size=18,face="bold"))
