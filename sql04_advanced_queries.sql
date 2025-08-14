-- Running monthly sales trend for a specific drug with a 3-month moving sum
--FIRST MAKE A CTE OF MONTHLY SALES, AS you can’t SUM(SalesAmount) and then immediately
--use it in another SUM() OVER in the same SELECT without first storing the aggregated result somewhere.
WITH MonthlyData AS (
  SELECT
    Year,
    Month,
    ROUND(SUM(SalesAmount),2) AS MonthlySales
  FROM FactSales f
  JOIN DimDate da ON f.DateKey = da.DateKey
  WHERE f.DrugID = 1 --FOR EXAMPLE,You can use 2,3,4 too
  GROUP BY Year, Month
)
SELECT
Year,
Month,
MonthlySales,
ROUND(SUM(MonthlySales) OVER (ORDER BY Year,Month ROWS between 2 preceding and current row),2) as ThreeMonthMovingSum
FROM MonthlyData
ORDER BY Year,Month;

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

