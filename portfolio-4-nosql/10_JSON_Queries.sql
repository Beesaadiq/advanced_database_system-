USE GreenBasketDB;
GO

-- Read one value from each document.
SELECT ProductID,
       JSON_VALUE(Details, '$.brand') AS Brand
FROM dbo.ProductDocuments
ORDER BY ProductID;

-- Find the rice document by its brand.
SELECT ProductID, Details
FROM dbo.ProductDocuments
WHERE JSON_VALUE(Details, '$.brand') = N'Farm Fresh';

-- Different documents can have different properties.
SELECT ProductID,
       JSON_VALUE(Details, '$.weightKg') AS WeightKg,
       JSON_VALUE(Details, '$.volumeLitres') AS VolumeLitres
FROM dbo.ProductDocuments
ORDER BY ProductID;

-- Change one property, then undo it for a repeatable lesson.
BEGIN TRANSACTION;
UPDATE dbo.ProductDocuments
SET Details = JSON_MODIFY(Details, '$.weightKg', 50)
WHERE ProductID = 1;

SELECT JSON_VALUE(Details, '$.weightKg') AS TrialWeight
FROM dbo.ProductDocuments WHERE ProductID = 1;
ROLLBACK TRANSACTION;

SELECT JSON_VALUE(Details, '$.weightKg') AS RestoredWeight
FROM dbo.ProductDocuments WHERE ProductID = 1;
