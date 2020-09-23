-- -   Display the ProductName and CategoryName for all products in the database. Returns 77 records.
SELECT p.ProductName, c.CategoryName
from Product as p
join Category as c
    on p.CategoryId = c.Id

-- -   Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Returns 429 records.
SELECT o.Id, s.CompanyName
FROM 'Order' AS o
JOIN 'Shipper' AS s
    on o.ShipVia = s.Id
    WHERE o.OrderDate < '2012-08-09';



-- -   Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Returns 3 records.
SELECT p.ProductName, o.Quantity
FROM 'OrderDetail' AS o
JOIN 'Product' as p
    ON o.ProductId = p.Id
    WHERE o.OrderId = '10251'
    ORDER BY p.ProductName;

-- -   Display the OrderID, customer's Company Name and the employee's Last Name for every order. All columns should be labeled clearly. Returns 16,789 records.
SELECT o.Id AS 'Order ID', c.CompanyName AS 'Ordering Company', e.LastName AS 'Last Name (Sales Rep)'
FROM 'Order' as o
JOIN 'Customer' as c
    ON o.CustomerId = c.Id
JOIN 'Employee' as e
    ON o.EmployeeId = e.Id;