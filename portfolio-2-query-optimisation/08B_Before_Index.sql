USE GreenBasketDB;
GO

-- Run once BEFORE creating the index in PDF 07.
-- Synthetic products are only for this performance exercise.
DECLARE @Number INT = 1000;
WHILE @Number < 3000
BEGIN
    INSERT INTO dbo.Products
        (ProductID, ProductName, Price, StockQuantity)
    VALUES
        (@Number,
         N'Practice product ' + CAST(@Number AS NVARCHAR(10)),
         100.00, 1);
    SET @Number = @Number + 1;
END;
GO

SET STATISTICS IO ON;
SET STATISTICS TIME ON;

SELECT ProductID, ProductName
FROM dbo.Products
WHERE ProductName = N'Practice product 1500';

SET STATISTICS IO OFF;
SET STATISTICS TIME OFF;
