USE GreenBasketDB;
GO

-- Run after saving the before/after evidence.
DELETE FROM dbo.Products
WHERE ProductID >= 1000 AND ProductID < 3000
  AND ProductName = N'Practice product '
      + CAST(ProductID AS NVARCHAR(10));
