USE EduTec
GO

--- BASE DE DATOS CURSO PROGRAMADO
select*from EduTec..CursoProgramado
GO

--- ORDENAMOS POR NUMERO DE MATRICULAMOS

SELECT * FROM EduTec..CursoProgramado
ORDER BY Matriculados asc;
go

---PRUEBA
select*
from EduTec.dbo.CursoProgramado
WHERE Matriculados>10 and IdCiclo='2021-02'
ORDER BY Matriculados asc;
go

---SOLUCION (EN ESTE MES HAY DE 10 A MAS MATRICULADOS POR CURSO)
select*
from EduTec.dbo.CursoProgramado
WHERE Matriculados<10 and IdCiclo='2021-02'
go