USE SF

-- Eliminar Tabla

DROP TABLE SF.DBO.AportesDelEmpleador

-- Crear Tabla con restricciones

CREATE TABLE AportesDelEmpleador( 
	Id_Aportes_del_empleador int  NOT NULL IDENTITY(6001,1) ,
	Id_Persona           int  NOT NULL ,
	aporte_essalud       decimal(18,2)  NOT NULL DEFAULT 0.00 ,
	aporte_seguro_vida_ley decimal(18,2) NOT NULL DEFAULT 0.00 ,
	aporte_seguro_sctr   decimal(18,2)  NOT NULL DEFAULT 0.00 ,
	aporte_eps           decimal(18,2)  NOT NULL DEFAULT 0.00 ,
	total_aportes        decimal(18,2)  NOT NULL DEFAULT 0.00 ,
	CONSTRAINT pk_aportesdelempleador PRIMARY KEY(Id_Aportes_del_empleador),
	CONSTRAINT fk_aportes_idpersona
		FOREIGN KEY(Id_Persona) 
		REFERENCES dbo.Persona(Id_Persona),
	CONSTRAINT ck_aportes_essalud CHECK(aporte_essalud >=0),
	CONSTRAINT ck_aportes_seguroley	CHECK(aporte_seguro_vida_ley >=0),
	CONSTRAINT ck_aportes_segurosctr CHECK(aporte_seguro_sctr >=0),
	CONSTRAINT ck_aportes_eps CHECK(aporte_eps >=0)
)
GO

-- Formato Fecha

SET DATEFORMAT dmy

-- Actualizar la columna Total

UPDATE DBO.AportesDelEmpleador 
SET total_aportes = aporte_essalud + aporte_seguro_vida_ley + aporte_seguro_sctr + aporte_eps
GO

-- Selecciona Tabla

select * from SF.dbo.AportesDelEmpleador;
go

-- Insertar Datos

INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1001,818.37,18.19,20,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1002,447.73,13.27,14.59,149.24,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1003,545.76,12.13,13.34,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1004,270,8,8.8,90,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1005,270,8,8.8,90,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1006,360,8,8.8,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1007,389.67,8.66,9.53,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1008,229.03,6.79,7.46,76.34,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1009,259.88,7.7,8.47,86.63,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1010,236.25,7,7.7,78.75,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1011,189,5.6,6.16,63,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1012,377.53,11.19,12.3,125.84,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1013,303.75,9,9.9,101.25,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1014,202.5,6,6.6,67.5,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1015,270,8,8.8,90,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1016,300.38,8.9,9.79,100.13,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1017,270,6,6.6,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1018,270,6,6.6,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1019,262.78,7.79,8.56,87.59,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1020,315,7,7.7,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1021,288,6.4,7.04,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1022,136.5,3.03,3.34,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1023,315,7,7.7,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1024,255.15,7.56,8.32,85.05,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1025,303.75,9,9.9,101.25,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1026,360,8,8.8,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1027,250.43,7.42,8.16,83.48,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1028,202.5,6,6.6,67.5,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1029,324,9.6,10.56,108,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1030,270,6,6.6,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1031,342,7.6,8.36,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1032,229.5,6.8,7.48,76.5,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1033,236.25,7,7.7,78.75,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1034,360,8,8.8,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1035,256.5,7.6,8.36,85.5,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1036,202.5,6,6.6,67.5,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1037,342,7.6,8.36,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1038,398.21,11.8,12.98,132.74,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1039,234.01,6.93,7.63,78,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1040,247.54,7.33,8.07,82.51,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1041,236.25,7,7.7,78.75,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1042,432,12.8,14.08,144,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1043,256.03,7.59,8.34,85.34,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1044,471.87,10.49,11.53,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1045,218.7,6.48,7.13,72.9,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1046,327.87,7.29,8.01,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1047,515.95,11.47,12.61,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1048,222.28,6.59,7.24,74.09,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1049,168.75,5,5.5,56.25,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1050,195.28,5.79,6.36,65.09,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1051,175.03,5.19,5.7,58.34,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1052,148.5,4.4,4.84,49.5,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1053,148.5,4.4,4.84,49.5,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1054,148.5,4.4,4.84,49.5,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1055,148.5,4.4,4.84,49.5,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1056,148.5,4.4,4.84,49.5,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1057,180,4,4.4,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1058,162,3.6,3.96,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1059,163.01,3.62,3.98,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1060,137.11,3.05,3.35,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1061,155.04,3.45,3.79,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1062,215.37,4.79,5.26,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1063,180,4,4.4,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1064,150,3.33,3.67,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1065,168.75,5,5.5,56.25,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1066,225,5,5.5,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1067,121.5,3.6,3.96,40.5,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1068,180,4,4.4,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1069,184.97,5.48,6.03,61.66,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1070,168.75,5,5.5,56.25,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1071,411.75,12.2,13.42,137.25,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1072,276.75,8.2,9.02,92.25,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1073,495,11,12.1,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1074,264,5.87,6.45,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1075,1118.68,33.15,36.46,372.89,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1076,451.78,13.39,14.72,150.59,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1077,506.25,15,16.5,168.75,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1078,607.5,18,19.8,202.5,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1079,343.78,10.19,11.2,114.59,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1080,506.25,15,16.5,168.75,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1081,438.75,13,14.3,146.25,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1082,450,10,11,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1083,638.37,14.19,15.6,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1084,478.78,14.19,15.6,159.59,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1085,495,11,12.1,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1086,715.03,21.19,23.3,238.34,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1087,270,8,8.8,90,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1088,370.78,10.99,12.08,123.59,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1089,313.27,9.28,10.21,104.42,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1090,307.99,9.13,10.04,102.66,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1091,728.06,21.57,23.73,242.69,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1092,212.22,6.29,6.92,70.74,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1093,337.03,9.99,10.98,112.34,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1094,638.37,14.19,15.6,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1095,286.88,8.5,9.35,95.63,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1096,337.5,10,11,112.5,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1097,548.37,12.19,13.4,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1098,270,6,6.6,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1099,270,6,6.6,0,0)


INSERT INTO SF.DBO.AportesDelEmpleador (Id_Persona,aporte_essalud,aporte_seguro_vida_ley,aporte_seguro_sctr,aporte_eps,total_aportes)
VALUES(1100,270,6,6.6,0,0)
