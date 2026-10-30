USE GreenBasketDB;
GO

-- First create the index using script 07.
SET STATISTICS IO ON;
SET STATISTICS TIME ON;

SELECT ProductID, ProductName
FROM dbo.Products
WHERE ProductName = N'Practice product 1500';

SET STATISTICS IO OFF;
SET STATISTICS TIME OFF;
