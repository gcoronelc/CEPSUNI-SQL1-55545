-- Operadores lógicos
/*

AND, OR, NOT

*/


-- Ejemplo 12
/*
Desarrollar una sentencia SELECT para consultar los empleados de contabilidad cuyo sueldo
es mayor a 10,000.00. Base de datos RH.
*/

select * 
from rh.dbo.empleado
where iddepartamento = 101 and sueldo > 10000.00;
go


-- Ejemplo 13
/*
Desarrollar una sentencia SELECT que permita averiguar los cursos que aún no tienen
profesor. Base de datos EDUCA.
*/

update educa.dbo.curso 
set cur_profesor = ''
where cur_id = 6;

select * 
from educa.dbo.CURSO
where cur_profesor is null or cur_profesor = '';
go

