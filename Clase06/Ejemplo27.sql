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

SELECT TOP 5 *FROM EDUCA..MATRICULAWHERE MAT_NOTA<13ORDER BY MAT_NOTA ASC;GO


with 
tv1 as (
	SELECT top 1 mat_nota	FROM EDUCA..MATRICULA	where mat_nota <> 0	ORDER BY MAT_NOTA ASC )select m.*from EDUCA..MATRICULA mjoin tv1 on m.mat_nota = tv1.mat_nota;go-- LA MEJOR SOLUCION
SELECT top 1 with ties *FROM EDUCA..MATRICULAwhere mat_nota <> 0ORDER BY MAT_NOTA ASC gowith 
tv1 as ( SELECT min(mat_nota) mat_nota	FROM EDUCA..MATRICULA	where mat_nota <> 0 )select m.*from EDUCA..MATRICULA mjoin tv1 on m.mat_nota = tv1.mat_nota;GO-- De Alexander Gracey para todos:  09:31 AM
WITH TV1 AS (	SELECT alu_nombre, alu_id	FROM EDUCA.dbo.ALUMNO)SELECT TOP 3 WITH TIES TV1.alu_nombre, D.mat_notaFROM EDUCA.dbo.MATRICULA DJOIN TV1 ON TV1.alu_id = D.alu_idORDER BY D.mat_nota ASCGO