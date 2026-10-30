USE GreenBasketDB;
GO

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
BEGIN TRANSACTION;

SELECT Price FROM dbo.Products WHERE ProductID = 3;
-- Leave this transaction open briefly. Now run Window B.
