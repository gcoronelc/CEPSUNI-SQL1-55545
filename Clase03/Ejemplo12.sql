--Operadores relacionales


-- Ejemplo 11
/*
Desarrollar una sentencia SELECT que permita averiguar los cursos que a�n no tienen
alumnos matriculados. Base de datos EDUCA.
*/

select * 
from educa.dbo.CURSO
where cur_matriculados = 0;
go


