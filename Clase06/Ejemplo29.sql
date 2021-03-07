-- CONSULTA
/*
	- INSERT
	- UPDATE
	- DELETE
	- SELECT
*/

-- SUBCONSULTA
/*
	Se trata de una sentencia SELECT que se utiliza
	dentro de una consulta.
*/


-- Subconsultas que retornan un valor
/*
	Retornan una fila y una columna.
	Se tratan como un valor escalar.
*/


-- Ejercicio 1
/*
Desarrolle una consulta para averiguar quiénes son los empleados que tienen el menor sueldo. 
Base de datos RH.
*/

select * 
from rh.dbo.empleado
where sueldo = (select min(sueldo) from rh..empleado);
go

select top 1  * 
from rh.dbo.empleado
order by sueldo
go



-- Ejercicio 2
/*
Desarrolle una consulta que muestre las siguientes columnas:
▪ Código del empleado
▪ Nombre del empleado
▪ Sueldo del empleado
▪ Sueldo promedio en la empresa
▪ Diferencia del sueldo del empleado y el sueldo promedio
Base de datos RH.
*/

select 
	idempleado,
	nombre,
	sueldo,
	(select avg(sueldo) from rh..empleado) [sueldo promedio],
	sueldo - (select avg(sueldo) from rh..empleado) [dif.sueldo]
from rh..empleado;
go


with
tv1 as (
		select avg(sueldo) sueldo_prom from rh..empleado
	)
select 
	e.idempleado,
	e.nombre,
	e.sueldo,
	tv1.sueldo_prom,
	sueldo - tv1.sueldo_prom [dif.sueldo]
from rh..empleado e cross join tv1;
go


-- Subconsultas que retornan un conjunto de valores
-- Ejercicio 3. 
/*
Desarrolle una consulta que muestre las personas que tienen el menor sueldo por departamento. 
Base de datos RH.
*/

select iddepartamento, min(sueldo) menor_sueldo
from rh..empleado
group by iddepartamento;
go


select e.* 
from rh..empleado e
join (	select iddepartamento, min(sueldo) menor_sueldo
		from rh..empleado
		group by iddepartamento ) z
on e.iddepartamento = z.iddepartamento
and e.sueldo = z.menor_sueldo;
go


with 
tv1 as (
		select iddepartamento, min(sueldo) menor_sueldo
		from rh..empleado
		group by iddepartamento
	)
select e.* 
from rh..empleado e
join tv1 on e.iddepartamento = tv1.iddepartamento
and e.sueldo = tv1.menor_sueldo;
go


-- Subconsulta correlacionada
-- No se recomienda

select e.* 
from rh..empleado e
where e.sueldo = (select min(sueldo) from rh..empleado z where z.iddepartamento = e.iddepartamento) ;
go


-- operador IN
/*
	En este caso, la sub-consulta debe retornar una columna.

	where <columna> [NOT] IN ( <sub-consulta> )

*/

-- Ejemplo
/*
	Mostrar los empleados que se desempeñan como gerentes.
*/

select * from rh..cargo
where nombre like '%gerente%';

select * from rh.dbo.empleado
where idcargo in (select idcargo from rh..cargo where nombre like '%gerente%');
go


-- Uso de EXISTS y NOT EXISTS

-- Ejercicio 5
-- Desarrolle una consulta que muestre los empleados que laboran en Trujillo. 
-- Base de datos RH.


select * 
from rh..departamento d 
join rh..ubicacion u on d.idubicacion = u.idubicacion
go

select * 
from rh..empleado e
where exists (
		select * 
		from rh..departamento d 
		join rh..ubicacion u on d.idubicacion = u.idubicacion
		where d.iddepartamento = e.iddepartamento
		and u.ciudad like '%Lima%'
	);
go


-- Ejercicio 7. 
-- Crear una tabla de nombre EMP_CONTA con la misma estructura de la tabla empleado, 
-- utilice la sentencia SELECT – INTO. 
-- Base de datos RH

select * 
into rh..emp_conta
from rh..empleado
where idempleado = 'abcdef';
go

select * from rh..emp_conta;
go


-- Ejercicio 8. 
-- Inserte en la tabla EMP_CONTA los empleados de contabilidad, 
-- utilice la sentencia INSERT - SELECT. 
-- Base de datos RH.

INSERT INTO rh..emp_conta
SELECT * FROM RH..empleado
WHERE iddepartamento = 101;
GO

SELECT * FROM rh..emp_conta;
GO


-- vistas

create view dbo.v_1
as
select iddepartamento, min(sueldo) menor_sueldo
from rh..empleado
group by iddepartamento
go


create view dbo.v_2
as
select e.* 
from rh..empleado e
join rh..v_1 on e.iddepartamento = v_1.iddepartamento
and e.sueldo = v_1.menor_sueldo;
go

select * from dbo.v_2;

