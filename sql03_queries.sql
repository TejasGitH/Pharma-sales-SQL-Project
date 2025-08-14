-- Top 5 bestselling drugs by total sales
select
d.DrugID,d.DrugName,ROUND(SUM(f.SalesAmount),2) as Total_sales,rank() over (order by SUM(f.SalesAmount) DESC) as rank_num
from dimdrug d
join factsales f
on d.DrugID = f.DrugID
group by d.DrugID,d.DrugName
order by Total_sales DESC
limit 5;

-- Sales per category per month
SELECT dr.Category, da.Year, da.Month, ROUND(SUM(f.SalesAmount),2) AS CategorySales
FROM FactSales f
JOIN DimDrug dr ON f.DrugID = dr.DrugID
JOIN DimDate da ON f.DateKey = da.DateKey
GROUP BY dr.Category, da.Year, da.Month
ORDER BY dr.Category, da.Year, da.Month;


