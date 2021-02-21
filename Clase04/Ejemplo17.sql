-- Manipulación de valores NULL

select 100 + null algo;
go

-- IS [NOT] NULL

SELECT * FROM RH..Empleado;
GO

SELECT * FROM RH..Empleado
WHERE TELEFONO IS NOT NULL;
GO

SELECT * FROM RH..Empleado
WHERE COMISION IS NOT NULL;
GO

SELECT 
	E.*, 
	(sueldo + comision) [INGRESOS TOTALES]
FROM RH..empleado E;
GO


SELECT ISNULL(10,20) [RESULTADO];
GO

SELECT ISNULL(NULL,20) [RESULTADO];
GO


SELECT 
	E.*, 
	(sueldo + ISNULL(comision,0)) [INGRESOS TOTALES]
FROM RH..empleado E;
GO

