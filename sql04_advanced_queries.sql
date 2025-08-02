-- Running monthly sales trend for a specific drug with a 3-month moving sum
SELECT
  Year, Month,
  SUM(SalesAmount) AS MonthlySales,
  SUM(SalesAmount) OVER (ORDER BY Year, Month ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)
    AS ThreeMonthMovingSum
FROM FactSales f
JOIN DimDate da ON f.DateKey = da.DateKey
WHERE f.DrugID = 1  -- example drug ID
GROUP BY Year, Month
ORDER BY Year, Month;

-- Top category by year using CTE
WITH CategorySales AS (
  SELECT dr.Category, da.Year, SUM(f.SalesAmount) AS TotalSales
  FROM FactSales f
  JOIN DimDrug dr ON f.DrugID = dr.DrugID
  JOIN DimDate da ON f.DateKey = da.DateKey
  GROUP BY dr.Category, da.Year
)
SELECT *
FROM CategorySales cs1
WHERE TotalSales = (
  SELECT MAX(TotalSales)
  FROM CategorySales cs2
  WHERE cs2.Year = cs1.Year
);
