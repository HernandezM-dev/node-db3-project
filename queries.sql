-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT Product.CategoryId, Product.ProductName, Category.CategoryName
FROM [Product]
JOIN Category On Product.CategoryId = Category.Id
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
Select [Order].Id, [Order].ShipName, [Order].OrderDate
From[Order]
Where [Order].OrderDate < '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
Select Product.ProductName, OrderDetail.Quantity, OrderDetail.OrderId, OrderDetail.ProductId
From [OrderDetail]
Join Product on OrderDetail.ProductId = Product.Id
where OrderDetail.OrderId = 10251
order by Product.ProductName asc
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
Select OrderDetail.OrderId, [Customer].CompanyName, Employee.LastName
From[Order]
join OrderDetail on [Order].id = OrderDetail.OrderId
join Employee on [Order].EmployeeId = Employee.Id
join Customer on [Order].CustomerId = Customer.Id