-- Campos calculados y operadores aritméticos
/*

	SELECT <columnas>
	FROM <tabla>;
	GO

<columnas>

	*	:	Todas las columnas
	col1, col2, ...
	<expresiones> : Expresiones que involucran calculos.

*/




-- Ejemplo 3
/*
Desarrollar una sentencia SELECT que permita obtener el importe que se obtendría en cada
curso, si se logra vender todas las vacantes por cada curso. Base de datos EDUCA.
*/

SELECT * FROM EDUCA.DBO.CURSO;
GO

SELECT 
	cur_nombre, cur_vacantes, cur_precio,
	cur_vacantes * cur_precio "IMPORTE PROYECTADO"
FROM EDUCA.DBO.CURSO;
GO

-- Ejemplo 4



-- Ejemplo 5

-- De Alexander Gracey para todos:  10:50 AM

SELECT nombre, apellido, sueldo, sueldo*1.2 "Incremento" 	FROM RH.dbo.empleado;
go

-- De Ivan Guerra para todos:  10:52 AM

SELECT * FROM RH.DBO.empleado;
GO

SELECT
	IDEMPLEADO, APELLIDO, SUELDO, 
	SUELDO * 1.2 "INCREMENTO DE SUELDO"
FROM RH.DBO.empleado;
GO












