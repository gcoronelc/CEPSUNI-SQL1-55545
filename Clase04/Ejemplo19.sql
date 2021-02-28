-- FUNCIONES AGREGADAS
/*
	- COUNT
	- SUM
	- AVG
	- MAX
	- MIN
	- STDEV
	- STDEVP
	- VAR
	- VARP
*/


select 
	sum(sueldo) [PLANIILA SUELDO],
	sum(sueldo + ISNULL(comision,0)) [PLANIILA CON COMISION]
from rh..empleado;
go

select * from rh..departamento;
go

select 
	sum(case when iddepartamento=100 then sueldo else 0 end) DEP100,
	sum(case when iddepartamento=101 then sueldo else 0 end) DEP101,
	sum(case when iddepartamento=102 then sueldo else 0 end) DEP102,
	sum(case when iddepartamento=103 then sueldo else 0 end) DEP103,
	sum(case when iddepartamento=104 then sueldo else 0 end) DEP104,
	sum(case when iddepartamento=105 then sueldo else 0 end) DEP105,
	sum(sueldo) [PLANIILA]
from rh..empleado;
go



select 
	MAX(sueldo) [MAYOR SUELDO],
	MIN(sueldo) [MENOR SUELDO]
from rh..empleado;
go


SELECT * FROM RH..empleado
WHERE sueldo = (select max(sueldo) from rh..empleado);
go

SELECT * FROM RH..empleado
WHERE sueldo = (select min(sueldo) from rh..empleado);
go


-- GROUP BY

SELECT 
	iddepartamento,
	count(1) empleados,
	sum(sueldo) planilla
FROM RH..EMPLEADO
GROUP BY iddepartamento;
go


-- HAVING

SELECT 
	iddepartamento,
	count(1) empleados,
	sum(sueldo) planilla
FROM RH..EMPLEADO
GROUP BY iddepartamento
HAVING count(1) >= 5;
go




