USE Northwind
GO

-- BASE DE DATOS DE PEDIDOS
select*from Northwind.. Orders
GO

--- Pa�ses de env�o: Mexico,Spain,Brazil

--- RESULTADO
select*
from Northwind.dbo.Orders
WHERE ShipCountry in ('Mexico','Spain','Brazil');
GO

--- OBSERVACION: Los datos encontrados, son ordenes generadas entre los a�os 96 y 98