# Customer Segmentation — Business Report

## Executive Summary

This project segments 5,000 customers using Recency, Frequency and Monetary (RFM) behavior and K-Means clustering.

## Business Question

Which customer groups should receive different marketing, retention and loyalty strategies?

## Analytical Approach

1. Validate customer-level data.
2. Construct RFM variables.
3. Log-transform skewed variables.
4. Standardize features.
5. Compare K values using silhouette score.
6. Profile each cluster.
7. Translate profiles into business actions.

## Findings

Run `python src/customer_segmentation.py` to generate `outputs/cluster_summary.csv`, then populate the final findings from the actual cluster statistics.

## Recommended Actions

- Protect high-value customers with VIP experiences.
- Increase repeat purchase among loyal customers.
- Convert promising customers with personalized offers.
- Reactivate at-risk customers before they become inactive.
- Use low-cost campaigns for low-value inactive customers.

## Limitations

- Dataset is synthetic.
- RFM alone does not capture product preferences, profitability, channel attribution or customer satisfaction.
- Cluster labels require business interpretation and should not be treated as ground truth.

## Next Steps

Add transaction-level data, product categories, customer lifetime value, campaign response and churn outcomes for a production-grade segmentation model.
