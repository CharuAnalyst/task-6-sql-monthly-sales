USE task;

DROP TABLE IF EXISTS sales_data_sample;

CREATE TABLE sales_data_sample (
    ORDERNUMBER INT,
    SALES DOUBLE,
    ORDERDATE VARCHAR(50)
);

SELECT 
    YEAR(STR_TO_DATE(ORDERDATE, '%m/%d/%Y %H:%i')) AS order_year,
    MONTH(STR_TO_DATE(ORDERDATE, '%m/%d/%Y %H:%i')) AS order_month,
    MONTHNAME(STR_TO_DATE(ORDERDATE, '%m/%d/%Y %H:%i')) AS month_name,
    ROUND(SUM(SALES), 2) AS total_revenue,
    COUNT(DISTINCT ORDERNUMBER) AS order_volume
FROM 
    sales_data_sample
GROUP BY 
    order_year, 
    order_month, 
    month_name
ORDER BY 
    order_year, 
    order_month;

INSERT INTO sales_data_sample VALUES
(10100, 2871.00, '2/24/2003 0:00'),
(10101, 2765.90, '5/7/2003 0:00'),
(10102, 3884.34, '7/1/2003 0:00'),
(10103, 3746.70, '8/25/2003 0:00'),
(10104, 3479.76, '10/10/2003 0:00'),
(10105, 2497.77, '10/28/2003 0:00'),
(10106, 5512.32, '11/11/2003 0:00'),
(10107, 2168.54, '11/24/2003 0:00'),
(10108, 4708.44, '2/20/2004 0:00'),
(10109, 3284.26, '4/29/2004 0:00'),
(10110, 5793.42, '5/18/2004 0:00'),
(10111, 1611.56, '6/15/2004 0:00'),
(10112, 2228.80, '7/23/2004 0:00'),
(10113, 5310.24, '8/27/2004 0:00'),
(10114, 3079.44, '11/2/2004 0:00'),
(10115, 4524.36, '11/15/2004 0:00'),
(10116, 6006.96, '1/10/2005 0:00'),
(10117, 1797.12, '2/28/2005 0:00'),
(10118, 4162.20, '5/31/2005 0:00');

SELECT COUNT(*) AS total_rows FROM sales_data_sample;



TRUNCATE TABLE sales_data_sample;

INSERT INTO sales_data_sample VALUES
(10100, 2871.00, '2/24/2003 0:00'),
(10101, 2765.90, '5/7/2003 0:00'),
(10102, 3884.34, '7/1/2003 0:00'),
(10103, 3746.70, '8/25/2003 0:00'),
(10104, 3479.76, '10/10/2003 0:00'),
(10105, 2497.77, '10/28/2003 0:00'),
(10106, 5512.32, '11/11/2003 0:00'),
(10107, 2168.54, '11/24/2003 0:00'),
(10108, 4708.44, '2/20/2004 0:00'),
(10109, 3284.26, '4/29/2004 0:00'),
(10110, 5793.42, '5/18/2004 0:00'),
(10111, 1611.56, '6/15/2004 0:00'),
(10112, 2228.80, '7/23/2004 0:00'),
(10113, 5310.24, '8/27/2004 0:00'),
(10114, 3079.44, '11/2/2004 0:00'),
(10115, 4524.36, '11/15/2004 0:00'),
(10116, 6006.96, '1/10/2005 0:00'),
(10117, 1797.12, '2/28/2005 0:00'),
(10118, 4162.20, '5/31/2005 0:00');

-- Ab Task 6 wali query dubara chala
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