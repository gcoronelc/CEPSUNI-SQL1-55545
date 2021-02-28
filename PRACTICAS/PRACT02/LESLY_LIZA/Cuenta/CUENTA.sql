
USE SF
go

-- Eliminar Tabla

DROP TABLE SF.dbo.Cuenta

-- Crear Tabla con restricciones

CREATE TABLE Cuenta( 
	Id_Cuenta            int  NOT NULL identity(8001,1),
	Id_Persona           int  NOT NULL,
	Banco_Afiliado       varchar(50)  NOT NULL ,
	Moneda_de_cuenta     varchar(20)  NOT NULL ,
	Numero_de_cuenta     varchar(20)  NOT NULL  
	CONSTRAINT pk_cuenta PRIMARY KEY(Id_Cuenta),
	CONSTRAINT fk_cuenta_idpersona
		FOREIGN KEY(Id_Persona) 
		REFERENCES dbo.persona(Id_Persona),
	CONSTRAINT u_cuenta_numerodecuenta UNIQUE(numero_de_cuenta)	
)
go

-- Formato Fecha

SET DATEFORMAT dmy

-- Selecciona Tabla

SELECT*FROM Cuenta

-- Insertar Datos

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1001,'BANCO DE CREDITO DEL PERU','SOL','100-100')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1002,'BANCO DE CREDITO DEL PERU','SOL','100-101')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1003,'BANCO DE CREDITO DEL PERU','SOL','100-102')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1004,'SCOTIABANK PERU SAA','SOL','100-103')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1005,'BANCO INTERNACIONAL DEL PERU-INTERBANK','SOL','100-104')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1006,'SCOTIABANK PERU SAA','SOL','100-105')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1007,'BANCO DE CREDITO DEL PERU','SOL','100-106')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1008,'BBVA BANCO CONTINENTAL','SOL','100-107')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1009,'SCOTIABANK PERU SAA','SOL','100-108')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1010,'BANCO INTERNACIONAL DEL PERU-INTERBANK','SOL','100-109')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1011,'BANCO DE CREDITO DEL PERU','SOL','100-110')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1012,'BANCO INTERNACIONAL DEL PERU-INTERBANK','SOL','100-111')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1013,'SCOTIABANK PERU SAA','SOL','100-112')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1014,'BANCO DE CREDITO DEL PERU','SOL','100-113')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1015,'SCOTIABANK PERU SAA','SOL','100-114')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1016,'BANCO DE CREDITO DEL PERU','SOL','100-115')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1017,'BANCO DE CREDITO DEL PERU','SOL','100-116')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1018,'BANCO DE CREDITO DEL PERU','SOL','100-117')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1019,'BANCO DE CREDITO DEL PERU','SOL','100-118')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1020,'SCOTIABANK PERU SAA','SOL','100-119')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1021,'BANCO DE CREDITO DEL PERU','SOL','100-120')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1022,'BANCO DE CREDITO DEL PERU','SOL','100-121')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1023,'BANCO DE CREDITO DEL PERU','SOL','100-122')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1024,'BANCO DE CREDITO DEL PERU','SOL','100-123')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1025,'BANCO DE CREDITO DEL PERU','SOL','100-124')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1026,'SCOTIABANK PERU SAA','SOL','100-125')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1027,'BANCO DE CREDITO DEL PERU','SOL','100-126')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1028,'BANCO DE CREDITO DEL PERU','SOL','100-127')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1029,'BBVA BANCO CONTINENTAL','SOL','100-128')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1030,'BANCO DE CREDITO DEL PERU','SOL','100-129')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1031,'BANCO INTERNACIONAL DEL PERU-INTERBANK','SOL','100-130')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1032,'BBVA BANCO CONTINENTAL','SOL','100-131')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1033,'BANCO DE CREDITO DEL PERU','SOL','100-132')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1034,'BANCO DE CREDITO DEL PERU','SOL','100-133')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1035,'BANCO DE CREDITO DEL PERU','SOL','100-134')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1036,'BANCO DE CREDITO DEL PERU','SOL','100-135')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1037,'BANCO DE CREDITO DEL PERU','SOL','100-136')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1038,'BANCO DE CREDITO DEL PERU','SOL','100-137')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1039,'BANCO DE CREDITO DEL PERU','SOL','100-138')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1040,'BBVA BANCO CONTINENTAL','SOL','100-139')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1041,'BANCO DE CREDITO DEL PERU','SOL','100-140')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1042,'BANCO INTERNACIONAL DEL PERU-INTERBANK','SOL','100-141')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1043,'BANCO DE CREDITO DEL PERU','SOL','100-142')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1044,'BANCO DE CREDITO DEL PERU','SOL','100-143')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1045,'BBVA BANCO CONTINENTAL','SOL','100-144')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1046,'BANCO DE CREDITO DEL PERU','SOL','100-145')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1047,'BBVA BANCO CONTINENTAL','SOL','100-146')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1048,'SCOTIABANK PERU SAA','SOL','100-147')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1049,'BANCO DE CREDITO DEL PERU','SOL','100-148')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1050,'BANCO DE CREDITO DEL PERU','SOL','100-149')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1051,'BBVA BANCO CONTINENTAL','SOL','100-150')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1052,'BANCO DE CREDITO DEL PERU','SOL','100-151')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1053,'BANCO INTERNACIONAL DEL PERU-INTERBANK','SOL','100-152')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1054,'BBVA BANCO CONTINENTAL','SOL','100-153')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1055,'SCOTIABANK PERU SAA','SOL','100-154')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1056,'BANCO DE CREDITO DEL PERU','SOL','100-155')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1057,'SCOTIABANK PERU SAA','SOL','100-156')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1058,'BANCO DE CREDITO DEL PERU','SOL','100-157')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1059,'BANCO DE CREDITO DEL PERU','SOL','100-158')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1060,'BANCO DE CREDITO DEL PERU','SOL','100-159')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1061,'BANCO DE CREDITO DEL PERU','SOL','100-160')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1062,'BANCO DE CREDITO DEL PERU','SOL','100-161')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1063,'SCOTIABANK PERU SAA','SOL','100-162')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1064,'BANCO DE CREDITO DEL PERU','SOL','100-163')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1065,'BANCO DE CREDITO DEL PERU','SOL','100-164')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1066,'BBVA BANCO CONTINENTAL','SOL','100-165')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1067,'BANCO INTERNACIONAL DEL PERU-INTERBANK','SOL','100-166')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1068,'BANCO DE CREDITO DEL PERU','SOL','100-167')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1069,'BANCO INTERNACIONAL DEL PERU-INTERBANK','SOL','100-168')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1070,'BANCO DE CREDITO DEL PERU','SOL','100-169')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1071,'BBVA BANCO CONTINENTAL','SOL','100-170')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1072,'BBVA BANCO CONTINENTAL','SOL','100-171')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1073,'BANCO DE CREDITO DEL PERU','SOL','100-172')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1074,'BANCO DE CREDITO DEL PERU','SOL','100-173')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1075,'BANCO DE CREDITO DEL PERU','SOL','100-174')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1076,'BANCO INTERNACIONAL DEL PERU-INTERBANK','SOL','100-175')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1077,'BANCO DE CREDITO DEL PERU','SOL','100-176')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1078,'BANCO DE CREDITO DEL PERU','SOL','100-177')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1079,'SCOTIABANK PERU SAA','SOL','100-178')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1080,'BANCO DE CREDITO DEL PERU','SOL','100-179')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1081,'BBVA BANCO CONTINENTAL','SOL','100-180')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1082,'BANCO DE CREDITO DEL PERU','SOL','100-181')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1083,'SCOTIABANK PERU SAA','SOL','100-182')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1084,'BANCO DE CREDITO DEL PERU','SOL','100-183')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1085,'BBVA BANCO CONTINENTAL','SOL','100-184')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1086,'BANCO DE CREDITO DEL PERU','SOL','100-185')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1087,'BANCO DE CREDITO DEL PERU','SOL','100-186')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1088,'BANCO DE CREDITO DEL PERU','SOL','100-187')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1089,'BANCO DE CREDITO DEL PERU','SOL','100-188')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1090,'BANCO DE CREDITO DEL PERU','SOL','100-189')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1091,'BANCO DE CREDITO DEL PERU','SOL','100-190')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1092,'BANCO DE CREDITO DEL PERU','SOL','100-191')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1093,'BANCO DE CREDITO DEL PERU','SOL','100-192')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1094,'BANCO DE CREDITO DEL PERU','SOL','100-193')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1095,'SCOTIABANK PERU SAA','SOL','100-194')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1096,'BANCO DE CREDITO DEL PERU','SOL','100-195')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1097,'SCOTIABANK PERU SAA','SOL','100-196')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1098,'BANCO DE CREDITO DEL PERU','SOL','100-197')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1099,'BANCO DE CREDITO DEL PERU','SOL','100-198')

INSERT INTO SF.DBO.Cuenta (Id_persona,Banco_afiliado,Moneda_de_cuenta,Numero_de_cuenta)
VALUES (1100,'BANCO DE CREDITO DEL PERU','SOL','100-199')


-- Esquema

select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS;
go
