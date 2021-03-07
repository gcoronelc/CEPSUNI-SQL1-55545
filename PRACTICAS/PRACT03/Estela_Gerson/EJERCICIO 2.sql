USE RH
GO

select * from RH.. empleado

UPDATE dbo.empleado
SET comision = 0
WHERE comision is NULL;

SELECT
     idempleado,sueldo,comision,
	 sueldo + comision "INGRESOS TOTALES"
FROM RH.DBO.empleado;
GO
