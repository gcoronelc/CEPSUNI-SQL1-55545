-- Operadores de concatenación
/*

	CONCAT( <cadena1>, <cadena2>, . . . )

	<cadena1> + <cadena2> + . . .

*/

-- Ejemplo 6
/*
Desarrollar una sentencia SELECT para consultar el nombre y apellido de los empleados en
una sola columna. Base de datos RH.
*/

SELECT * FROM RH..empleado;
GO

SELECT idempleado, CONCAT(apellido, nombre) "NOMBRE COMPLETO"
FROM RH..empleado;
GO







