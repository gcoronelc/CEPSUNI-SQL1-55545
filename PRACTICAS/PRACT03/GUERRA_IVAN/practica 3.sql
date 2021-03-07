/*Ejercicio 1: Desarrollar una consulta que permita encontrar todos los empleos que no tienen telefono*/
select * from rh.dbo.empleado
where telefono is null or telefono='';
GO
/*Ejercicio 2: Desarrollar un consultar para encontrar los ingresos totales de cada uno de los empleados*/
SELECT
E.*,
(sueldo + ISNULL(COMISION,0)) [Ingreso Total]
FROM RH.DBO.empleado E;
go
/*Ejercicio 3: Desarrollar una consulta que permita encontrar todos los empleados que no tienen correo institucional
("perudev.com o perudev.pe")*/
select*from rh..empleado
WHERE email NOT LIKE '%perudev.com'and email not like '%perudev.pe';
go
/*Ejercicio 4: Desarrollar una consulta que permita encontrar el tiempo de servicio en meses de cada empleado*/

select E.*, DATEDIFF(MONTH,fecingreso, GETDATE()) as datediff
from RH.dbo.empleado E;
go
5. PROGRAMACION DEL PROFESOR CHUCO BARRERA EN EL PRESENTE MES

select * from edutec..profesor
go

select * from edutec..cursoprogramado
Where idprofesor = 'P011' AND IdCiclo = '2021-02'
go


6. QUE PROFESORES VIVEN EN SMP, EN LOS OLIVOS O EN COMAS

select * from edutec..profesor
where Dirprofesor = 'SMP' OR Dirprofesor = 'Los Olivos' OR  Dirprofesor = 'Comas'
go

7. CURSOS PROGRAMADOS PARA ESTE MES CON MENOS DE 10 MATRICULADOS

select * from edutec..cursoprogramado
where IdCiclo = '2021-02' and Matriculados < 10
go

8. HORARIOS EN QUE HAN SIDO PROGRAMADOS LOS CURSOS JAVA EN EL MES ACTUAL

select * from edutec..curso
go

select * from edutec..cursoprogramado
WHERE (IdCurso >= 'C005' AND IdCurso <= 'C008' or IdCurso = 'C014') AND IdCiclo = '2021-02' 
go

9. QUE PEDIDOS SERÁN LLEVADOS A MÉXICO, ESPAÑA Y BRASIL

select*
from Northwind.dbo.Orders
where ShipCountry = 'Brazil' or ShipCountry='Mexico' or ShipCountry='Spain'
GO

10. QUE CLIENTES RESIDEN EN RIO DE JANEIRO, CARACAS, SAO PAULO Y BUENOS AIRES

select*
from Northwind.dbo.Customers
where City='Buenos Aires' or City='Sao Paulo' or City = 'Caracas' or City='Rio de Janeiro'

11. EN QUE CIUDADES SE TIENEN CLIENTES

select distinct City
from Northwind.dbo.Customers

12. QUE CLIENTES TIENE COMO REPRESENTANTE AL GERENTE DE VENTAS, GERENTE DE MARKETING O AL MISMO DUEÑO

select*
from Northwind.dbo.Customers
where ContactTitle='Owner' or ContactTitle='Sales Manager' or ContactTitle='Marketing Manager'
