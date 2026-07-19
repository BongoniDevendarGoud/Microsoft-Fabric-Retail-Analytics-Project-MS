SELECT TOP 10 *
FROM dbo.vw_Fact_Order_Sales;

SELECT TOP 10 *
FROM dbo.vw_Dim_Customers;

SELECT TOP 10 *
FROM dbo.vw_Dim_Date;

SELECT TOP 10 *
FROM dbo.vw_Dim_Product_Category;

SELECT
SUM(payment_value) AS Total_Revenue
FROM dbo.vw_Fact_Order_Sales;

SELECT
COUNT(DISTINCT order_id) AS Total_Orders
FROM dbo.vw_Fact_Order_Sales;

SELECT
AVG(payment_value) AS Average_Order_Value
FROM dbo.vw_Fact_Order_Sales;

SELECT
order_status,
SUM(payment_value) AS Revenue
FROM dbo.vw_Fact_Order_Sales
GROUP BY order_status
ORDER BY Revenue DESC;

SELECT
YEAR(order_purchase_timestamp) AS Year,
MONTH(order_purchase_timestamp) AS Month,
SUM(payment_value) AS Revenue
FROM dbo.vw_Fact_Order_Sales
GROUP BY
YEAR(order_purchase_timestamp),
MONTH(order_purchase_timestamp)
ORDER BY
Year,
Month;

SELECT
AVG(review_score) AS Average_Review
FROM dbo.vw_Fact_Order_Sales;