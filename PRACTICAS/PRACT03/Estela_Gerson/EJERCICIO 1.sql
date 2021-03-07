USE RH
GO

select * from RH..empleado

select*
from rh.dbo.empleado
where telefono is NULL or telefono = ' '
go