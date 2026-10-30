USE GreenBasketDB;
GO

-- Run in the SAME Window A connection, not a new window.
SELECT Price FROM dbo.Products WHERE ProductID = 3;
COMMIT TRANSACTION;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
