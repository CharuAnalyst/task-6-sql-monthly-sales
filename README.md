Task 6: Monthly Revenue and Order Volume Analysis

Objective
Calculate total revenue and order volume for each month using MySQL.

## Files in this repo
[SQL Query](./task-6-query.sql) - SQL query used for analysis
[Output CSV](./task-6-output.csv.csv) - Output result with monthly revenue and volume
[Screenshot](./task-6-output.png) - Screenshot of query execution in MySQL Workbench

## Query Used
```sql
SELECT 
    YEAR(STR_TO_DATE(ORDERDATE, '%m/%d/%Y %H:%i')) AS order_year,
    MONTH(STR_TO_DATE(ORDERDATE, '%m/%d/%Y %H:%i')) AS order_month,
    MONTHNAME(STR_TO_DATE(ORDERDATE, '%m/%d/%Y %H:%i')) AS month_name,
    ROUND(SUM(SALES), 2) AS total_revenue,
    COUNT(DISTINCT ORDERNUMBER) AS order_volume
FROM 
    sales_data_sample
GROUP BY order_year, order_month, month_name
ORDER BY order_year, order_month;
