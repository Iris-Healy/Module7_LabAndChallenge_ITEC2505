USE Northwind;

--Problem 1
SELECT ProductName, UnitPrice, UnitsInStock
FROM Products;

--Problem 2
SELECT ProductName, UnitsInStock
FROM Products
WHERE UnitsInStock = 0;

--Problem 3
SELECT ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice ASC

--Problem 4
SELECT ProductName
FROM Products
WHERE ProductName LIKE '%Sir Rodney''s%'

--Problem 5
SELECT ProductID, ProductName
FROM Products
WHERE SupplierID = 20
ORDER BY ProductName ASC;

--Problem 6
SELECT ProductID, ProductName
FROM Products
WHERE UnitsOnOrder = 0
ORDER BY ProductID ASC;

--Problem 7
SELECT o.OrderID,
       s.CompanyName,
       e.FirstName + e.LastName AS EmployeeName
FROM Employees e
JOIN Orders o
    ON e.EmployeeID = o.EmployeeID
JOIN Shippers s
    ON o.ShipVia = s.ShipperID
WHERE LastName = 'Leverling' AND FirstName = 'Janet'

--Problem 8
INSERT INTO Products (ProductName, UnitPrice, SupplierID, CategoryID)
VALUES ('Basil Fried Rice', $4.55, 26, 5)

--Problem 9
SELECT *
FROM Products
WHERE ProductName = 'Basil Fried Rice';

--Problem 10
SET IDENTITY_INSERT Suppliers ON;

INSERT INTO Suppliers (SupplierID, CompanyName, ContactName, ContactTitle, Address, City)
VALUES (30, 'MCTC', 'Iris Healy', 'Manager', '123 Sesame Street', 'Saint Paul')

SET IDENTITY_INSERT Suppliers OFF;

--Problem 11
SELECT * 
FROM Suppliers
WHERE SupplierID = 30;

--Problem 12
UPDATE Products
SET UnitPrice = $9.99
WHERE ProductName = 'Basil Fried Rice';

SELECT *
FROM Products
WHERE ProductName = 'Basil Fried Rice';

--Problem 13
INSERT INTO Categories (CategoryName, Description)
VALUES ('Ice Cream', 'Frosty desserts');

SELECT * 
FROM Categories
WHERE CategoryName = 'Ice Cream';

--Problem 14
DELETE FROM Categories
WHERE CategoryName = 'Ice Cream';

SELECT * 
FROM Categories;

