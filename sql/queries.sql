-- 1. Total Revenue
SELECT
    SUM(sales_amount) AS Total_Revenue
FROM House_Sales_Data;

-- 2. Total Transactions
SELECT
    COUNT(*) AS Total_Transactions
FROM House_Sales_Data;

-- 3. Average Property Price
SELECT
    AVG(Price_Per_Unit) AS Average_Property_Price
FROM House_Sales_Data;

-- 4. Sales by City
SELECT
    City,
    SUM(sales_amount) AS Revenue
FROM House_Sales_Data
GROUP BY City
ORDER BY Revenue DESC;

-- 5. Monthly Sales Trend
SELECT
    Year,
    Month,
    SUM(sales_amount) AS Monthly_Revenue
FROM House_Sales_Data
GROUP BY Year, Month
ORDER BY Year, Month;

-- 6. Property Sales by Brand/Builder
SELECT
    Brand,
    SUM(sales_amount) AS Revenue
FROM House_Sales_Data
GROUP BY Brand
ORDER BY Revenue DESC;

-- 7. Top 10 Revenue Generating Properties
SELECT
    Mobile_Model AS Property_Name,
    SUM(sales_amount) AS Revenue
FROM House_Sales_Data
GROUP BY Mobile_Model
ORDER BY Revenue DESC
LIMIT 10;

-- 8. Payment Method Analysis
SELECT
    Payment_Method,
    COUNT(*) AS Transactions,
    SUM(sales_amount) AS Revenue
FROM House_Sales_Data
GROUP BY Payment_Method;

-- 9. Customer Age Group Analysis
SELECT
    CASE
        WHEN Customer_Age BETWEEN 18 AND 30 THEN '18-30'
        WHEN Customer_Age BETWEEN 31 AND 45 THEN '31-45'
        WHEN Customer_Age BETWEEN 46 AND 60 THEN '46-60'
        ELSE '60+'
    END AS Age_Group,
    COUNT(*) AS Purchases,
    SUM(sales_amount) AS Revenue
FROM House_Sales_Data
GROUP BY Age_Group;

-- 10. Best Sales Day
SELECT
    Day_Name,
    SUM(sales_amount) AS Revenue
FROM House_Sales_Data
GROUP BY Day_Name
ORDER BY Revenue DESC;

-- 11. Customer Satisfaction Analysis
SELECT
    Rating_Status,
    COUNT(*) AS Customers
FROM House_Sales_Data
GROUP BY Rating_Status;

-- 12. Top Rated Properties
SELECT
    Mobile_Model AS Property_Name,
    AVG(Customer_Ratings) AS Avg_Rating
FROM House_Sales_Data
GROUP BY Mobile_Model
ORDER BY Avg_Rating DESC;