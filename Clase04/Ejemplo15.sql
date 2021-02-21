-- Ejemplo 8
/*
Desarrollar una consulta para consultar los datos de la tabla CURSOPROGRAMADO, pero se
solicita las siguientes columnas:

CODIGO: 

	Columna IDCURSOPROG

CURSO:

	Se debe concatenar las columnas IDCICLO y IDCURSO en el
	siguiente formato: IDCICLO/IDCURSO

VACANTES:

	Debe tener el siguiente formato: AA/BB
	Donde:

		AA : Cantidad de matriculados
		BB : Cantidad de vacantes programadas
*/


select 
	IdCursoProg CODIGO,
	CONCAT(IdCiclo,'/',IdCurso) CURSO,
	CONCAT(Matriculados,'/',(Matriculados + Vacantes)) VACANTES
from edutec..CURSOPROGRAMADO 
order by 1 desc;
go


-- Problema 9
/*
Desarrollar una sentencia SELECT para consultar los empleados del departamento de
contabilidad. Base de datos RH.
*/

select * from rh..departamento;
go

-- Contabilidad: 101

select * from rh.dbo.empleado
where iddepartamento = 101;
go


-- Problema 10
/*
Desarrollar una sentencia SELECT para consultar los empleados que se desempeñan como
gerentes. Base de datos RH.
*/

select * from rh.dbo.cargo;
go

-- Codigos: C01, C02

select * from rh.dbo.empleado
where idcargo = 'C01' OR  idcargo = 'C02';
GO

-- Variante 1

select * from rh.dbo.empleado
where idcargo = 'C01'
UNION
select * from rh.dbo.empleado
where  idcargo = 'C02';
GO

-- Variante 2

select * from rh.dbo.empleado
where idcargo like 'C0[12]';
GO

-- Variante 3

select * from rh.dbo.empleado
where idcargo IN ('C01','C02');
GO


select * from rh.dbo.empleado
where idcargo like 'C0[12]' OR idcargo = 'C12';
GO

-- Problema 11
/*
Desarrollar una sentencia SELECT que permita averiguar los cursos que aún no tienen
alumnos matriculados. Base de datos EDUCA.
*/

select * 
from EDUCA..CURSO
where cur_matriculados = 0;
go


-- Problema 12
/*
Desarrollar una sentencia SELECT para consultar los empleados de contabilidad cuyo sueldo
es mayor a 10,000.00. Base de datos RH.
*/

select*
from rh.dbo.empleado
where iddepartamento= 101 and sueldo>10000.00;
go


-- Problema 13
/*
Desarrollar una sentencia SELECT que permita averiguar los cursos que aún no tienen
profesor. Base de datos EDUCA.
*/



