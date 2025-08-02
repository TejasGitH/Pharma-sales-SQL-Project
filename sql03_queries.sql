-- Top 5 bestselling drugs by total sales
SELECT d.DrugName, SUM(f.SalesAmount) AS TotalSales
FROM FactSales f
JOIN DimDrug d ON f.DrugID = d.DrugID
GROUP BY d.DrugName
ORDER BY TotalSales DESC
LIMIT 5;

-- Sales per category per month
SELECT dr.Category, da.Year, da.Month, SUM(f.SalesAmount) AS CategorySales
FROM FactSales f
JOIN DimDrug dr ON f.DrugID = dr.DrugID
JOIN DimDate da ON f.DateKey = da.DateKey
GROUP BY dr.Category, da.Year, da.Month
ORDER BY dr.Category, da.Year, da.Month;
