-- View for monthly sales by category
CREATE VIEW vw_MonthlyCategorySales AS
SELECT dr.Category, da.Year, da.Month, SUM(f.SalesAmount) AS TotalSales
FROM FactSales f
JOIN DimDrug dr ON f.DrugID = dr.DrugID
JOIN DimDate da ON f.DateKey = da.DateKey
GROUP BY dr.Category, da.Year, da.Month;

-- Index to speed up date range queries
CREATE INDEX idx_factsales_datekey ON FactSales(DateKey);
