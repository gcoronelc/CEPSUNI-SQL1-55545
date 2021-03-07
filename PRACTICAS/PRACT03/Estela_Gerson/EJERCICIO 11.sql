USE Northwind
GO

--- BASE DE DATOS CLIENTES 
select*from Northwind.. Customers
GO

-- RESULTADO
select*from Northwind.dbo.[Customer and Suppliers by City]
where Relationship = 'Customers';
GO

select*from Northwind.dbo.[Customer and Suppliers by City]