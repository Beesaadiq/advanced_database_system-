USE GreenBasketDB;
GO

CREATE TABLE dbo.Orders
(
    OrderID INT NOT NULL PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    FOREIGN KEY (CustomerID)
        REFERENCES dbo.Customers(CustomerID)
);

INSERT INTO dbo.Orders (OrderID, CustomerID, OrderDate)
VALUES
    (1, 1, '20260901'),
    (2, 2, '20260902'),
    (3, 1, '20260903');

SELECT * FROM dbo.Orders ORDER BY OrderID;
