USE GreenBasketDB;
GO

CREATE TABLE dbo.Customers
(
    CustomerID INT NOT NULL PRIMARY KEY,
    CustomerName NVARCHAR(100) NOT NULL,
    Email VARCHAR(150) NOT NULL UNIQUE
);

INSERT INTO dbo.Customers
    (CustomerID, CustomerName, Email)
VALUES
    (1, N'Ada Okafor', 'ada@example.com'),
    (2, N'Bayo Ade', 'bayo@example.com'),
    (3, N'Chidi Obi', 'chidi@example.com');

SELECT * FROM dbo.Customers ORDER BY CustomerID;
