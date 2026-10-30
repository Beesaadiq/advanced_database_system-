USE GreenBasketDB;
GO

CREATE TABLE dbo.OrderItems
(
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    UnitPrice DECIMAL(10,2) NOT NULL CHECK (UnitPrice > 0),
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES dbo.Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES dbo.Products(ProductID)
);

INSERT INTO dbo.OrderItems
    (OrderID, ProductID, Quantity, UnitPrice)
VALUES
    (1, 1, 2, 25000.00),
    (1, 3, 1, 8000.00),
    (2, 2, 3, 15000.00),
    (3, 3, 2, 8000.00);

SELECT * FROM dbo.OrderItems ORDER BY OrderID, ProductID;
