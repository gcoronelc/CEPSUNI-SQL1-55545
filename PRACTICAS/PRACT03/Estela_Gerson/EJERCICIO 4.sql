USE RH
GO

USE RH
SELECT * FROM RH..EMPLEADO
ORDER BY fecingreso asc;
go

SELECT 
	idempleado,
	DATEDIFF(MONTH,fecingreso, getdate()) 'Meses'
FROM RH..EMPLEADO;
GO

SELECT * FROM RH..EMPLEADO
ORDER BY idempleado asc;
go