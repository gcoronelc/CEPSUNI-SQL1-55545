USE SF
GO

-- Eliminar Tabla

DROP TABLE SF.dbo.Boleta

-- Crear Tabla con restricciones

CREATE TABLE Boleta ( 
	Id_Boleta            int  NOT NULL IDENTITY (3001,1),
	Id_Persona           int  NOT NULL ,
	puesto               varchar(80)  NOT NULL ,
	centro_de_trabajo    varchar(80)  NOT NULL ,
	periodo_de_pago      datetime  NOT NULL ,
	regimen_pensionario  varchar(50)  NOT NULL ,
	CUSSP                char(12)  NOT NULL DEFAULT 'None',
	vacaciones           datetime  NOT NULL ,
	remuneracion_basica  decimal(18,2)  NOT NULL ,
	dias_laborados       int  NOT NULL ,
	total_ingresos       decimal(18,2)  NOT NULL ,
	total_descuentos     decimal(18,2)  NOT NULL ,
	total_aportes        decimal(18,2)  NOT NULL ,
	neto_a_pagar         decimal(18,2)  NOT NULL, 
	CONSTRAINT pk_Boleta PRIMARY KEY(Id_Boleta),
	CONSTRAINT fk_boleta_id_persona
		FOREIGN KEY(Id_Persona) 
		REFERENCES dbo.persona(Id_Persona)
)
go

-- Formato Fecha

SET DATEFORMAT dmy

-- Insertar Datos

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1001,'Abogado Senior','Canal Tradicional Lima','31/01/2021','Habitat','325580JJBQN5','1/01/4000',9000,30,9093,4324.16,856.56,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1002,'Administrador De Infraestructura Y Telecomunicaciones','Canales Digitales','31/01/2021','Habitat','618921EOMIT1','1/01/4000',6540,30,6633,3098.89,624.83,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1003,'Administrador De Produccion','Capacitacion','31/01/2021','Profuturo','615461PFCRT6','1/01/4000',5751,30,5844,2494.94,571.23,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1004,'Administrador Jr. De Produccion','Categoria Elaborados','31/01/2021','Habitat','629620BZMAR4','1/01/4000',4000,30,4000,2024.52,376.8,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1005,'Administrador Jr. De Produccion','Categoria Huevos Y Cerdo','31/01/2021','Prima','640671RTCAR0','1/01/4000',4000,30,4000,2047.48,376.8,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1006,'Administrador Jr. De Produccion','Categoria Pavo','31/01/2021','Sistema Nacional De Pensiones','','1/01/4000',4000,30,4000,2163.8,376.8,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1007,'Analista De  Planeamiento Financiero','Categoria Pollo Beneficiado','31/01/2021','Habitat','342911AGLNA4','1/01/4000',4000,30,4000,2094.37,407.86,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1008,'Analista De Administracion De Personal Y Nomina','Central De Facturacion','31/01/2021','Prima','320711DATAA3','1/01/4000',3300,30,3393,1756.54,319.62,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1009,'Analista De Administracion De Personal Y Nomina','Centro De Corte','31/01/2021','Profuturo','610930HMRDA5','1/01/4000',3850,30,3850,1927.64,362.68,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1010,'Analista De Administracion De Personal Y Nomina','Centro De Distribucion','31/01/2021','Prima','635701PRTAR0','1/01/4000',3500,30,3500,1785.34,329.7,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1011,'Analista De Administracion De Personal Y Nomina','Centro De Distribucion Ate','31/01/2021','Habitat','654180PCNER9','1/01/4000',2800,30,2800,1463.13,263.76,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1012,'Analista De Adquisicion De Talento','Cobranzas','31/01/2021','Integra','600870MGMNA2','1/01/4000',5500,30,5593,2583.96,526.86,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1013,'Analista De Branding','Compensaciones Y Planificación','31/01/2021','Prima','632750ERODA9','1/01/4000',4500,30,4500,2252.61,423.9,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1014,'Analista De Compensaciones Y Planificacion','Compras Infraestructura','31/01/2021','Integra','628551PCFTR4','1/01/4000',3000,30,3000,1565.38,282.6,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1015,'Analista De Comunicacion Interna','Compras Servicios Y Suministros','31/01/2021','Prima','634620AMCRB8','1/01/4000',4000,30,4000,2023.64,376.8,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1016,'Analista De Control De Costos','Comunicación Interna','31/01/2021','Integra','636500AHCMT7','1/01/4000',4450,30,4450,2199.23,419.2,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1017,'Analista De Control De Costos','Contabilidad Y Costos','31/01/2021','Integra','643451JHSNR7','1/01/4000',3000,30,3000,1584.77,282.6,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1018,'Analista De Control De La Demanda','Control De Gestion De Costos E Inversiones','31/01/2021','Habitat','346700CLREA5','1/01/4000',3000,30,3000,1568.27,282.6,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1019,'Analista De Control De Proyectos','Control Interno Financiero','31/01/2021','Integra','636150YABUD2','1/01/4000',3800,30,3893,1965.08,366.72,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1020,'Analista De Datos Maestros','Creditos Y Cobranzas','31/01/2021','Prima','332791JVMQA1','1/01/4000',3500,30,3500,1828.64,329.7,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1021,'Analista De Datos Maestros','Desarrollo Organizacional','31/01/2021','Prima','634430LMLIE6','1/01/4000',3200,30,3200,1657.98,301.44,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1022,'Analista De Desarrollo Organizacional','Distribucion','31/01/2021','Integra','634360YSPST0','1/01/4000',3500,30,3500,151.67,142.87,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1023,'Analista De Distribución','Gerencia Comercial','31/01/2021','Prima','644961MHLMP6','1/01/4000',3500,30,3500,1740.34,329.7,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1024,'Analista De Imagen Y Empaques','Gerencia Corporativa De Administracion Y Finanzas','31/01/2021','Prima','630690GBCSR5','1/01/4000',3780,30,3780,1900.07,356.08,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1025,'Analista De Inteligencia Comercial & Pricing','Gerencia Corporativa De Gestion Humana','31/01/2021','Habitat','341460JRCIR6','1/01/4000',4500,30,4500,2271.96,423.9,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1026,'Analista De Marketing','Gerencia De Auditoria','31/01/2021','Prima','647591CGRZE8','1/01/4000',4000,30,4000,2065.4,376.8,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1027,'Analista De Marketing','Gerencia De Compras','31/01/2021','Prima','636131FRDOZ1','1/01/4000',3710,30,3710,1913.78,349.49,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1028,'Analista De Marketing','Gerencia De Demanda','31/01/2021','Prima','627951APCAE6','1/01/4000',3000,30,3000,1562.68,282.6,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1029,'Analista De Marketing Digital','Gerencia De Distribucion','31/01/2021','Prima','630340ACTDR1','1/01/4000',4800,30,4800,2413.84,452.16,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1030,'Analista De Medio Ambiente','Gerencia De I&D De Nuevos Productos','31/01/2021','Integra','650160MPPCO0','1/01/4000',3000,30,3000,1584.77,282.6,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1031,'Analista De Mejora De Procesos','Categoria Pavo','31/01/2021','Prima','643530JUTAI2','1/01/4000',3800,30,3800,1958.73,357.96,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1032,'Analista De Planeamiento','Categoria Pollo Beneficiado','31/01/2021','Prima','651781ECCFV9','1/01/4000',3400,30,3400,1761.9,320.28,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1033,'Analista De Planeamiento','Central De Facturacion','31/01/2021','Habitat','350110LMGRZ6','1/01/4000',3500,30,3500,1793.33,329.7,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1034,'Analista De Planeamiento','Centro De Corte','31/01/2021','Integra','639101RYMAC9','1/01/4000',4000,30,4000,2069,376.8,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1035,'Analista De Planeamiento','Centro De Distribucion','31/01/2021','Integra','342250ATORI4','1/01/4000',3800,30,3800,1959.31,357.96,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1036,'Analista De Planeamiento','Centro De Distribucion Ate','31/01/2021','Integra','641681PFGCC6','1/01/4000',3000,30,3000,1566.25,282.6,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1037,'Analista De Planeamiento','Cobranzas','31/01/2021','Habitat','325011EURII4','1/01/4000',3800,30,3800,1970.07,357.96,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1038,'Analista De Planeamiento Comercial','Compensaciones Y Planificación','31/01/2021','Integra','600601MLRUE6','1/01/4000',4000,30,4093,2201.28,555.73,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1039,'Analista De Planeamiento Comercial','Compras Infraestructura','31/01/2021','Habitat','655501MAMAE1','1/01/4000',3000,30,3000,1403.86,326.57,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1040,'Analista De Planeamiento Financiero','Compras Servicios Y Suministros','31/01/2021','Integra','653521CMCAT3','1/01/4000',3200,30,3200,1666.61,345.45,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1041,'Analista De Proyectos','Comunicación Interna','31/01/2021','Prima','639911EMMAO2','1/01/4000',3500,30,3500,1786.35,329.7,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1042,'Analista De Relaciones Laborales','Contabilidad Y Costos','31/01/2021','Prima','323381ELVCL6','1/01/4000',6400,30,6400,2943.12,602.88,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1043,'Analista De Route To Market','Control De Gestion De Costos E Inversiones','31/01/2021','Prima','648411RTGAR1','1/01/4000',3700,30,3793,1917.86,357.3,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1044,'Analista De Seguridad Informatica','Control Interno Financiero','31/01/2021','Prima','588451JMLLI2','1/01/4000',5150,30,5150,2564.47,493.89,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1045,'Analista De Servicio Al Cliente','Creditos Y Cobranzas','31/01/2021','Prima','326790GPAGO0','1/01/4000',3240,30,3240,1607.61,305.21,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1046,'Analista De Trade Marketing','Desarrollo Organizacional','31/01/2021','Prima','643100GGFLN0','1/01/4000',3550,30,3643,1899.15,343.17,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1047,'Analista Senior De Planeamiento Financiero','Distribucion','31/01/2021','Prima','629920SRHEO5','1/01/4000',5500,30,5500,2736.16,540.03,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1048,'Asistente Administrativo','Gerencia Comercial','31/01/2021','Prima','269740CARAI9','1/01/4000',3200,30,3293,1510.78,310.2,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1049,'Asistente Administrativo','Gerencia Corporativa De Administracion Y Finanzas','31/01/2021','Sistema Nacional De Pensiones','','1/01/4000',2500,30,2500,1361.05,235.5,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1050,'Asistente Comercial','Categoria Pavo','31/01/2021','Integra','629921LCCTD0','1/01/4000',2800,30,2893,1422.29,272.52,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1051,'Asistente De Bienestar','Categoria Pollo Beneficiado','31/01/2021','Integra','333980GBTTN4','1/01/4000',2500,30,2593,1327.35,244.26,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1052,'Asistente De Bienestar','Central De Facturacion','31/01/2021','Integra','646950COCIB8','1/01/4000',2200,30,2200,1170.9,207.24,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1053,'Asistente De Bienestar','Centro De Corte','31/01/2021','Integra','648580SZZAA7','1/01/4000',2200,30,2200,1171.94,207.24,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1054,'Asistente De Bienestar','Centro De Distribucion','31/01/2021','Integra','652030LCCIT4','1/01/4000',2200,30,2200,1171.94,207.24,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1055,'Asistente De Bienestar','Centro De Distribucion Ate','31/01/2021','Prima','343150JASAO9','1/01/4000',2200,30,2200,1168.92,207.24,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1056,'Asistente De Bienestar','Cobranzas','31/01/2021','Habitat','650190CPCES3','1/01/4000',2200,30,2200,1142.53,207.24,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1057,'Asistente De Gestion Comercial','Compensaciones Y Planificación','31/01/2021','Prima','636630EPFAM9','1/01/4000',2000,30,2000,1074,188.4,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1058,'Asistente De Gestion Comercial','Compras Infraestructura','31/01/2021','Prima','344030ABOAE2','1/01/4000',1800,30,1800,972.72,169.56,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1059,'Asistente De Gestion Documentaria','Compras Servicios Y Suministros','31/01/2021','Prima','593951PMPAP9','1/01/4000',1605,30,1811.2,916.86,170.61,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1060,'Asistente De Gestion Documentaria','Comunicación Interna','31/01/2021','Prima','312321JRHEA3','1/01/4000',1500,30,1523.43,812.45,143.51,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1061,'Asistente De Laboratorio','Contabilidad Y Costos','31/01/2021','Integra','617220LHAMO7','1/01/4000',2461,30,2461,1278.91,162.28,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1062,'Asistente De Laboratorio','Control De Gestion De Costos E Inversiones','31/01/2021','Prima','615200MCFPN8','1/01/4000',2300,30,2393,1282.73,225.42,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1063,'Asistente De Laboratorio','Control Interno Financiero','31/01/2021','Prima','638861DSCAZ7','1/01/4000',2000,30,2000,1080.8,188.4,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1064,'Asistente De Laboratorio','Creditos Y Cobranzas','31/01/2021','Prima','325480JMBTR2','1/01/4000',2500,30,2500,877.63,157,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1065,'Asistente De Operaciones De Macroinsumos','Desarrollo Organizacional','31/01/2021','Integra','650600PGGMZ2','1/01/4000',2500,30,2500,1320.19,235.5,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1066,'Asistente De Planeamiento','Distribucion','31/01/2021','Integra','649331ACMTI7','1/01/4000',2500,30,2500,1337.75,235.5,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1067,'Asistente De Ventas','Gerencia Comercial','31/01/2021','Sistema Nacional De Pensiones','','1/01/4000',1800,30,1800,920.22,169.56,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1068,'Asistente Medico Veterinario','Gerencia Corporativa De Administracion Y Finanzas','31/01/2021','Prima','633320JSHDM9','1/01/4000',2000,30,2000,1080.8,188.4,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1069,'Asistente Sig','Categoria Pavo','31/01/2021','Integra','647281VCHTR5','1/01/4000',2200,30,2293,1243.66,258.14,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1070,'Auditor Interno Jr','Categoria Pollo Beneficiado','31/01/2021','Habitat','644410LFIRA1','1/01/4000',2500,30,2500,1314.41,235.5,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1071,'Auditor Interno Senior','Central De Facturacion','31/01/2021','Habitat','636721RRCEM0','1/01/4000',6100,30,6100,3003.07,574.62,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1072,'Comprador','Centro De Corte','31/01/2021','Integra','609390RMPOA2','1/01/4000',4100,30,4100,2070.87,386.22,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1073,'Comprador Senior','Centro De Distribucion','31/01/2021','Habitat','624941LMCIT7','1/01/4000',5500,30,5500,2739.23,518.1,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1074,'Comprador Senior','Centro De Distribucion Ate','31/01/2021','Habitat','612310CABIN1','1/01/4000',5500,30,5500,293.33,276.32,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1075,'Controller De Costos E Inversiones','Cobranzas','31/01/2021','Integra','592861EFGRE7','1/01/4000',16480,30,16573,7395.25,1561.18,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1076,'Coordinador De Canales Digitales','Compensaciones Y Planificación','31/01/2021','Prima','586440KPROR3','1/01/4000',6600,30,6693,3150.58,630.48,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1077,'Coordinador De Canales Digitales','Compras Infraestructura','31/01/2021','Prima','622621MVZTA3','1/01/4000',7500,30,7500,3572.33,706.5,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1078,'Coordinador De Desarrollo','Compras Servicios Y Suministros','31/01/2021','Prima','636480PRLAN3','1/01/4000',9000,30,9000,2777.5,847.8,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1079,'Coordinador De Higiene Industrial','Comunicación Interna','31/01/2021','Integra','621001JICAD1','1/01/4000',5000,30,5093,2496.04,479.76,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1080,'Coordinador De Marketing','Contabilidad Y Costos','31/01/2021','Prima','339181DDCSZ1','1/01/4000',7500,30,7500,3370.6,706.5,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1081,'Coordinador De Marketing','Control De Gestion De Costos E Inversiones','31/01/2021','Prima','641660MGBLN8','1/01/4000',6500,30,6500,2936.65,612.3,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1082,'Coordinador De Marketing','Control Interno Financiero','31/01/2021','Prima','612371JPMDD3','1/01/4000',5000,30,5000,2523.09,471,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1083,'Coordinador De Negocio Pollo','Creditos Y Cobranzas','31/01/2021','Habitat','326561JZBAR5','1/01/4000',7000,30,7093,3473.92,668.16,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1084,'Coordinador De Planeamiento Comercial','Desarrollo Organizacional','31/01/2021','Profuturo','618171CCSDC8','1/01/4000',7000,30,7093,3224.63,668.16,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1085,'Coordinador De Producto','Distribucion','31/01/2021','Integra','634251FSCCV0','1/01/4000',5500,30,5500,2756.88,518.1,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1086,'Coordinador De Reputacion Y Responsabilidad Social','Gerencia Comercial','31/01/2021','Profuturo','589690SHVTE6','1/01/4000',10500,30,10593,4792.32,997.86,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1087,'Coordinador De Transporte','Gerencia Corporativa De Administracion Y Finanzas','31/01/2021','Sistema Nacional De Pensiones','','1/01/4000',4000,30,4000,2146.92,376.8,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1088,'Coordinador De Transporte','Categoria Pavo','31/01/2021','Sistema Nacional De Pensiones','','1/01/4000',5400,30,5493,2753.15,517.44,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1089,'Ejecutivo De Ventas','Categoria Pollo Beneficiado','31/01/2021','Integra','601771BLCNT9','1/01/4000',3150,30,4641.08,2947.08,437.18,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1090,'Ejecutivo De Ventas','Central De Facturacion','31/01/2021','Integra','584271CDCAT4','1/01/4000',2280,30,4562.83,2377.41,429.82,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1091,'Ejecutivo De Ventas','Centro De Corte','31/01/2021','Sistema Nacional De Pensiones','','1/01/4000',2100,30,5486,2060.33,1016.05,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1092,'Ejecutivo De Ventas','Centro De Distribucion','31/01/2021','Sistema Nacional De Pensiones','','1/01/4000',1452,30,2827.99,1677.34,296.17,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1093,'Gestor De Gestion Humana','Centro De Distribucion Ate','31/01/2021','Sistema Nacional De Pensiones','','1/01/4000',4900,30,4993,2514.85,470.34,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1094,'Gestor De Gestion Humana','Cobranzas','31/01/2021','Profuturo','615441SVMGO3','1/01/4000',7000,30,7093,3427.46,668.16,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1095,'Gestor De Gestion Humana','Compensaciones Y Planificación','31/01/2021','Prima','624571JCGLE5','1/01/4000',4250,30,4250,1983.3,400.36,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1096,'Gestor Inmobiliario','Compras Infraestructura','31/01/2021','Habitat','328160APBZR0','1/01/4000',5000,30,5000,2499.56,471,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1097,'Ingeniero De Automatizacion Pecuaria','Compras Servicios Y Suministros','31/01/2021','Profuturo','614061APVME0','1/01/4000',6000,30,6093,2977.33,573.96,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1098,'Ingeniero De Desarrollo Junior','Comunicación Interna','31/01/2021','Habitat','639181JSGCR5','1/01/4000',3000,30,3000,1579.07,282.6,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1099,'Ingeniero De I&D De Nuevos Productos','Contabilidad Y Costos','31/01/2021','Habitat','337490JHAMA1','1/01/4000',3000,30,3000,1558.89,282.6,0)

INSERT INTO SF.DBO.Boleta (Id_Persona,puesto,centro_de_trabajo,periodo_de_pago,regimen_pensionario,CUSSP,vacaciones,remuneracion_basica,dias_laborados,total_ingresos,total_descuentos,total_aportes,neto_a_pagar)
VALUES (1100,'Ingeniero De I&D De Nuevos Productos','Control De Gestion De Costos E Inversiones','31/01/2021','Integra','646660ARRAA5','1/01/4000',3000,30,3000,1584.77,282.6,0)


-- Selecciona Tabla

SELECT*FROM Boleta

-- Esquema

select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS;
go

-- Actualizar Datos

UPDATE DBO.Boleta 
SET neto_a_pagar = total_ingresos - total_descuentos
go

