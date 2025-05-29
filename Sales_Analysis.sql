SELECT * FROM sales;
SELECT *
FROM sales
WHERE ship_mode = 'Economy'
  AND total_amount > 25000;
SELECT * FROM Sales
WHERE Category = 'Technology'
  AND Country = 'Ireland'
  AND Order_Date > '2020-01-01';
SELECT * FROM Sales
ORDER BY Unit_Profit DESC
LIMIT 10;
SELECT * FROM Sales
ORDER BY Unit_Profit DESC
LIMIT 10,20;
SELECT * FROM sales 
WHERE Customer_Name LIKE 'J%N';
SELECT Order_ID,Product_Name FROM sales 
WHERE Product_Name LIKE '%Acco%';
SELECT City, SUM(Total_Amount) AS Total_Sales
FROM sales
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 5;
SELECT CUSTOMER_NAME, TOTAL_AMOUNT FROM SALES
LIMIT 20;
SELECT Customer_Name, Total_Amount
FROM Sales
ORDER BY Total_Amount DESC
LIMIT 10 OFFSET 10;
SELECT 
    SUM(Total_Amount) AS Total_Reve  nue,
    AVG(Unit_Cost) AS Average_Unit_Cost,
    COUNT(*) AS Total_Orders
FROM Sales;
SELECT COUNT(DISTINCT region) AS unique_region_count
FROM SALES;
SELECT Customer_Name, COUNT(DISTINCT Order_ID) AS order_count
FROM sales
GROUP BY Customer_Name;