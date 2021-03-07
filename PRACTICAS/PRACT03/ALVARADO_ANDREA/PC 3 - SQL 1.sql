---------------------------------------------------------------------------------
-- PROBLEMA 1
---------------------------------------------------------------------------------
-- Desarrollar una consulta que permita encontrar todos los empleados que no tienen teléfono. BD RH 
SELECT * 
FROM RH.dbo.empleado
WHERE telefono is NULL 
GO

---------------------------------------------------------------------------------
-- PROBLEMA 2
---------------------------------------------------------------------------------
--Desarrollar una consulta para encontrar los ingresos totales de cada uno de los empleados. BD RH
SELECT *, sueldo + isNULL ( comision,0) [ingresos totales] 
FROM RH.dbo.empleado
GO

---------------------------------------------------------------------------------
-- PROBLEMA 3
---------------------------------------------------------------------------------
--Desarrollar una consulta para encontrar a todos los empleados que no tienen correo institucional. 
--El dominio del correo institucional puede ser perudev.com o perudev.pe. BD RH
SELECT *
FROM RH.dbo.empleado
WHERE email not like '%perudev%'
GO

---------------------------------------------------------------------------------
-- PROBLEMA 4
---------------------------------------------------------------------------------
--Desarrollar una consulta que permita encontrar el tiempo de servicio en meses de cada empleado. BD RH.
SELECT *, CONVERT (VARCHAR (50), fecingreso, 103) [F. INGRESO], 
CONVERT (VARCHAR (50), GETDATE (), 103) [HOY], DATEDIFF (MONTH, CONVERT (VARCHAR (50), fecingreso, 103), 
CONVERT (VARCHAR (50), GETDATE (), 103)) [Tiempo de servicio (meses)]
FROM RH.dbo.empleado
GO

---------------------------------------------------------------------------------
-- PROBLEMA 5
---------------------------------------------------------------------------------
--Se necesita saber la programación del profesor Raúl Chuco en el presente mes. BD EDUTEC.
SELECT *
FROM edutec.dbo.Profesor
ORDER BY ApeProfesor ASC
GO
SELECT *
FROM edutec.dbo.CursoProgramado
WHERE IdProfesor = 'P011' AND IdCiclo = '2021-01'
GO

---------------------------------------------------------------------------------
-- PROBLEMA 6
---------------------------------------------------------------------------------
--Se necesita saber que profesores viven en SMP, en Los Olivos o en Comas. BD EDUTEC.
SELECT *
FROM edutec.dbo.Profesor
WHERE DirProfesor IN ('Comas','SMP','Los Olivos')
ORDER BY DirProfesor ASC
GO

---------------------------------------------------------------------------------
-- PROBLEMA 7
---------------------------------------------------------------------------------
--Se necesita saber los cursos programados para este mes que tienen menos de 10 matriculados. BD EDUTEC.--
SELECT *
FROM edutec.dbo.CursoProgramado
WHERE IdCiclo= '2021-01' and Matriculados < 10
GO

---------------------------------------------------------------------------------
-- PROBLEMA 8
---------------------------------------------------------------------------------
--Se necesita saber los horarios en que han sido programados los cursos de Java en el mes actual. BD EDUTEC
SELECT *
FROM edutec.dbo.Curso
GO
SELECT *
FROM edutec.dbo.CursoProgramado
WHERE IdCurso IN ('C005','C006','C007','C008','C014') and 
IdCiclo = '2021-02'
GO

---------------------------------------------------------------------------------
-- PROBLEMA 9
---------------------------------------------------------------------------------
--Se necesita una consulta para averiguar los pedidos que serán llevados a México, España y Brasil. BD Northwind.

select * from Northwind..Orders
where CustomerID 
in (
	select CustomerID 
	from Northwind.dbo.Customers 
	where Country in ('Brazil', 'Mexico', 'Spain'));
go


---------------------------------------------------------------------------------
-- PROBLEMA 10
---------------------------------------------------------------------------------
--Se necesita una consulta de los clientes de las siguientes ciudades: Rio de Janeiro, Sao Paulo, Buenos Aires, Caracas. BD Northwind

select *
	from Northwind.dbo.Customers
	WHERE City='Buenos Aires' or city='Sao Paulo' or city= 'Rio de Janeiro' or city ='Caracas'


---------------------------------------------------------------------------------
-- PROBLEMA 11
---------------------------------------------------------------------------------
--Se necesita un listado de las ciudades donde se tienen clientes. BD Northwind.
select distinct city
from Northwind..Customers;
go


---------------------------------------------------------------------------------
-- PROBLEMA 12
---------------------------------------------------------------------------------
--Se necesita un listado de los clientes, cuyo representante es el Gerente de Ventas, el Gerente de Marketing o el mismo dueño.
--BD Northwind.
select CustomerID, ContactTitle
from Northwind.dbo.Customers
where ContactTitle in ('Owner','Marketing Manager','Sales Manager')
GO