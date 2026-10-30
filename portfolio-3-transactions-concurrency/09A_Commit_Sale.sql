USE GreenBasketDB;
GO

-- Run once, after PDF 08 is finished.
SET XACT_ABORT ON;
BEGIN TRANSACTION;

UPDATE dbo.Products
SET StockQuantity = StockQuantity - 1
WHERE ProductID = 1 AND StockQuantity >= 1;

IF @@ROWCOUNT = 1
BEGIN
    INSERT INTO dbo.Orders (OrderID, CustomerID, OrderDate)
    VALUES (4, 1, '20260904');

    INSERT INTO dbo.OrderItems
        (OrderID, ProductID, Quantity, UnitPrice)
    SELECT 4, ProductID, 1, Price
    FROM dbo.Products
    WHERE ProductID = 1;

    COMMIT TRANSACTION;
    PRINT 'Sale saved.';
END
ELSE
BEGIN
    ROLLBACK TRANSACTION;
    PRINT 'Sale not saved: product missing or insufficient stock.';
END;
GO

SELECT ProductID, StockQuantity
FROM dbo.Products WHERE ProductID = 1;
SELECT * FROM dbo.Orders WHERE OrderID = 4;
SELECT * FROM dbo.OrderItems WHERE OrderID = 4;
