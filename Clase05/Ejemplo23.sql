
-- Ejemplo

select * from rh..ubicacion;
go


WITH 
TV1 AS (SELECT COUNT(1) cat_tra FROM EMPLEADO),
TV2 AS (
	select u.ciudad, count(e.idempleado) [Trabajadores]
	from rh..empleado e
	join rh..departamento d on e.iddepartamento=d.iddepartamento
	join rh..ubicacion u on d.idubicacion=u.idubicacion
	group by u.ciudad)
SELECT 
	TV2.ciudad, TV2.Trabajadores, TV1.cat_tra "TOTAL", 
	(TV2.Trabajadores*1.0/TV1.cat_tra*100) PORCENTAJE
FROM TV1 CROSS JOIN TV2;
GO



/*
Ejercicio
-----------------------------------------------------------------------
COD.DEP.      NOM.DEP.         PLANILLA      PORCENTAJE
----------------------------------------------------------------------
*/

WITH 
TV1 AS (SELECT SUM(ISNULL(comision,0)+sueldo) "TOTAL" FROM RH..empleado),
TV2 AS (select E.iddepartamento, SUM(ISNULL(comision,0)+sueldo) "PLANILLA"
		from RH..empleado E
		group by E.iddepartamento)
SELECT 
	TV2.iddepartamento, D.nombre, TV2.PLANILLA,
	ROUND((TV2.PLANILLA/TV1.TOTAL*100.0),12,2) PORCENTAJE
FROM RH..departamento D
JOIN TV2 ON D.iddepartamento = TV2.iddepartamento
CROSS JOIN TV1
go

