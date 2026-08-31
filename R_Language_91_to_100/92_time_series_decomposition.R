# 92 - Time Series Decomposition
sales <- ts(c(100,110,105,120,130,125,140,150,145,160,170,165,
              180,190,185,200,210,205,220,230,225,240,250,245),
            start=c(2025,1), frequency=12)
decomposition <- decompose(sales)
plot(decomposition)
print(decomposition$trend)
print(decomposition$seasonal)
