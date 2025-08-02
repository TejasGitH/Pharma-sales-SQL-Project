-- Insert sample data into DimDate
INSERT INTO DimDate VALUES (2023010101, '2023-01-01 01:00:00', 2023, 1, 1, 1);
INSERT INTO DimDate VALUES (2023010102, '2023-01-01 02:00:00', 2023, 1, 1, 2);

-- Insert sample data into DimDrug
INSERT INTO DimDrug (DrugName, Category) VALUES ('Aspirin', 'Painkiller');
INSERT INTO DimDrug (DrugName, Category) VALUES ('Lipitor', 'Cholesterol');

-- Insert sample data into DimStore
INSERT INTO DimStore VALUES (1, 'Downtown Pharmacy');
INSERT INTO DimStore VALUES (2, 'Uptown Pharmacy');

-- Insert sample data into FactSales
INSERT INTO FactSales (DateKey, DrugID, StoreID, Quantity, UnitPrice, SalesAmount) VALUES
(2023010101, 1, 1, 100, 5.50, 550.00),
(2023010102, 2, 2, 50, 10.00, 500.00);
