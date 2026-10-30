USE GreenBasketDB;
GO

CREATE TABLE dbo.Products
(
    ProductID INT NOT NULL PRIMARY KEY,
    ProductName NVARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL CHECK (Price > 0),
    StockQuantity INT NOT NULL CHECK (StockQuantity >= 0)
);

INSERT INTO dbo.Products
    (ProductID, ProductName, Price, StockQuantity)
VALUES
    (1, N'Rice bag', 25000.00, 20),
    (2, N'Beans bag', 15000.00, 30),
    (3, N'Cooking oil', 8000.00, 40);

SELECT * FROM dbo.Products ORDER BY ProductID;
