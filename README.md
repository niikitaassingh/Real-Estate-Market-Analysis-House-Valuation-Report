# House Sales Analysis Dashboard

## Project Overview

This project analyzes house sales transactions to identify revenue trends, customer purchasing behavior, property performance, and regional market insights. The dashboard helps stakeholders make data-driven decisions regarding pricing, sales strategies, and market opportunities.

---

## Tools Used

* Power BI
* SQL
* Python (Pandas, NumPy)
* Excel
* DAX

---

## Dataset Overview

The dataset contains:

* Transaction ID
* Date
* Day Name
* Month
* Year
* Property Builder / Brand
* Units Sold
* Property Price
* Sales Amount
* Customer Name
* Customer Age
* City
* Payment Method
* Customer Ratings
* Property Name / Model
* Rating Status

---

## Project Structure

```text
House-Sales-Analysis/
│
├── data/
│   └── custom_celender.csv
    └── mobile_sale_clean_data.csv
│
├── dashboard/
│   └── House_report.pbix
│
├── sql/
│   └── queries.sql
│
├── images/
│   ├── dashboard_image.png
│   └── filter_image.png
    └── mtd_image.png
│
├── insights/
│   └── business_insights.md
│
├── README.md
└── requirements.txt
```

---

## Business Questions

1. What is the total sales revenue?
2. Which city generates the highest revenue?
3. What are the monthly sales trends?
4. Which properties perform best?
5. Which payment methods are most used?
6. Which customer age groups purchase the most properties?
7. What is the average property price?
8. How satisfied are customers based on ratings?

---

## DAX Measures

```DAX
Average_Price =
AVERAGE(House_Sales_Data[Price Per Unit])

Total_Quantity =
SUM(House_Sales_Data[Units Sold])

Total_Sales =
SUM(House_Sales_Data[sales_amount])

Transactions =
COUNTROWS(House_Sales_Data)

MTD =
TOTALMTD(
    [Total_Sales],
    Custom_Calendar[Date]
)

YTD =
TOTALYTD(
    [Total_Sales],
    Custom_Calendar[Date]
)
```

---

## Dashboard KPIs

* Total Revenue
* Total Transactions
* Total Properties Sold
* Average Property Price
* Month-to-Date Revenue
* Year-to-Date Revenue

---

## Dashboard Features

### Executive Summary

* Total Revenue
* Total Transactions
* Average Property Price

### Regional Analysis

* Revenue by City
* Top Performing Locations

### Property Analysis

* Top Selling Properties
* Revenue by Property Type

### Customer Analysis

* Customer Age Distribution
* Customer Rating Analysis

### Time-Series Analysis

* Daily Revenue Trend
* Monthly Revenue Trend
* Yearly Revenue Trend

### Payment Analysis

* Payment Method Distribution

---

## Key Insights

* Identified cities contributing the highest revenue.
* Determined top-performing properties.
* Analyzed seasonal sales patterns.
* Evaluated customer satisfaction levels.
* Measured payment preferences and purchasing behavior.

---

## Business Impact

The dashboard enables real estate companies to:

* Optimize pricing strategies.
* Improve sales forecasting.
* Identify high-growth markets.
* Enhance customer satisfaction.
* Increase revenue through data-driven decisions.

---

## Author

Nikita Singh

**Skills:** Power BI | SQL | Python | Excel | DAX | Data Analytics
