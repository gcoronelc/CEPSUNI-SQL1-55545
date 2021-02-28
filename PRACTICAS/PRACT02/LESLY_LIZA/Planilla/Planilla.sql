
use SF
GO

-- Eliminar Tabla

DROP TABLE SF.dbo.Planilla

-- Crear Tabla con restricciones

CREATE TABLE Planilla  ( 
	Id_Planilla          int  NOT NULL IDENTITY	(2001,1),
	Id_area_de_trabajo   int  NOT NULL ,
	Periodo_de_Planilla  varchar(20)  NOT NULL ,
	Inicio_de_planilla   datetime  NOT NULL ,
	Fin_de_planilla      datetime  NOT NULL ,
	CONSTRAINT pk_planilla PRIMARY KEY(Id_Planilla),
	CONSTRAINT fk_planilla_idareadetrabajo
		FOREIGN KEY(Id_area_de_trabajo) 
		REFERENCES dbo.areadetrabajo(Id_area_de_trabajo)
)
GO

-- Formato Fecha

SET DATEFORMAT dmy

-- Insertar Datos

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7001,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7002,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7003,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7004,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7005,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7006,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7007,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7008,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7009,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7010,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7011,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7012,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7013,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7014,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7015,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7016,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7017,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7018,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7019,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7020,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7021,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7022,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7023,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7024,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7025,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7026,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7027,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7028,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7029,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7030,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7001,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7002,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7003,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7004,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7005,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7006,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7007,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7008,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7009,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7010,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7011,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7012,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7013,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7014,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7015,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7016,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7017,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7018,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7019,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7020,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7021,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7022,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7023,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7024,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7025,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7026,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7027,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7028,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7029,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7030,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7001,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7002,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7003,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7004,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7005,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7006,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7007,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7008,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7009,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7010,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7011,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7012,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7013,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7014,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7015,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7016,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7017,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7018,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7019,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7020,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7021,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7022,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7023,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7024,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7025,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7026,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7027,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7028,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7029,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7030,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7001,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7002,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7003,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7004,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7005,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7006,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7007,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7008,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7009,'Enero','25/12/2020','24/01/2021')

INSERT INTO SF.DBO.Planilla (Id_area_de_trabajo,Periodo_de_Planilla,Inicio_de_planilla,Fin_de_planilla)
VALUES (7010,'Enero','25/12/2020','24/01/2021')

-- Selecciona Tabla

SELECT*FROM Planilla

-- Esquema

select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS;
go