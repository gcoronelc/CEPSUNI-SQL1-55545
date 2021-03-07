USE EduTec
GO

select*from EduTec..CursoProgramado
GO

SELECT * FROM EduTec..CursoProgramado
ORDER BY IdCiclo desc;
go

select*from EduTec.. Profesor
Where NomProfesor like 'Raul%';
GO

---OBSERVACION
---CODIGO DEL PROFESOR RAUL CHUCO BARRERA - P011

select*from EduTec..CursoProgramado
WHERE IdProfesor= 'P011';
go

---PRUEBA DE FECHAS
select*
from EduTec.dbo.CursoProgramado
WHERE IdProfesor= 'P011' AND IdCiclo= '2021-04';
go

---SOLUCION (PARA ESTA FECHA EL PROFESOR NO TIENE CURSOS PROGRAMADOS)
select*
from EduTec.dbo.CursoProgramado
WHERE IdProfesor= 'P011' AND IdCiclo= '2021-02';
go