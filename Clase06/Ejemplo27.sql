-- TOP (expression) [PERCENT] [ WITH TIES ]
/*

Para mostrar solamente las filas que se encuentran al inicio
del resultado.

*/

select top 2 * 
from rh.dbo.empleado
order by sueldo;
go

select top 2 with ties * 
from rh.dbo.empleado
order by sueldo;
go

select top 15 PERCENT * 
from rh.dbo.empleado
order by sueldo;
go

-- Ejercicio 3





-- Ejercicio 4

--De Lesly Liza para todos:  09:27 AM

SELECT TOP 5 *


with 
tv1 as (
	SELECT top 1 mat_nota
SELECT top 1 with ties *
tv1 as ( SELECT min(mat_nota) mat_nota
WITH 