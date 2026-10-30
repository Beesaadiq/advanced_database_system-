USE GreenBasketDB;
GO

BEGIN TRANSACTION;

UPDATE dbo.Products
SET StockQuantity = StockQuantity - 2
WHERE ProductID = 2 AND StockQuantity >= 2;

SELECT StockQuantity AS DuringTransaction
FROM dbo.Products WHERE ProductID = 2;

ROLLBACK TRANSACTION;

SELECT StockQuantity AS AfterRollback
FROM dbo.Products WHERE ProductID = 2;
