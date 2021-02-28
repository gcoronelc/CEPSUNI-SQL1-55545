
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







