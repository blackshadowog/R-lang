# 🏠 Real Estate Price Analysis — Project #5

Intermediate-level Python data analysis project focused on understanding residential property prices, locality-level trends, price per square foot, BHK patterns, and relationships between area and price.

## 🎯 Objectives
- Clean and validate real-estate data
- Analyze price distributions
- Compare localities
- Study BHK-wise pricing
- Analyze area vs. price
- Compare price per square foot
- Identify expensive and affordable segments
- Generate data-driven market insights

## 🛠️ Tech Stack
Python • Pandas • NumPy • Matplotlib • Seaborn • Jupyter Notebook

## 📂 Dataset
`data/real_estate.csv` contains 500 sample property records.

Columns:
- Property_ID
- Locality
- BHK
- Area_sqft
- Rate_per_sqft
- Price
- Property_Age
- RERA

## 📊 Analysis Included
1. Dataset overview and data-quality checks
2. Missing values and duplicates
3. Descriptive statistics
4. Price distribution
5. Top 5 most expensive properties
6. Bottom 5 properties by price
7. Average price by locality
8. Average rate per square foot by locality
9. BHK-wise price comparison
10. Area vs. price relationship
11. Correlation analysis
12. RERA comparison
13. Property-age analysis
14. Key market insights

## ▶️ Run
```bash
pip install -r requirements.txt
jupyter notebook
```

Open:
`notebooks/real_estate_price_analysis.ipynb`

## ⚠️ Note
The included dataset is synthetic and intended for portfolio/learning purposes. It is not real property-market data or investment advice.
