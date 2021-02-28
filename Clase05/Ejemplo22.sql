
/*
OBJETIVO
Considerar los registros que no se combinan.
*/

/*
SINTAXIS

	<tabla1>  LEFT [OUTER] JOIN   <tabla2>
	<tabla1>  RIGHT [OUTER] JOIN  <tabla2>
	<tabla1>  FULL [OUTER] JOIN   <tabla2>


*/

-- Ejemplo

select * from rh..ubicacion;
go

select u.ciudad, count(e.idempleado) [Cant. Trabajadores]
from rh..empleado e
join rh..departamento d on e.iddepartamento=d.iddepartamento
join rh..ubicacion u on d.idubicacion=u.idubicacion
group by u.ciudad;
go

/*
También se debe mostrar las ciudades que no tienen trabajadores,
con un valor igual a cero.
*/

select u.ciudad, count(e.idempleado) [Cant. Trabajadores]
from rh..empleado e
join rh..departamento d on e.iddepartamento=d.iddepartamento
right join rh..ubicacion u on d.idubicacion=u.idubicacion
group by u.ciudad;
go

select u.ciudad, count(e.idempleado) [Cant. Trabajadores]
from rh..ubicacion u
left join rh..departamento d on d.idubicacion=u.idubicacion
left join rh..empleado e on e.iddepartamento=d.iddepartamento
group by u.ciudad;
go


WITH 
tv1 as (
	select u.ciudad, count(e.idempleado) [Cant. Trabajadores]
	from rh..ubicacion u
	join rh..departamento d on d.idubicacion=u.idubicacion
	join rh..empleado e on e.iddepartamento=d.iddepartamento
	group by u.ciudad)
SELECT DISTINCT U.ciudad, ISNULL(TV1.[Cant. Trabajadores],0) "TRABAJADORES"
FROM RH..ubicacion U
LEFT JOIN TV1 ON U.ciudad = TV1.ciudad
go






