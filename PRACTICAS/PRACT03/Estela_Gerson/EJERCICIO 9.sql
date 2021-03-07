USE Northwind
GO

-- BASE DE DATOS DE PEDIDOS
select*from Northwind.. Orders
GO

--- Países de envío: Mexico,Spain,Brazil

--- RESULTADO
select*
from Northwind.dbo.Orders
WHERE ShipCountry in ('Mexico','Spain','Brazil');
GO

--- OBSERVACION: Los datos encontrados, son ordenes generadas entre los años 96 y 98