USE SF

-- Eliminar Tabla

DROP TABLE SF.DBO.DescuentosDelTrabajador

-- Crear Tabla con restricciones

CREATE TABLE DescuentosDelTrabajador( 
	Id_Descuentos_del_trabajador int  NOT NULL IDENTITY(5001,1),
	Id_Persona           int  NOT NULL ,
	aporte_sp            decimal(18,2) NOT NULL DEFAULT 0.00,
	adelanto_quincena    decimal(18,2) NOT NULL DEFAULT 0.00,
	vales_de_consumo     decimal(18,2) NOT NULL DEFAULT 0.00,
	tardanzas            decimal(18,2) NOT NULL DEFAULT 0.00,
	total_descuentos     decimal(18,2) NOT NULL DEFAULT 0.00,
	CONSTRAINT pk_descuentosdeltrabajador PRIMARY KEY(Id_Descuentos_del_trabajador),
	CONSTRAINT fk_descuentos_idpersona
		FOREIGN KEY(Id_Persona) 
		REFERENCES dbo.Persona(Id_Persona),
	CONSTRAINT ck_descuentos_aportesp CHECK(aporte_sp >=0),
	CONSTRAINT ck_descuentos_adelanto CHECK(adelanto_quincena >=0),
	CONSTRAINT ck_descuentos_vales CHECK(vales_de_consumo >=0),
	CONSTRAINT ck_descuentos_tardanzas CHECK(tardanzas >=0)
)
GO

-- Formato Fecha

SET DATEFORMAT dmy

-- Actualizar la columna Total

UPDATE DBO.DescuentosDelTrabajador 
SET total_descuentos = aporte_sp + adelanto_quincena + vales_de_consumo + tardanzas
GO

-- Selecciona Tabla

select * from SF.dbo.DescuentosDelTrabajador;
go

-- Insertar Datos

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1001,909.3,3402.25,0,12.61,4324.16)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1002,663.3,2435.59,0,0,3098.89)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1003,606.4,1888.54,0,0,2494.94)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1004,400,1624.52,0,0,2024.52)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1005,400,1647.48,0,0,2047.48)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1006,520,1643.8,0,0,2163.8)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1007,432.97,1661.4,0,0,2094.37)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1008,339.3,1417.24,0,0,1756.54)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1009,385,1542.64,0,0,1927.64)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1010,350,1435.34,0,0,1785.34)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1011,280,1183.13,0,0,1463.13)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1012,559.3,2024.66,0,0,2583.96)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1013,450,1802.61,0,0,2252.61)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1014,300,1265.38,0,0,1565.38)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1015,400,1623.64,0,0,2023.64)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1016,445,1754.23,0,0,2199.23)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1017,300,1284.77,0,0,1584.77)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1018,300,1265.57,0,2.7,1568.27)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1019,389.3,1575.78,0,0,1965.08)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1020,350,1478.64,0,0,1828.64)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1021,320,1337.98,0,0,1657.98)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1022,151.67,0,0,0,151.67)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1023,350,1368.27,0,22.07,1740.34)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1024,378,1522.07,0,0,1900.07)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1025,450,1821.96,0,0,2271.96)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1026,400,1665.4,0,0,2065.4)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1027,371,1542.78,0,0,1913.78)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1028,300,1262.68,0,0,1562.68)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1029,480,1933.84,0,0,2413.84)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1030,300,1284.77,0,0,1584.77)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1031,380,1574.95,0,3.78,1958.73)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1032,340,1421.9,0,0,1761.9)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1033,350,1439.73,0,3.6,1793.33)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1034,400,1669,0,0,2069)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1035,380,1579.31,0,0,1959.31)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1036,300,1266.25,0,0,1566.25)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1037,380,1590.07,0,0,1970.07)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1038,589.94,1611.34,0,0,2201.28)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1039,346.69,1054.02,0,3.15,1403.86)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1040,366.73,1294.28,0,5.6,1666.61)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1041,350,1436.35,0,0,1786.35)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1042,640,2303.12,0,0,2943.12)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1043,379.3,1538.56,0,0,1917.86)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1044,524.3,2040.17,0,0,2564.47)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1045,324,1271,0,12.61,1607.61)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1046,364.3,1534.85,0,0,1899.15)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1047,573.28,2162.88,0,0,2736.16)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1048,329.3,1154.99,0,26.49,1510.78)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1049,325,1033.21,0,2.84,1361.05)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1050,289.3,1114.7,0,18.29,1422.29)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1051,259.3,1068.05,0,0,1327.35)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1052,220,950.9,0,0,1170.9)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1053,220,951.94,0,0,1171.94)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1054,220,951.94,0,0,1171.94)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1055,220,948.92,0,0,1168.92)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1056,220,916.22,0,6.31,1142.53)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1057,200,872.3,0,1.7,1074)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1058,180,792.72,0,0,972.72)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1059,181.12,735.74,0,0,916.86)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1060,152.34,660.11,0,0,812.45)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1061,241.8,1037.11,0,0,1278.91)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1062,239.3,1043.43,0,0,1282.73)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1063,200,880.8,0,0,1080.8)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1064,166.67,710.96,0,0,877.63)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1065,250,1070.19,0,0,1320.19)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1066,250,1087.75,0,0,1337.75)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1067,234,673.29,0,12.93,920.22)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1068,200,880.8,0,0,1080.8)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1069,274.03,969.63,0,0,1243.66)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1070,250,1064.41,0,0,1314.41)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1071,610,2393.07,0,0,3003.07)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1072,410,1660.87,0,0,2070.87)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1073,550,2187.43,0,1.8,2739.23)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1074,293.33,0,0,0,293.33)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1075,1657.3,5730.38,0,7.57,7395.25)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1076,669.3,2478.76,0,2.52,3150.58)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1077,750,2822.33,0,0,3572.33)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1078,900,1877.5,0,0,2777.5)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1079,509.3,1986.74,0,0,2496.04)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1080,750,2620.6,0,0,3370.6)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1081,650,2286.65,0,0,2936.65)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1082,500,2023.09,0,0,2523.09)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1083,709.3,2764.62,0,0,3473.92)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1084,709.3,2515.33,0,0,3224.63)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1085,550,2206.88,0,0,2756.88)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1086,1059.3,3733.02,0,0,4792.32)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1087,520,1626.92,0,0,2146.92)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1088,714.09,2020.77,0,18.29,2753.15)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1089,464.11,2482.97,0,0,2947.08)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1090,456.28,1921.13,0,0,2377.41)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1091,273,1787.33,0,0,2060.33)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1092,408.72,1268.62,0,0,1677.34)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1093,649.09,1865.76,0,0,2514.85)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1094,709.3,2718.16,0,0,3427.46)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1095,425,1558.3,0,0,1983.3)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1096,500,1999.56,0,0,2499.56)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1097,609.3,2368.03,0,0,2977.33)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1098,300,1279.07,0,0,1579.07)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1099,300,1253.84,0,5.05,1558.89)

INSERT INTO SF.DBO.DescuentosDelTrabajador (Id_Persona,aporte_sp,adelanto_quincena,vales_de_consumo,tardanzas,total_descuentos) 
VALUES(1100,300,1284.77,0,0,1584.77)