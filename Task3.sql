CREATE DATABASE superstore;
USE superstore;

CREATE TABLE sales (
    ShipMode VARCHAR(50),
    Segment VARCHAR(50),
    Country VARCHAR(100),
    City VARCHAR(100),
    StateName VARCHAR(100),
    PostalCode INT,
    Region VARCHAR(50),
    Category VARCHAR(50),
    SubCategory VARCHAR(50),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(5,2),
    Profit DECIMAL(10,2)
);
select * from sales;

SELECT COUNT(*) FROM sales;

SELECT * FROM sales LIMIT 10;

SELECT * FROM sales
WHERE Category = 'Furniture';

SELECT * FROM sales
WHERE Region = 'West';

SELECT City, Sales
FROM sales
ORDER BY Sales DESC
LIMIT 10;

SELECT Category, SUM(Sales) AS TotalSales
FROM sales
GROUP BY Category;

SELECT Region, AVG(Profit) AS AvgProfit
FROM sales
GROUP BY Region;

SELECT COUNT(*) AS TotalOrders
FROM sales;

SELECT Category, SUM(Sales) AS TotalSales
FROM sales
GROUP BY Category
HAVING SUM(Sales) > 200000;

SELECT DISTINCT City
FROM sales
WHERE City LIKE 'F%';

SELECT *
FROM sales
WHERE Profit BETWEEN 50 AND 200;

SELECT SubCategory, SUM(Sales) AS TotalSales
FROM sales
GROUP BY SubCategory
ORDER BY TotalSales DESC
LIMIT 5;

SELECT City, SUM(Profit) AS TotalProfit
FROM sales
GROUP BY City
ORDER BY TotalProfit DESC
LIMIT 5;

