USE SF

-- Eliminar Tabla

DROP TABLE SF.DBO.Ingresos

-- Crear Tabla con restricciones

CREATE TABLE Ingresos( 
	Id_ingresos          int  NOT NULL IDENTITY(4001,1) ,
	Id_Persona           int  NOT NULL ,
	remuneracion_basica  decimal(18,2)  NOT NULL DEFAULT 0.00 ,
	asignacion_familiar  decimal(18,2)  NOT NULL DEFAULT 0.00 ,
	horas_extras         decimal(18,2)  NOT NULL DEFAULT 0.00 ,
	comision             decimal(18,2)  NOT NULL DEFAULT 0.00 ,
	vales_de_consumo     decimal(18,2)  NOT NULL DEFAULT 0.00 ,
	total_ingresos       decimal(18,2)  NOT NULL DEFAULT 0.00 ,
	CONSTRAINT pk_ingresos PRIMARY KEY(Id_ingresos),
	CONSTRAINT fk_ingresos_idpersona
		FOREIGN KEY(Id_Persona) 
		REFERENCES dbo.Persona(Id_Persona),
	CONSTRAINT ck_ingresos_remuneracion CHECK(remuneracion_basica >=930),
	CONSTRAINT ck_ingresos_asignacion CHECK(asignacion_familiar >=0),
	CONSTRAINT ck_ingresos_horas CHECK(horas_extras >=0),
	CONSTRAINT ck_ingresos_comision CHECK(comision >=0),
	CONSTRAINT ck_ingresos_vales CHECK(vales_de_consumo >=0)
)
GO

-- Formato Fecha

SET DATEFORMAT dmy

-- Actualizar la columna Total

UPDATE DBO.Ingresos
SET total_ingresos = remuneracion_basica + asignacion_familiar + horas_extras + comision + vales_de_consumo
GO

-- Selecciona Tabla

select * from SF.dbo.Ingresos;
go

-- Insertar Datos

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1001,9000,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1002,6540,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1003,5751,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1004,4000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1005,4000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1006,4000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1007,4000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1008,3300,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1009,3850,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1010,3500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1011,2800,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1012,5500,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1013,4500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1014,3000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1015,4000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1016,4450,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1017,3000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1018,3000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1019,3800,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1020,3500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1021,3200,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1022,3500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1023,3500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1024,3780,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1025,4500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1026,4000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1027,3710,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1028,3000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1029,4800,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1030,3000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1031,3800,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1032,3400,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1033,3500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1034,4000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1035,3800,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1036,3000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1037,3800,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1038,4000,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1039,3000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1040,3200,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1041,3500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1042,6400,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1043,3700,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1044,5150,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1045,3240,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1046,3550,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1047,5500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1048,3200,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1049,2500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1050,2800,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1051,2500,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1052,2200,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1053,2200,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1054,2200,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1055,2200,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1056,2200,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1057,2000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1058,1800,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1059,1605,93,113.2,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1060,1500,0,23.43,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1061,2461,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1062,2300,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1063,2000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1064,2500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1065,2500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1066,2500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1067,1800,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1068,2000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1069,2200,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1070,2500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1071,6100,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1072,4100,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1073,5500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1074,5500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1075,16480,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1076,6600,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1077,7500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1078,9000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1079,5000,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1080,7500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1081,6500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1082,5000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1083,7000,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1084,7000,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1085,5500,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1086,10500,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1087,4000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1088,5400,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1089,3150,93,0,1398.08,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1090,2280,93,0,2189.83,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1091,2100,0,0,3386,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1092,1451.998957,93,0,1282.6,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1093,4900,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1094,7000,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1095,4250,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1096,5000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1097,6000,93,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1098,3000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1099,3000,0,0,0,0,0)

INSERT INTO SF.DBO.Ingresos (Id_Persona,remuneracion_basica,asignacion_familiar,horas_extras,comision,vales_de_consumo,total_ingresos) 
VALUES(1100,3000,0,0,0,0,0)
