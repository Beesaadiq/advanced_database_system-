USE GreenBasketDB;
GO

-- 1. Products costing at most NGN 15,000.
SELECT ProductName, Price
FROM dbo.Products
WHERE Price <= 15000.00
ORDER BY Price;

-- 2. Customer name for each order.
SELECT o.OrderID, c.CustomerName, o.OrderDate
FROM dbo.Orders AS o
INNER JOIN dbo.Customers AS c
    ON o.CustomerID = c.CustomerID
ORDER BY o.OrderID;

-- 3. Total amount of each order.
SELECT OrderID, SUM(Quantity * UnitPrice) AS OrderTotal
FROM dbo.OrderItems
GROUP BY OrderID
ORDER BY OrderID;

-- 4. Total sales value by product.
SELECT p.ProductName,
       SUM(i.Quantity * i.UnitPrice) AS SalesAmount
FROM dbo.OrderItems AS i
INNER JOIN dbo.Products AS p ON i.ProductID = p.ProductID
GROUP BY p.ProductID, p.ProductName
ORDER BY SalesAmount DESC;

-- 5. Customers with no orders.
SELECT c.CustomerName
FROM dbo.Customers AS c
LEFT JOIN dbo.Orders AS o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

-- 6. September orders; use a date range.
SELECT OrderID, OrderDate
FROM dbo.Orders
WHERE OrderDate >= '20260901' AND OrderDate < '20261001'
ORDER BY OrderID;
