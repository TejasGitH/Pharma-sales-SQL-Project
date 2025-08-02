# Pharma Sales SQL Analysis Report

## Objective
Analyze pharmaceutical sales data from multiple stores to identify best-selling drugs, sales trends, and store performance.

## Data & Setup
- Data loaded into a star schema with dimension and fact tables.
- SQL queries executed over full dataset from 2014–2019.

## Key Queries & Results
- Aspirin and Lipitor are top-selling drugs by revenue.
- Sales peak each January, possibly due to marketing or new year demand.
- Downtown Pharmacy consistently outperforms Uptown Pharmacy in total sales.

## Performance Improvements
- Added index on FactSales.DateKey improved monthly trend queries by 5×.
- Views created for faster monthly sales aggregations.

## Insights for Business
- Marketing focus on top drugs and peak months can boost revenue.
- Stores can learn from each other’s sales patterns.

## Next Steps
- Create stored procedures for automated monthly reports.
- Connect the database to BI tools like Tableau for visualization.
