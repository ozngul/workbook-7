USE northwind;
INSERT INTO Suppliers (CompanyName, ContactName, ContactTitle, Address, City, Country, Phone)
VALUES ('Code Snacks Co.', 'Alice Techson', 'Sales Manager', '123 Silicon St', 'San Francisco', 'USA', '555-123-4567');

INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES ('Crunchy Bits', 30, 1, '10 packs per box', 12.00, 50, 0, 10, 0);

SELECT p.ProductID, p.ProductName, s.CompanyName AS Supplier
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID;

UPDATE Products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductName = 'Crunchy Bits';

SELECT p.ProductName, p.UnitPrice
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE s.CompanyName = 'Code Snacks Co.';

DELETE FROM Products
WHERE ProductName = 'Crunchy Bits';

DELETE FROM Suppliers
WHERE CompanyName = 'Code Snacks Co.';

SELECT * FROM Products;
