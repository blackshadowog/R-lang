# Project #2 — Customer Segmentation

A portfolio-ready customer segmentation project using **RFM Analysis** and **K-Means Clustering**.

## Objective

Identify meaningful customer groups from purchasing behavior and translate those groups into actionable marketing strategies.

## Dataset

The project includes a synthetic dataset of **5,000 customers**.

Columns:
- `CustomerID`
- `Age`
- `Gender`
- `City`
- `PreferredChannel`
- `RecencyDays`
- `PurchaseFrequency`
- `MonetaryValue`
- `TrueSegment`

`TrueSegment` is included only as a reference for the synthetic data. The clustering model itself uses behavioral RFM variables.

## Methodology

### 1. Data Preparation
- Load customer data
- Check structure and descriptive statistics
- Validate missing values and duplicates

### 2. RFM Analysis
- Recency: days since last purchase
- Frequency: number of purchases
- Monetary: total customer value

### 3. Feature Engineering
RFM variables are log-transformed to reduce skew and standardized before clustering.

### 4. K-Means Clustering
Multiple values of K are evaluated using the silhouette score. The final segmentation can then be profiled using cluster-level RFM averages.

### 5. Business Interpretation

Typical profiles include:
- Champions / High Value
- Loyal Customers
- Potential Loyalists
- At Risk
- Lost / Low Engagement

Cluster names should be assigned after inspecting the actual cluster statistics.

## Project Structure

```text
Project_2_Customer_Segmentation/
│
├── data/
│   └── customers.csv
│
├── notebooks/
│   └── customer_segmentation.ipynb
│
├── src/
│   ├── __init__.py
│   └── customer_segmentation.py
│
├── outputs/
│   └── generated after running the script
│
├── reports/
│   └── space for final business report
│
├── requirements.txt
└── README.md
```

## How to Run

### 1. Create environment

```bash
python -m venv venv
```

Windows:

```bash
venv\Scripts\activate
```

### 2. Install dependencies

```bash
pip install -r requirements.txt
```

### 3. Run analysis

```bash
python src/customer_segmentation.py
```

Generated files:
- `outputs/customer_clusters.csv`
- `outputs/cluster_summary.csv`
- `outputs/cluster_monetary_value.png`

### 4. Run notebook

```bash
jupyter notebook
```

Open:

```text
notebooks/customer_segmentation.ipynb
```

## Business Recommendations

| Segment Profile | Recommended Action |
|---|---|
| High Value / Champions | VIP rewards, early access, premium offers |
| Loyal | Loyalty program, bundles, cross-sell |
| Potential Loyalists | Personalized recommendations and incentives |
| At Risk | Win-back campaigns and limited-time offers |
| Lost | Low-cost reactivation campaigns |

## Key Skills Demonstrated

- Python
- Pandas
- NumPy
- Data Cleaning
- Exploratory Data Analysis
- RFM Analysis
- Feature Engineering
- StandardScaler
- K-Means Clustering
- Silhouette Score
- Matplotlib
- Business Interpretation
- Customer Analytics

## Portfolio Value

This project demonstrates how raw customer behavior can be converted into actionable business segments rather than stopping at a machine-learning model.

## Notes

The dataset is synthetic and intended for learning/portfolio use. The same workflow can be applied to real transaction-level customer data by calculating RFM metrics from order history.
