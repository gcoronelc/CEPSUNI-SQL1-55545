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

