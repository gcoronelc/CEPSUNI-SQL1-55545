USE EduTec
GO

-- BASE DE DATOS DE CURSO
select*from EduTec..Curso
GO

---OBSERVACION, LOS CODIGOS DEL CURSO DE JAVA SON:
--- C005 Java- POO, C006-Java - Cliente/Servidor, C007-Java - Web, C008-Java - Frameworks,C014-Java - Web Services

select*from EduTec..CursoProgramado
GO

-- RESULTADO 
select*
from EduTec.dbo.CursoProgramado
WHERE IdCurso in ('C005','C006','C007','C008','C014') and IdCiclo='2021-02';
GO
