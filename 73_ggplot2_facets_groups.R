library(ggplot2)
df <- data.frame(month=rep(c("Jan","Feb","Mar","Apr"),3),region=rep(c("North","South","West"),each=4),sales=c(120,140,150,170,100,130,145,160,90,110,135,150))
ggplot(df,aes(month,sales,fill=region))+geom_col(position="dodge")+labs(title="Regional Monthly Sales")
ggplot(df,aes(month,sales,group=1))+geom_line()+geom_point()+facet_wrap(~region)+labs(title="Sales Trend by Region")
