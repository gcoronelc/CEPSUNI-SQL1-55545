USE Northwind
GO

--- BASE DE DATOS CLIENTES
select*from Northwind.. Customers
GO

-- SOLUCION
select*
from Northwind.dbo.Customers
WHERE City in ('Rio de Janeiro','Sao Paulo','Buenos Aires','Caracas');
GO
