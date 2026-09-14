import os, numpy as np, pandas as pd, matplotlib.pyplot as plt
from sklearn.metrics import mean_absolute_error, mean_squared_error
from statsmodels.tsa.holtwinters import ExponentialSmoothing
BASE=os.path.dirname(os.path.dirname(os.path.abspath(__file__))); OUT=os.path.join(BASE,"outputs"); os.makedirs(OUT,exist_ok=True)
df=pd.read_csv(os.path.join(BASE,"data/monthly_sales.csv"),parse_dates=["Date"]).sort_values("Date").set_index("Date")
sales=df["Sales"].asfreq("MS"); train=sales.iloc[:-12]; test=sales.iloc[-12:]
model=ExponentialSmoothing(train,trend="add",seasonal="mul",seasonal_periods=12,initialization_method="estimated").fit(); forecast=model.forecast(12)
mae=mean_absolute_error(test,forecast); rmse=np.sqrt(mean_squared_error(test,forecast))
pd.DataFrame({"Date":test.index,"ActualSales":test.values,"ForecastSales":forecast.values,"AbsoluteError":abs(test.values-forecast.values)}).to_csv(os.path.join(OUT,"sales_forecast.csv"),index=False)
pd.DataFrame({"Metric":["MAE","RMSE"],"Value":[mae,rmse]}).to_csv(os.path.join(OUT,"forecast_metrics.csv"),index=False)
final=ExponentialSmoothing(sales,trend="add",seasonal="mul",seasonal_periods=12,initialization_method="estimated").fit(); future=final.forecast(12)
pd.DataFrame({"Date":future.index,"ForecastSales":future.values}).to_csv(os.path.join(OUT,"future_12_month_forecast.csv"),index=False)
plt.figure(figsize=(11,5)); plt.plot(sales.index,sales.values); plt.title("Monthly Sales Trend"); plt.xlabel("Date"); plt.ylabel("Sales"); plt.tight_layout(); plt.savefig(os.path.join(OUT,"monthly_sales_trend.png"),dpi=180); plt.close()
plt.figure(figsize=(11,5)); plt.plot(train.index,train.values,label="Train"); plt.plot(test.index,test.values,label="Actual"); plt.plot(forecast.index,forecast.values,label="Forecast"); plt.title("Actual vs Forecast Sales"); plt.xlabel("Date"); plt.ylabel("Sales"); plt.legend(); plt.tight_layout(); plt.savefig(os.path.join(OUT,"actual_vs_forecast.png"),dpi=180); plt.close()
print("MAE",round(mae,2),"RMSE",round(rmse,2))
