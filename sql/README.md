# Customer Churn Intelligence & Retention Analytics

## Project Overview

This project develops an end-to-end customer churn intelligence solution designed to identify customers at risk of leaving, quantify revenue exposure, explain the drivers behind churn predictions, and prioritize customers for retention intervention.

The solution combines Python, machine learning, explainable AI, SQL, and Power BI to transform customer data into actionable retention intelligence.

## Business Problem

Customer churn directly impacts recurring revenue and customer lifetime value. The objective of this project is to answer four key business questions:

- Which customers are most likely to churn?
- What factors are driving churn risk?
- How much revenue is currently exposed to churn?
- Which customers should retention teams prioritize?

## Solution Architecture

Raw Customer Data  
→ Data Quality & Cleaning  
→ Exploratory Analysis  
→ Feature Engineering  
→ Machine Learning  
→ Model Comparison  
→ Threshold Optimization  
→ SHAP Explainability  
→ Customer Risk Scoring  
→ Revenue-at-Risk Analysis  
→ SQL Business Analysis  
→ Power BI Executive Dashboard

## Technology Stack

- Python
- pandas
- NumPy
- scikit-learn
- XGBoost
- SHAP
- SQL
- SQLite
- Power BI
- DAX
- Jupyter Notebook
- Git & GitHub

## Machine Learning

Three classification models were developed and evaluated:

1. Logistic Regression
2. Random Forest
3. XGBoost

Model performance was evaluated using:

- Accuracy
- Precision
- Recall
- F1 Score
- ROC-AUC
- Confusion Matrix

Decision-threshold analysis was also performed to evaluate the trade-off between identifying churners and limiting unnecessary retention interventions.

## Explainable AI

SHAP was used to explain the machine-learning predictions and identify the customer attributes contributing most strongly to predicted churn risk.

This allows the solution to move beyond simply predicting churn and provide interpretable information about why customers are considered at risk.

## Customer Risk Intelligence

Customers were assigned predicted churn probabilities and segmented into:

- Low Risk
- Medium Risk
- High Risk
- Critical Risk

A retention priority score combines predicted churn probability with customer revenue exposure to identify customers requiring the most urgent intervention.

## Revenue-at-Risk Analysis

The project estimates probability-weighted revenue exposure using:

Expected Revenue at Risk = Annual Revenue × Predicted Churn Probability

This connects machine-learning predictions directly to financial impact and retention decision-making.

## SQL Analytics

SQL analysis includes:

- Customer risk segmentation
- Retention priority analysis
- Revenue-at-risk aggregation
- High-value customer identification
- CTEs
- Window functions
- RANK()
- Revenue-risk contribution analysis

## Power BI Dashboard
![Customer Churn Intelligence Dashboard](images/churn_dashboard.png)

The executive dashboard includes:

- Total Customers
- High-Risk Customers
- Revenue at Risk
- Predicted Churn Risk
- Actual Churn Rate
- Customers by Risk Segment
- Customers by Retention Priority
- Revenue at Risk by Risk Segment
- Customer-level retention intervention table
- Interactive Risk Segment and Retention Priority filters

## Business Value

The solution demonstrates how predictive analytics can support proactive retention strategy by helping decision-makers:

- Identify customers before they churn
- Understand major churn drivers
- Quantify financial exposure
- Prioritize retention resources
- Focus interventions on high-risk, high-value customers

## Repository Structure

```text
Customer_Churn_Intelligence/
├── data/
│   ├── raw/
│   └── processed/
├── documentation/
├── images/
├── models/
├── notebooks/
│   ├── 01_data_preparation.ipynb
│   └── 02_churn_modeling.ipynb
├── powerbi/
│   └── Customer_Churn_Intelligence_Dashboard.pbix
├── sql/
│   └── 01_churn_business_analysis.sql
├── src/
└── README.md

Key Skills Demonstrated

Predictive Analytics | Customer Analytics | Machine Learning | Explainable AI | SHAP | XGBoost | Advanced SQL | Python | Power BI | DAX | Data Quality | Feature Engineering | Model Evaluation | Customer Segmentation | Revenue Analytics | Business Intelligence


One important thing: **we are not putting fake claims like “reduced churn by 30%” or “saved $1M”** because this is a portfolio analysis, not a production deployment. That makes it more credible in interviews.

After pasting it, press **Ctrl + S**.

Say **saved**. Then we'll do the dashboard screenshot → Git cleanup → GitHub push, and Project 2 will be portfolio-ready.