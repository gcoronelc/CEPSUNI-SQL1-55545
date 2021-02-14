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


-- EJERCICIO 7:
-- De Huayanay, Fabiola para todos:  11:10 AM

SELECT * FROM EduTec..ProfesorGOSELECT IdProfesor,CONCAT(ApeProfesor, NomProfesor) "NOMBRE COMPLETO"FROM EduTec..ProfesorGO

-- Ejercicio 8

select * from edutec.dbo.CursoProgramado;
go

select 
	IdCursoProg,
	'Falta' "Curso",
	'Falta' "Vacantes"
from edutec.dbo.CursoProgramado;
go







