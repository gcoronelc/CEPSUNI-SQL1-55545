-- Operadores LIKE, BETWEEN, IN
/*
LIKE:

	<columna> [NOT] LIKE '<patron>'

	Comodines: _ (caracter), % (cadena)

*/

select * from rh..empleado 
where nombre not like 'G%';
go

select * from rh..empleado 
where nombre like '_A%';
go

select * from rh..empleado 
where nombre like '%O';
go

select * from rh..empleado 
where idempleado like 'E001%';
go

/*
BETWEEN:

	<columna> [NOT] BETWEEN <expr1> AND <expr2>

*/

select * from rh..empleado 
order by nombre;
go

select * from rh..empleado 
where LEFT(nombre,1) between 'J' and 'O'
order by nombre;
go


select * from edutec.dbo.Matricula
where YEAR(fecMatricula) = 2021 and MONTH(fecMatricula) = 2
order by FecMatricula;
go

select * from edutec.dbo.Matricula
where fecMatricula BETWEEN '20210201' AND '20210215'
order by FecMatricula;
go

-- FecMatricula => [ 01/02/2021, 15/02/2021 ]

select * 
from edutec.dbo.Matricula
where fecMatricula >= '20210201' AND fecMatricula < '20210216'
order by FecMatricula;
go

select top 20 with ties * 
from edutec.dbo.Matricula
where fecMatricula >= '20210201' AND fecMatricula < '20210216'
order by FecMatricula;
go

-- Pregunta de Fernando Arca

WITH 
CE1 AS (
	select top 20 * 
	from edutec.dbo.Matricula
	where fecMatricula >= '20210201' AND fecMatricula < '20210216'
	order by Promedio desc )
SELECT * FROM CE1 
ORDER BY IdAlumno
go

SELECT * 
FROM (
	select top 20 * 
	from edutec.dbo.Matricula
	where fecMatricula >= '20210201' AND fecMatricula < '20210216'
	order by Promedio desc
) CE1 
ORDER BY IdAlumno;
go


/*
IN:

	<columna> [NOT] IN ( <elem1>, <elem2>, ...)

	<columna> [NOT] IN ( <SELECT ... > )

*/

SELECT * 
FROM edutec.dbo.Alumno
WHERE IdAlumno IN (
	SELECT IdAlumno
	FROM (
		select top 20 * 
		from edutec.dbo.Matricula
		where fecMatricula >= '20210201' AND fecMatricula < '20210216'
		order by Promedio desc
	) CE1 )
ORDER BY IdAlumno;
go


SELECT * 
FROM edutec.dbo.Alumno A
JOIN (
	select top 20 * 
		from edutec.dbo.Matricula
		where fecMatricula >= '20210201' AND fecMatricula < '20210216'
		order by Promedio desc ) CE1 
ON A.idalumno = ce1.idalumno;
go

