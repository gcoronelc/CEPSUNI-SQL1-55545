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


