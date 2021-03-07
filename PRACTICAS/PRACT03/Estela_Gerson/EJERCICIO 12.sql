USE Northwind
GO

--- BASE DE DATOS CLIENTES
select*from Northwind.. Customers
GO


--- RESULTADO
SELECT*FROM Northwind.DBO.Customers
WHERE ContactTitle in ('Owner', 'Marketing Manager', 'Sales Manager');
GO