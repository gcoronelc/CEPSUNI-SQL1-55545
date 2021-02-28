
-- WITH
-- COMMON TABLE EXPRESSION (CTE)

/*

WITH
TV1 AS ( SELECT ... ),
TV2 AS ( SELECT ... ),
TV3 AS ( SELECT ... )
SELECT ... 
FROM  ... ;
GO

*/


-- Ejemplo
/*
Se necesita saber la cantidad de estudiantes
matriculados por curso en el ciclo 201-02.

*/

select C.IdCurso, C.NomCurso, sum(CP.Matriculados) matriculados
from EduTec..Curso AS C
join edutec..CursoProgramado AS CP on c.IdCurso = CP.IdCurso
where idciclo = '2021-02'
group by C.IdCurso, C.NomCurso
order by 1
GO

WITH 
TV1 AS (
	select IdCurso, sum(Matriculados) matriculados
	from edutec..CursoProgramado
	where idciclo = '2021-02'
	group by IdCurso )
SELECT TV1.IdCurso, C.NomCurso, TV1.matriculados
FROM EduTec..Curso C
JOIN TV1 ON C.IdCurso = TV1.IdCurso 
ORDER BY 1;
GO



