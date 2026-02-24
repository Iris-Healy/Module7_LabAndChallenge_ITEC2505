USE Northwind;

SELECT * FROM Shippers;

SELECT TOP 5 ContactName, Country, Phone
FROM Customers
ORDER BY Country, ContactName;

SELECT CustomerID, OrderDate, ShipCity
FROM Orders
WHERE CustomerID = 'ALFKI';

SELECT c.CompanyName, o.OrderDate
FROM Customers AS c
JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
WHERE c.CompanyName = 'QUICK-Stop';

INSERT INTO Customers (CustomerID, ContactName, CompanyName, Country)
VALUES ('ALICE', 'Alice Johnson', 'Wonderful Widgets', 'USA');

SELECT *
FROM Customers
WHERE CustomerID = 'ALICE';

UPDATE Customers 
SET ContactName = 'Maria Anders'
WHERE CustomerID = 'ALFKI';

SELECT CustomerID, ContactName
FROM Customers
WHERE CustomerID = 'ALFKI'

DELETE FROM Orders
WHERE OrderID = 10248;