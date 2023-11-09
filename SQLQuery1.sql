SELECT * FROM Fast_Food

SELECT CAST(SUM(transaction_amount) AS DECIMAL(10,2)) AS Total_Revenue FROM Fast_Food

SELECT CAST(CAST(SUM(transaction_amount) AS DECIMAL (10,2)) / CAST(COUNT(order_id) AS DECIMAL (10,2)) 
AS DECIMAL (10,2)) AS Avg_Order_Value FROM Fast_Food

SELECT SUM(quantity) AS Total_Items_Sold FROM Fast_Food

SELECT COUNT(order_id) AS Total_Orders FROM Fast_Food

SELECT CAST(CAST(SUM(quantity)AS DECIMAL(10,2)) / CAST(COUNT(order_id)AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Avg_Items_Per_Order FROM Fast_Food

SELECT DATENAME(DW, date) AS Order_Day, COUNT(order_id) AS Total_Orders FROM Fast_Food
GROUP BY DATENAME(DW, date)

SELECT DATENAME(MONTH, date) AS Month, COUNT(order_id) AS Total_Orders FROM Fast_Food
GROUP BY DATENAME(MONTH, date)
ORDER BY Total_Orders DESC

SELECT item_type, CAST(CAST(SUM(transaction_amount) * 100 AS DECIMAL(10,2)) / CAST((SELECT SUM(transaction_amount) FROM Fast_Food) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Percentage_Sales
FROM Fast_Food  
GROUP BY item_type

SELECT item_type, SUM(transaction_amount) AS Total_Sales, CAST(CAST(SUM(transaction_amount) * 100 AS DECIMAL(10,2)) / CAST((SELECT SUM(transaction_amount) FROM Fast_Food) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Percentage_Sales
FROM Fast_Food  
GROUP BY item_type

--For January--
SELECT item_type, CAST(CAST(SUM(transaction_amount) * 100 AS DECIMAL(10,2)) / CAST((SELECT SUM(transaction_amount) FROM Fast_Food WHERE MONTH(date) = 1) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Percentage_Sales
FROM Fast_Food  
WHERE MONTH(date) = 1
GROUP BY item_type

--For Quarter 1--
SELECT item_type, CAST(CAST(SUM(transaction_amount) * 100 AS DECIMAL(10,2)) / CAST((SELECT SUM(transaction_amount) FROM Fast_Food WHERE DATEPART(quarter, date) = 1) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Percentage_Sales
FROM Fast_Food  
WHERE DATEPART(quarter, date) = 1
GROUP BY item_type



SELECT received_by, CAST(CAST(SUM(transaction_amount) * 100 AS DECIMAL(10,2)) / CAST((SELECT SUM(transaction_amount) FROM Fast_Food) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Percentage_Sales
FROM Fast_Food  
GROUP BY received_by

SELECT received_by, SUM(transaction_amount) AS Total_Sales, CAST(CAST(SUM(transaction_amount) * 100 AS DECIMAL(10,2)) / CAST((SELECT SUM(transaction_amount) FROM Fast_Food) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Percentage_Sales
FROM Fast_Food  
GROUP BY received_by

SELECT transaction_type, CAST(CAST(SUM(transaction_amount) * 100 AS DECIMAL(10,2)) / CAST((SELECT SUM(transaction_amount) FROM Fast_Food) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Percentage_Sales
FROM Fast_Food  
GROUP BY transaction_type

SELECT transaction_type, SUM(transaction_amount) AS Total_Sales, CAST(CAST(SUM(transaction_amount) * 100 AS DECIMAL(10,2)) / CAST((SELECT SUM(transaction_amount) FROM Fast_Food) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Percentage_Sales
FROM Fast_Food  
GROUP BY transaction_type

SELECT time_of_sale, CAST(CAST(SUM(transaction_amount) * 100 AS DECIMAL(10,2)) / CAST((SELECT SUM(transaction_amount) FROM Fast_Food) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Percentage_Sales
FROM Fast_Food  
GROUP BY time_of_sale

SELECT time_of_sale, SUM(transaction_amount) AS Total_Sales, CAST(CAST(SUM(transaction_amount) * 100 AS DECIMAL(10,2)) / CAST((SELECT SUM(transaction_amount) FROM Fast_Food) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Percentage_Sales
FROM Fast_Food  
GROUP BY time_of_sale

SELECT item_name, SUM(transaction_amount) AS Total_Revenue FROM Fast_Food
GROUP BY item_name
ORDER BY Total_Revenue DESC

SELECT item_name, SUM(transaction_amount) AS Total_Revenue FROM Fast_Food
GROUP BY item_name
ORDER BY Total_Revenue ASC

SELECT item_name, SUM(quantity) AS Total_Quantity FROM Fast_Food
GROUP BY item_name
ORDER BY Total_Quantity DESC

SELECT item_name, SUM(quantity) AS Total_Quantity FROM Fast_Food
GROUP BY item_name
ORDER BY Total_Quantity ASC

SELECT item_name, COUNT(order_id) AS Total_Orders FROM Fast_Food
GROUP BY item_name
ORDER BY Total_Orders DESC

SELECT item_name, COUNT(order_id) AS Total_Orders FROM Fast_Food
GROUP BY item_name
ORDER BY Total_Orders ASC