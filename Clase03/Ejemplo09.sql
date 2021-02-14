-- SELECCION DE COLUMNAS
/*

	SELECT <columnas>
	FROM <tabla>;
	GO

<columnas>

	*	:	Todas las columnas
	col1, col2, ...

*/

-- Ejemplo 1
/*
Desarrolle una sentencia SELECT para consultar el nombre, apellido y correo de los
empleados de la base de datos RH.
*/

SELECT nombre, apellido, email
FROM RH.dbo.empleado;
GO

-- Ejemplo 2
-- De Huayanay, Fabiola para todos:  10:27 AM

SELECT cur_nombre, cur_vacantes, cur_precio
FROM EDUCA.dbo.CURSO;
GO



