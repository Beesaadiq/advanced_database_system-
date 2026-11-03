USE GreenBasketDB;
GO

CREATE TABLE dbo.ProductDocuments
(
    ProductID INT NOT NULL PRIMARY KEY,
    Details NVARCHAR(MAX) NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES dbo.Products(ProductID),
    CHECK (ISJSON(Details) = 1)
);

INSERT INTO dbo.ProductDocuments (ProductID, Details)
VALUES
    (1, N'{"brand":"Farm Fresh","weightKg":25}'),
    (3, N'{"brand":"Golden Oil","volumeLitres":5}');

SELECT * FROM dbo.ProductDocuments ORDER BY ProductID;
