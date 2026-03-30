# Sales Analysis Dashboard (PostgreSQL + Power BI)

## ?? Overview

This project demonstrates an end-to-end data analytics workflow using PostgreSQL for data transformation and Power BI for visualization. The goal was to analyze sales performance, identify trends, and provide business insights through an interactive dashboard.

---

## ?? Tools & Technologies

* PostgreSQL (Data cleaning and transformation)
* Power BI (Data visualization and dashboarding)

---

## ?? Dataset

The dataset includes transactional sales data with fields such as:

* Order ID
* Order Date
* Category
* Sales
* Profit

---

## 🧹 Data Preparation (PostgreSQL)

The dataset was transformed using a SQL view (`sales_cleaned`) to prepare it for analysis and visualization.

### Key Transformations:

* Extracted **year** and **month** from the order date for time-based analysis
* Created a **profit_category** field using CASE logic to segment orders into Loss, Low, Medium, and High profit groups
* Structured the dataset for efficient use in Power BI

These transformations enabled easier aggregation, filtering, and business insight generation within the dashboard.


---

## ?? Dashboard Features (Power BI)

### Key Performance Indicators (KPIs)

* Total Sales
* Total Profit
* Total Orders

### Visualizations

* Sales by Category (bar chart)
* Profit by Category (comparison)
* Sales Trend Over Time (monthly line chart)

### Interactivity

* Category slicer to dynamically filter all visuals

---

## ?? Key Insights

* Technology category drives the highest sales performance
* Office Supplies significantly underperforms compared to other categories
* Sales trends show fluctuations with identifiable peaks over time

---

## ?? Screenshots

*SQL data cleaning (pgAdmin)
01_sales_cleaned_view.png

*Power BI Query Editor
02_powerbi_connection.png

* Final Dashboard View
03_Final_dashboard.png
---

## ?? Outcome

This project highlights the ability to:

* Perform data transformation using SQL
* Build interactive dashboards in Power BI
* Translate raw data into actionable insights
