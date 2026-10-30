USE GreenBasketDB;
GO

-- Run after both windows have completed.
UPDATE dbo.Products SET Price = 8000.00 WHERE ProductID = 3;
SELECT ProductID, Price FROM dbo.Products WHERE ProductID = 3;
