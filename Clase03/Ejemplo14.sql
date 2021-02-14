-- Filtro de filas
/*
	SELECT ...
	FROM ...
	WHERE < condicion >;
	GO

*/

-- Ejemplo 9
/*
Desarrollar una sentencia SELECT para consultar los empleados del departamento de
contabilidad. 
Base de datos RH.
*/

select * from rh.dbo.departamento;
go

-- Código contabilidad: 101

select * 
from rh.dbo.empleado
where iddepartamento = 101;
go

-- Ejemplo 10

-- De Juan Tinco Bailon para todos:  11:34 AM

select * from rh.dbo.cargo;
go

select * 
from RH.dbo.empleado
go

select *
from rh.dbo.empleado
where idcargo = 'C01';
go

-- Complementando

select *
from rh.dbo.empleado
where idcargo = 'C01' or idcargo = 'C02';
go

select *
from rh.dbo.empleado
where idcargo in ('C01','C02');
go

select *
from rh.dbo.empleado
where idcargo like 'C0[12]';
go

select *
from rh.dbo.empleado
where idcargo like 'C0[1-2]';
go


