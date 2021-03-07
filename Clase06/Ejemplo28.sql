-- DISTINCT

select distinct ciudad 
from rh..ubicacion;


-- SELECT - CASE

SELECT RIGHT('123456',2);
GO

SELECT 
	IdCurso,
	SUM(CASE RIGHT(idciclo,2)  WHEN '01' THEN Matriculados * PreCursoProg ELSE 0 END) "ENE",
	SUM(CASE RIGHT(idciclo,2)  WHEN '02' THEN Matriculados * PreCursoProg ELSE 0 END) "FEB",
	SUM(CASE RIGHT(idciclo,2)  WHEN '03' THEN Matriculados * PreCursoProg ELSE 0 END) "MAR",
	SUM(CASE RIGHT(idciclo,2)  WHEN '04' THEN Matriculados * PreCursoProg ELSE 0 END) "ABR",
	SUM(CASE RIGHT(idciclo,2)  WHEN '05' THEN Matriculados * PreCursoProg ELSE 0 END) "MAY",
	SUM(CASE RIGHT(idciclo,2)  WHEN '06' THEN Matriculados * PreCursoProg ELSE 0 END) "JUN",
	SUM(CASE RIGHT(idciclo,2)  WHEN '07' THEN Matriculados * PreCursoProg ELSE 0 END) "JUL",
	SUM(CASE RIGHT(idciclo,2)  WHEN '08' THEN Matriculados * PreCursoProg ELSE 0 END) "AGO",
	SUM(CASE RIGHT(idciclo,2)  WHEN '09' THEN Matriculados * PreCursoProg ELSE 0 END) "SET",
	SUM(CASE RIGHT(idciclo,2)  WHEN '10' THEN Matriculados * PreCursoProg ELSE 0 END) "OCT",
	SUM(CASE RIGHT(idciclo,2)  WHEN '11' THEN Matriculados * PreCursoProg ELSE 0 END) "NOV",
	SUM(CASE RIGHT(idciclo,2)  WHEN '12' THEN Matriculados * PreCursoProg ELSE 0 END) "DIC",
	SUM(Matriculados * PreCursoProg) "TOTAL"
FROM EDUTEC..CursoProgramado
WHERE IdCiclo LIKE '2020%'
GROUP BY IdCurso;
GO