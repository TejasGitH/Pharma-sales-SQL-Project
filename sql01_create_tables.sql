CREATE TABLE DimDate (
  DateKey     INT PRIMARY KEY,
  FullDate    DATETIME NOT NULL,
  Year        INT,
  Month       INT,
  Day         INT,
  Hour        INT
);

CREATE TABLE DimDrug (
  DrugID   SERIAL PRIMARY KEY,
  DrugName VARCHAR(100),
  Category VARCHAR(50)
);

CREATE TABLE DimStore (
  StoreID   INT PRIMARY KEY,
  StoreName VARCHAR(100)
);

CREATE TABLE FactSales (
  SaleID       SERIAL PRIMARY KEY,
  DateKey      INT REFERENCES DimDate(DateKey),
  DrugID       INT REFERENCES DimDrug(DrugID),
  StoreID      INT REFERENCES DimStore(StoreID),
  Quantity     INT,
  UnitPrice    DECIMAL(10,2),
  SalesAmount  DECIMAL(12,2)
);
