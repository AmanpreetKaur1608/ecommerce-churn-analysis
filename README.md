# E-commerce Customer Churn Analysis (SQL + Power BI)

## 📌 Overview
This is an end-to-end data analytics project focused on analyzing customer churn
for an e-commerce business. The project demonstrates real-world SQL data cleaning
using staging tables and views, followed by dimensional modeling and interactive
Power BI dashboards.

Database used: **Ecommerce Churn**

---

## 🛠 Tools & Technologies
- PostgreSQL (SQL)
- Power BI
- Excel (initial data inspection)

---

## 🔄 SQL Data Pipeline
RAW CSV → STAGING TABLES (all TEXT) → CLEANED VIEWS → DIMENSION & FACT TABLES → CONSTRAINTS

### Key SQL techniques used:
- Staging tables to safely load raw data
- `TRIM()` to remove unwanted spaces
- `NULLIF()` to convert blanks into NULL values
- `REPLACE()` to clean symbols and inconsistent values
- `LOWER()` to standardize text
- Explicit type casting after cleaning
- `CREATE OR REPLACE VIEW` for iterative data cleaning
- Dimension and fact table creation
- Primary Key and Foreign Key constraints for data integrity

SQL scripts are executed in a structured order to simulate a real-world ETL workflow.

---

## 📊 Power BI Modeling & Dashboard
- Star schema data model
- Dedicated Measures table
- DAX measures (not calculated columns)
- KPI cards and analytical visuals
- Slicers and controlled interactions
- Multiple report pages for business insights

### Dashboard Pages:
1. Executive Overview
2. Churn Analysis
3. Customer Behavior & Insights

---

## 📷 Dashboard Screenshots

### Executive Overview
![Executive Overview](screenshots/Executive%20Overview.png)

### Churn Analysis
![Churn Analysis](screenshots/Churn%20Analysis.png)

### Customer Behavior & Insights
![Customer Behavior & Insights](screenshots/Customer%20Behavior%20%26%20Insights.png)

### Data Model View
![Model View](screenshots/model%20view.png)

---

## 📂 Repository Structure
- `data/raw/` → original dataset
- `data/cleaned/` → cleaned dataset after SQL processing
- `sql/` → SQL scripts (staging, cleaning, modeling, constraints)
- `screenshots/` → Power BI dashboard images
- `Ecommerce_Churn.pbix` → Power BI report file

---

## 🚀 Outcome
This project demonstrates a complete analytics workflow:
data ingestion, cleaning, transformation, modeling, and visualization.
It reflects practical data analyst skills used in real business environments.
