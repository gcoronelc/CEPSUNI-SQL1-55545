-- INNER JOIN
/*

SELECT .......
FROM <tabla1> AS <alias1>
[INNER] JOIN <tabla2> AS <alias2> ON <condicion1>
[INNER] JOIN <tabla3> AS <alias3> ON <condicion2>
[INNER] JOIN <tabla4> AS <alias4> ON <condicion3>
. . . 
. . .

*/


-- Problema 1
/*
Desarrolle una sentencia SELECT para obtener un listado 
que incluya el nombre del curso con sus respectivos 
nombres de alumnos. 
Base de datos EDUCA.
*/

select C.cur_nombre, A.alu_nombre
from EDUCA..CURSO C
join EDUCA..MATRICULA M on C.cur_id = M.cur_id
join EDUCA..ALUMNO A on M.alu_id = A.alu_id
order by 1;
go


-- Problema 2
select A.alu_nombre,sum(P.pag_importe) "Pagos"from EDUCA.. ALUMNO AJOIN EDUCA.. PAGO P on A.alu_id=P.alu_idgroup by A.alu_nombre;go


-- Problema 3
select C.cur_nombre, sum(P.pag_importe) [Importe total]from EDUCA..CURSO Cjoin EDUCA..pago p on c.cur_id = p.cur_idgroup by cur_nombre;go





