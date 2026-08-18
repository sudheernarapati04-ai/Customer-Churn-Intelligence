# Customer Churn Intelligence & Retention Analytics

An end-to-end customer analytics and machine learning project designed to identify customers at risk of churn and transform predictive model outputs into actionable retention intelligence.

## Project Overview

Customer churn directly affects recurring revenue and customer lifetime value. This project builds an end-to-end analytics workflow that combines data preparation, exploratory analysis, SQL, machine learning, customer risk identification, and business intelligence.

The analysis covers **7,043 customers**, with an observed churn rate of **26.54%**.

### Key Results

- **7,043** customers analyzed
- **26.54%** overall churn rate
- **84.03% ROC-AUC** achieved by Logistic Regression
- **85.03% churn recall** achieved by Random Forest
- **3 machine learning models** evaluated
- Customer-level churn risk scoring for retention prioritization

## Business Problem

The objective is not simply to predict whether a customer will churn. The project is designed to answer business questions such as:

- Which customers are most likely to leave?
- What characteristics are associated with churn?
- How accurately can churn risk be predicted?
- How can high-risk customers be prioritized for retention campaigns?
- How can model results be translated into useful business intelligence?

## Analytics Workflow

```text
Raw Customer Data
        ↓
Data Quality & Preparation
        ↓
Exploratory / SQL Analysis
        ↓
Feature Engineering
        ↓
Machine Learning
        ↓
Model Evaluation
        ↓
Customer Risk Intelligence
        ↓
Retention Analytics
        ↓
Power BI Dashboard
```

## Machine Learning

Three classification approaches were evaluated:

| Model | Accuracy | Precision | Recall | F1 Score | ROC-AUC |
|---|---:|---:|---:|---:|---:|
| Logistic Regression | 79.42% | 63.12% | 54.01% | 58.21% | **84.03%** |
| Random Forest | 69.41% | 45.89% | **85.03%** | **59.61%** | 81.32% |
| XGBoost | 79.42% | **64.09%** | 51.07% | 56.85% | 83.96% |

The results illustrate an important business trade-off. Logistic Regression produced the strongest ROC-AUC, while Random Forest achieved substantially higher recall for churners.

For a retention use case, recall can be particularly valuable because missing a customer who is actually preparing to leave may represent a lost retention opportunity.

## Customer Risk Intelligence

Model predictions can be converted into customer-level risk information to help retention teams prioritize outreach.

Rather than treating machine learning as an isolated modeling exercise, the workflow connects predictive analytics with business decision support.

## Explainable AI

SHAP is incorporated into the project workflow to support model explainability and help interpret the factors contributing to churn predictions.

This allows predictive outputs to be connected to understandable customer and behavioral characteristics rather than presented only as model scores.

## Power BI

The Power BI component translates analytical outputs into retention-focused business intelligence, allowing stakeholders to explore customer risk and churn patterns visually.

The goal is to move from:

**Data → Prediction → Risk Identification → Retention Action**

## Technology Stack

**Programming & Analytics**
- Python
- pandas
- NumPy
- scikit-learn

**Machine Learning**
- Logistic Regression
- Random Forest
- XGBoost
- Feature Engineering
- SHAP / Explainable AI

**Data & BI**
- SQL
- Power BI

**Development**
- Jupyter Notebook
- Git
- GitHub

## Repository Structure

```text
Customer-Churn-Intelligence/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── notebooks/
│   ├── 01_data_preparation.ipynb
│   └── 02_churn_modeling.ipynb
│
├── sql/
│   └── SQL analysis files
│
├── powerbi/
│   └── Power BI dashboard files
│
├── images/
│   └── Project visuals
│
└── README.md
```

## Dataset

The modeling dataset contains:

- **7,043 customer records**
- **21 original variables**
- **1,869 churned customers**
- **5,174 retained customers**
- **26.54% churn rate**

The modeling workflow uses a stratified **80/20 train-test split**, resulting in:

- **5,634 training observations**
- **1,409 testing observations**

## Business Value

This project demonstrates how customer data can be transformed into a practical retention intelligence workflow.

Instead of stopping at model accuracy, the analysis focuses on identifying at-risk customers, understanding churn signals, comparing modeling trade-offs, and delivering results in a format that can support business decision-making.

## Author

**Sudheer Narapati**

Data Analytics | Business Intelligence | Machine Learning
