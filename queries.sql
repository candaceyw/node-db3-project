-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT p."ProductName", c."CategoryName" 
FROM "Product" AS p
LEFT JOIN "Category" AS c on p."Id" = c."Id"

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o."Id",
s."CompanyName"
FROM "Order" AS o
LEFT JOIN "Shipper" AS s
ON s."Id" = o."ShipVia"
WHERE o."OrderDate" < date('2012-08-09');

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT od."OrderId",
	p."ProductName",
	od."Quantity"		
FROM "OrderDetail" AS od
LEFT JOIN "Product" AS p
ON p."Id" = od."ProductId"
WHERE od."OrderId" = 10251
ORDER BY "ProductName";

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
 SELECT o."Id" "OrderId",
		c."CompanyName" "CustomerCompanyName",
		e."LastName" "EmployLastName"
FROM "Order" AS o
JOIN "Customer" AS c ON c."Id" = o."CustomerId"
JOIN "Employee" AS e ON o."EmployeeId";
