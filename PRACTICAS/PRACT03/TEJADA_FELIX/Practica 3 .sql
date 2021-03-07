-- PRACTICA 3: CONSULTAS A UNA TABLA

/*Problema 1*/

/* Desarrollar una consulta que permita encontrar todos los empleados que no tienen 
teléfono. Base de datos: RH */

SELECT *
FROM RH.dbo.empleado
WHERE telefono IS NULL
GO

/*Problema 2*/

/* Desarrollar una consulta para encontrar los ingresos totales de cada uno de los 
empleados. Base de datos: RH */

SELECT idempleado, apellido, nombre, ISNULL(comision,0)+sueldo [Ingresos totales]
FROM RH.dbo.empleado
GO

/*Problema 3*/

/* Desarrollar una consulta para encontrar a todos los empleados que no tienen correo
institucional. El dominio del correo institucional puede ser perudev.com o perudev.pe.
Base de datos: RH */

SELECT *
FROM RH.dbo.empleado
WHERE email NOT LIKE '%perudev%'
GO

/*Problema 4*/
/* Desarrollar una consulta que permita encontrar el tiempo de servicio en meses de 
cada empleado. Base de datos: RH */

SELECT idempleado, apellido, nombre, CONVERT(VARCHAR(50), fecingreso, 103) [F.INGRESO], 
	   CONVERT(VARCHAR(50), GETDATE(), 103) [HOY], CONCAT(DATEDIFF(MONTH, CONVERT(VARCHAR(50), 
	   fecingreso, 103), CONVERT(VARCHAR(50), GETDATE(), 103)), ' meses') [Tiempo de servicio]
FROM RH.dbo.empleado
GO

/*Problema 5*/
/*Se necesita saber la programación del profesor Raúl Chuco en el presente mes. 
Base de datos: Edutec*/
Select*FROM edutec.dbo.Profesor
ORDER BY ApeProfesor ASC
GO


Select*FROM edutec.dbo.CursoProgramado
WHERE IdProfesor = 'P011' AND IdCiclo = '2021-02'
GO

/*Problema 6*/
/*Se necesita saber que profesores viven en SMP, en Los Olivos o en Comas. 
Base de datos: Edutec*/

Select*FROM edutec.dbo.Profesor
WHERE DirProfesor IN ('Comas','SMP','Los Olivos')
GO

/*Problema 7*/
/*Se necesita saber los cursos programados para este mes que tienen menos de 10 matriculados. 
Base de datos: Edutec*/
Select*FROM edutec.dbo.CursoProgramado
Where IdCiclo= '2021-02' and Matriculados < 10
GO

/*Problema 8*/
/*Se necesita saber los horarios en que han sido programados los cursos de Jvaen el mes actual. 
Base de datos: Edutec*/

Select*FROM edutec.dbo.Curso
GO

/*C005,C006,C007,C014*/

Select*FROM edutec.dbo.CursoProgramado
WHERE IdCurso IN ('C005','C006','C007','C014') and 
IdCiclo = '2021-02'
GO

/*Problema 9*/
/*Se necesita una consulta para averiguar los pedidos que serán llevados a México, España y Brasil. 
Base de datos: Northwind*/
select * 
from Northwind.dbo.Orders A
join (
	select CustomerID 
	from Northwind.dbo.Customers 
	where Country in ('Brazil', 'Mexico', 'Spain')) B 
ON A.CustomerID = B.CustomerID
Go

--variante

select * from Northwind..Orders
where CustomerID 
in (
	select CustomerID 
	from Northwind.dbo.Customers 
	where Country in ('Brazil', 'Mexico', 'Spain'));
go


/*Problema 10*/
/*Se necesita una consulta de los clientes de las siguientes ciudades:
.Rio de Janeiro
.Sao Paulo
.Buenos Aires
.Caracas
Base de datos: Northwind*/

select *
	from Northwind.dbo.Customers
	WHERE City IN ('Buenos Aires', 'Sao Paulo', 'Rio de Janeiro', 'Caracas')

--variante

select *
	from Northwind.dbo.Customers
	WHERE City='Buenos Aires' or city='Sao Paulo' or city= 'Rio de Janeiro' or city ='Caracas'


/*Problema 11*/
/*Se necesita un listado de las ciudades donde se tienen clientes. 
Base de datos: Northwind*/

select distinct city
from Northwind..Customers;
go

--variante

select city
from Northwind..Customers
group by city;
go

/*Problema 12*/
/*Se necesita un listado de los clientes, cuyo representante es el Gerente de Ventas, el Gerente de Marketing
o el mismo dueño. Base de datos: Northwind*/

select CustomerID
from Northwind..Customers
where ContactTitle in ('Owner','Marketing Manager','Sales Manager')
