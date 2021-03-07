-- SELECT - INTO
/*
Para enviar el resultado de una consulta a una tabla.

	SELECT <lista de columnas>
	INTO <nombre de tabla>
	FROM ...
	...

*/

-- Ejercicio 1
/*
Crear una tabla que contenga la siguiente información:
▪ Código de departamento
▪ Nombre del departamento
▪ Importe de planilla
▪ Importe de planilla proyectada con un aumento de 15%
Base de datos a utilizar: RH.
*/

with
tv1 as (
	select iddepartamento, sum(sueldo) planilla
	from rh..empleado
	group by iddepartamento)
select 
	d.iddepartamento codigo,
	d.nombre nombre,
	tv1.planilla planilla,
	tv1.planilla * 1.15 [planilla proyectada]
from rh..departamento d
join tv1 on d.iddepartamento = tv1.iddepartamento;
go

                                                               