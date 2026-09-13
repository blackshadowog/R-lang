import os
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.preprocessing import StandardScaler
from sklearn.cluster import KMeans
from sklearn.metrics import silhouette_score

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DATA_PATH = os.path.join(BASE, "data", "customers.csv")
OUTPUT = os.path.join(BASE, "outputs")
os.makedirs(OUTPUT, exist_ok=True)

def load_data():
    return pd.read_csv(DATA_PATH)

def create_rfm(df):
    rfm = df[["CustomerID", "RecencyDays", "PurchaseFrequency", "MonetaryValue"]].copy()
    rfm = rfm.rename(columns={
        "RecencyDays": "Recency",
        "PurchaseFrequency": "Frequency",
        "MonetaryValue": "Monetary"
    })
    return rfm

def run_kmeans(rfm, k=5):
    features = rfm[["Recency", "Frequency", "Monetary"]].copy()
    # Log transform reduces the impact of highly skewed monetary values.
    features["Recency"] = __import__("numpy").log1p(features["Recency"])
    features["Frequency"] = __import__("numpy").log1p(features["Frequency"])
    features["Monetary"] = __import__("numpy").log1p(features["Monetary"])

    scaler = StandardScaler()
    X = scaler.fit_transform(features)

    model = KMeans(n_clusters=k, random_state=42, n_init=20)
    labels = model.fit_predict(X)

    result = rfm.copy()
    result["Cluster"] = labels
    score = silhouette_score(X, labels)
    return result, model, scaler, score

def cluster_summary(rfm_clustered):
    return (
        rfm_clustered.groupby("Cluster")
        .agg(
            Customers=("CustomerID", "count"),
            AvgRecency=("Recency", "mean"),
            AvgFrequency=("Frequency", "mean"),
            AvgMonetary=("Monetary", "mean")
        )
        .round(2)
        .sort_values("AvgMonetary", ascending=False)
    )

def save_chart(summary):
    plt.figure(figsize=(9, 5))
    summary["AvgMonetary"].sort_values(ascending=True).plot(kind="barh")
    plt.title("Average Monetary Value by Customer Cluster")
    plt.xlabel("Average Monetary Value")
    plt.ylabel("Cluster")
    plt.tight_layout()
    plt.savefig(os.path.join(OUTPUT, "cluster_monetary_value.png"), dpi=180)
    plt.close()

if __name__ == "__main__":
    data = load_data()
    rfm = create_rfm(data)
    clustered, model, scaler, score = run_kmeans(rfm, k=5)
    summary = cluster_summary(clustered)

    clustered.to_csv(os.path.join(OUTPUT, "customer_clusters.csv"), index=False)
    summary.to_csv(os.path.join(OUTPUT, "cluster_summary.csv"))
    save_chart(summary)

    print("Silhouette Score:", round(score, 4))
    print(summary)
