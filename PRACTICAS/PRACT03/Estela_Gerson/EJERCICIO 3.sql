USE RH
GO

USE RH
SELECT * FROM RH..EMPLEADO
WHERE (email not like '%@perudev.com%') AND 
	(email not like '%@perudev.pe%');
GO

USE RH
SELECT * FROM RH..EMPLEADO
WHERE (email like '%@perudev.com%') OR 
	(email like '%@perudev.pe%');
GO

USE RH
SELECT * FROM RH..EMPLEADO
WHERE email NOT like '%@perudev.com'
GO