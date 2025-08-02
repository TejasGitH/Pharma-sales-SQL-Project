# Pharma Sales SQL Analysis Project

This project demonstrates SQL data modeling and analysis on pharmaceutical sales data from 2014-2019.

## Dataset
- Sample pharma sales data including columns like DateTime, Drug, Category, Quantity, UnitPrice, Sales, StoreID.
- Source: Kaggle [Pharma Sales Data](https://www.kaggle.com/datasets/milanzdravkovic/pharma-sales-data)

## Project Highlights
- Star schema design with dimension and fact tables
- Core queries: filtering, joins, aggregation, group by, having, subqueries
- Advanced queries: window functions, CTEs, views, indexes
- Performance tuning with indexes

## How to Use
1. Create database and tables by running SQL scripts in `sql/01_create_tables.sql`
2. Insert sample data with `sql/02_insert_data.sql`
3. Explore data with queries in `sql/03_queries.sql` and `sql/04_advanced_queries.sql`
4. Utilize views and indexes defined in `sql/05_views_and_indexes.sql`

## ER Diagram
![ER Diagram](images/er_diagram.png)

## Key Business Insights
- Top-selling drugs identified
- Sales trends over months and years highlighted
- Stores contributing most to revenue found
