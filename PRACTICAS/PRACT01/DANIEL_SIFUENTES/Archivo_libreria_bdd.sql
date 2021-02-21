USE MASTER
GO

IF DB_ID('BDDBIBLIOTECA') IS NOT NULL
	BEGIN
		DROP DATABASE BDDBIBLIOTECA
	END
GO

CREATE DATABASE BDDBIBLIOTECA
GO

USE BDDBIBLIOTECA
GO

SET DATEFORMAT DMY
GO

-- -------------------------------------------------------------
CREATE TABLE DISTRITO (
	CODIGODIST VARCHAR(20) PRIMARY KEY NOT NULL,
	NOMBREDIST VARCHAR(40) NOT NULL
)
GO

INSERT INTO DISTRITO (CODIGODIST, NOMBREDIST)
	VALUES
		('LIMA 02', 'ANC�N'),
		('LIMA 04', 'BARRANCO'),
		('LIMA 05', 'INDEPENDENCIA'),
		('LIMA 06', 'CARABAYLLO'),
		('LIMA 09', 'CHORRILLOS'),
		('LIMA 13', 'LA VICTORIA'),
		('LIMA 18', 'MIRAFLORES'),
		('LIMA 21', 'PUEBLO LIBRE'),
		('LIMA 38', 'SANTA ROSA'),
		('LIMA 43', 'SANTA ANITA')
GO
-- -------------------------------------------------------------


-- -------------------------------------------------------------
CREATE TABLE ESTANTES (
	NUMEROESTANTE INT PRIMARY KEY NOT NULL,
	TIPOESTANTE TEXT NOT NULL
)
GO

INSERT INTO ESTANTES 
	VALUES
	('1', 'NOVELA JUVENIL'),
	('2', 'PSICOL�GICO'),
	('3', 'TERROR'),
	('4', 'NOVELA PSIC�PATA'),
	('5', 'ER�TICO'),
	('6', 'POEMA')
GO
-- -------------------------------------------------------------
-- FOREIGN READY (PROVEEDOR -> DISTRITO)

-- -------------------------------------------------------------
CREATE TABLE LIBRO (
	IDLIBRO CHAR(3) PRIMARY KEY NOT NULL,
	TITULOLIBRO TEXT NOT NULL,
	AUTORLIBRO VARCHAR(30) NOT NULL,
	NUMEROESTANTE INT NOT NULL
)
GO

INSERT INTO LIBRO (IDLIBRO, TITULOLIBRO, AUTORLIBRO, NUMEROESTANTE)
	VALUES
	('001', 'A CIEGAS', 'JOSH MALERMAN', '2'),
	('002', 'AFTER','ANNA TODD', '1'),
	('003', 'EL WENDIGO', 'ALGERNON BLACKWOOD', '3'),
	('004', 'EL SECRETO', 'RHONDA BYRNE', '2'),
	('005', 'LA INTERPRETACI�N DE LOS SUE�OS','SIGMUND FREUD', '2'),
	('006', 'MISERY', 'STEPHEN KING', '3'),
	('007', 'INSOMNIA', 'STEPHEN KING', '3'),
	('008', 'EL ARTE DE AMAR','ERICH FROMM', '2'),
	('009', 'INVISIBLE','ELOY MORENO', '1'),
	('010', 'SIN CONCIENCIA', 'ROBERT HARE', '4'),
	('011', 'LA LLAMADA DE CTHULHU', 'HOWARD PHILLIPS LOVECRAFT', '3'),
	('012', 'EL ENEAGRAMA DE LAS PASIONES', 'LLU�S SERRA LLANSANA', '2'),
	('013', 'A TRAV�S DE MI VENTANA','ARIANA GODOY', '1'),
	('014', 'ALMAS MUERTAS', 'NIKOL�I G�GOL', '5'),
	('015', 'HANNIBAL', 'THOMAS HARRIS', '4'),
	('016', 'LA LADRONA DE LA LUNA', 'CLAUDIA RAM�REZ LOMEL�', '1'),
	('017', 'ROMANCERO GITANO', 'FEDERICO GARC�A LORCA', '6')
GO
-- -------------------------------------------------------------
-- FOREIGN READY (LIBRO -> ESTANTE)

-- -------------------------------------------------------------
CREATE TABLE SUPERVISOR (
	IDSUPERVISOR CHAR(3) PRIMARY KEY NOT NULL,
	NOMBREAPELLIDO VARCHAR(100) NOT NULL,
	CORREO VARCHAR(30) NOT NULL,
	CODIGODIST VARCHAR(20) NOT NULL,
	NUMEROESTANTE INT
)
GO

INSERT INTO SUPERVISOR
	VALUES
	('R3N', 'LUCAS J. HENDERSON', 'SUPERVISOR10@YAHOO.COM', 'LIMA 04','2'),
	('Z1A', 'ABIGAIL SOLDEVILLA', 'ADMINISTRADOR@MAILTO.PE', 'LIMA 38', '1'),
	('L45', 'VICTOR VONDUR', 'REVICTOR1989@GMAIL.COM', 'LIMA 06', '4')
GO
-- -------------------------------------------------------------
-- FOREIGN READY (SUPERVISOR -> ESTANTE)
-- FOREIGN READY (SUPERVISOR -> DISTRITO)

-- -------------------------------------------------------------
CREATE TABLE PROVEEDOR (
	IDPROVEEDOR CHAR(5) PRIMARY KEY NOT NULL,
	NOMPROVEEDOR VARCHAR(30) NOT NULL,
	APEPROVEEDOR VARCHAR(30) NOT NULL,
	CODIGODIST VARCHAR(20) NOT NULL
)
GO

INSERT INTO PROVEEDOR
	VALUES
	('SUP01', 'JAIME', 'AUGUSTO', 'LIMA 04'),
	('SUP02', 'EMILIA', 'SOZA', 'LIMA 04'),
	('SUP03', 'ALVARO', 'GALLARDO', 'LIMA 04')


-- -------------------------------------------------------------
-- FOREIGN READY (PROVEEDOR -> DISTRITO)

-- -------------------------------------------------------------
CREATE TABLE LECTOR (
	DNILECTOR CHAR(8) PRIMARY KEY NOT NULL,
	NOMBRELECTOR VARCHAR(20) NULL,
	APELLIDOLECTOR VARCHAR(20) NULL,
	IDLIBRO CHAR(3) NOT NULL,
)
GO

INSERT INTO LECTOR (DNILECTOR, NOMBRELECTOR, APELLIDOLECTOR, IDLIBRO)
	VALUES
	('91038274', 'ESTEBAN', 'RAMIREZ', '007'),
	('71841631', 'LUCIA', 'ESMERALDA', '002'),
	('35917341', 'SOLEDAD', 'MARTINEZ', '014'),
	('81752927', 'ARON', 'MONTOYA', '010'),
	('82127162', 'ALHELI', 'SANDOVAL', '016')
GO
-- -------------------------------------------------------------
-- FOREIGN READY(LIBRO -> LECTOR)

-- -------------------------------------------------------------
CREATE TABLE USUARIO (
	IDUSUARIO CHAR(7) PRIMARY KEY NOT NULL,
	NOMBREUSUARIO VARCHAR(20) NOT NULL,
	APELLIDOUSUARIO VARCHAR(20) NOT NULL,
	DNIUSUARIO CHAR(8) NOT NULL,
	CODIGODIST VARCHAR(20),
	SEXO CHAR(1) NULL,
	CORREO VARCHAR(40) NOT NULL,
	IDLIBRO CHAR(3)
)
GO

INSERT INTO USUARIO(IDUSUARIO, NOMBREUSUARIO, APELLIDOUSUARIO, DNIUSUARIO, CODIGODIST, SEXO, CORREO, IDLIBRO)
	VALUES
	('Q202101', 'IMANOL', 'YANES', '81920471', 'LIMA 04', 'M', 'USUARIO@GMAIL.COM', '009'),
	('Q202102', 'ESTEBAN', 'CESANA', '72019427', 'LIMA 21', 'M', 'AMARION2013@OUTLOOK.COM', '015'),
	('Q202103', 'LAURA', 'MONTOYA', '19471821', 'LIMA 43', 'F', 'CORREOLIBROS123@GMAIL.COM', '003'),
	('Q202104', 'SARA', 'MARQUEZ', '91837141', 'LIMA 18', 'F', 'SARAVALENTINA10@GMAIL.COM', '011')

GO
-- -------------------------------------------------------------
-- FOREIGN READY(USUARIO -> LIBRO)
-- FOREIGN READY(USUARIO -> DISTRITO)

-- -------------------------------------------------------------
CREATE TABLE [TURNO BIBLIOTECA] (
	TURNO CHAR(1) PRIMARY KEY,
	DESCRIPCION TEXT
)
GO

INSERT INTO [TURNO BIBLIOTECA]
	VALUES
	('A', 'TURNO DE 7:30AM -> 15:30PM'),
	('B', 'TURNO DE 16:00PM -> 22:00PM')
GO
-- -------------------------------------------------------------


-- -------------------------------------------------------------
CREATE TABLE BIBLIOTECARIA (
	DNIBIBLIOTECARIA CHAR(8) PRIMARY KEY NOT NULL,
	NOMBREBIBLIO VARCHAR(30) NOT NULL,
	APELLIDOBIBLIO VARCHAR(30) NOT NULL,
	CORREO VARCHAR(30) NOT NULL,
	TURNO CHAR(1) NOT NULL
)
GO

INSERT INTO BIBLIOTECARIA
	VALUES
	('19381752', 'ELIZABETH', 'RUTH', 'RUTHCARMEN06@OUTLOOK.COM', 'A'),
	('10491871', 'MARIA', 'CARDENAS', 'MARIABIBLIO@GMAIL.COM', 'B')
GO

-- -------------------------------------------------------------
-- FOREIGN READY (BIBLIOTECARIA -> [TURNO BIBLIOTECA])

-- -------------------------------------------------------------
CREATE TABLE HISTORIAL (
	CODIGOHISTORIAL CHAR(2) PRIMARY KEY,
	DNIBIBLIOTECARIA CHAR(8),
	IDUSUARIO CHAR(7),
	FECHAENTREGA DATE,
	FECHADEVOLUCION DATE
)
GO

INSERT INTO HISTORIAL (CODIGOHISTORIAL, DNIBIBLIOTECARIA, IDUSUARIO, FECHAENTREGA, FECHADEVOLUCION)
	VALUES
	('A1', '19381752', 'Q202103', '12/05/2021', '15/05/2021'),
	('B1',  '10491871', 'Q202102', '22/06/2021', '22/06/2021'),
	('4Z', '19381752', 'Q202103', '01/02/2021', '01/02/2021'),
	('C7', '10491871', 'Q202101', '17/09/2020', '20/09/2020')
GO
-- -------------------------------------------------------------
-- FOREIGN READY (HISTORIAL -> BIBLIOTECARIA)
-- FOREIGN READY (HISTORIAL -> USUARIO)
-- -------------------------------------------------------------

-- -------------------------------------------------------------
-- ----------------- ADD FOREIGN'S/REFERENCES ------------------
-- -------------------------------------------------------------
ALTER TABLE HISTORIAL
	ADD CONSTRAINT FK_USUARIO1 FOREIGN KEY (IDUSUARIO) REFERENCES USUARIO
GO

ALTER TABLE HISTORIAL
	ADD CONSTRAINT FK_BIBLIOTECARIA1 FOREIGN KEY (DNIBIBLIOTECARIA) REFERENCES BIBLIOTECARIA
GO

ALTER TABLE LECTOR
	ADD CONSTRAINT FK_LIBRO1 FOREIGN KEY (IDLIBRO) REFERENCES LIBRO
GO

ALTER TABLE USUARIO
	ADD CONSTRAINT FK_LIBRO2 FOREIGN KEY (IDLIBRO) REFERENCES LIBRO
GO

ALTER TABLE USUARIO
	ADD CONSTRAINT FK_DISTRITO1 FOREIGN KEY (CODIGODIST) REFERENCES DISTRITO
GO

ALTER TABLE BIBLIOTECARIA
	ADD CONSTRAINT FK_TURNOS FOREIGN KEY (TURNO) REFERENCES [TURNO BIBLIOTECA]
GO

ALTER TABLE PROVEEDOR
	ADD CONSTRAINT FK_DISTRITO2 FOREIGN KEY (CODIGODIST) REFERENCES DISTRITO
GO

ALTER TABLE LIBRO
	ADD CONSTRAINT FK_ESTANTES FOREIGN KEY (NUMEROESTANTE) REFERENCES ESTANTES
GO

ALTER TABLE SUPERVISOR
	ADD CONSTRAINT FK_SUPERVISOR FOREIGN KEY (NUMEROESTANTE) REFERENCES ESTANTES
GO

ALTER TABLE SUPERVISOR
	ADD CONSTRAINT FK_SUPERVISOR1 FOREIGN KEY (CODIGODIST) REFERENCES DISTRITO
GO




-- -------------------------------------------------------------
-- ------------------------ PRINT TABLE ------------------------
-- -------------------------------------------------------------

SELECT * FROM LECTOR
-- -------------------------------------------------------------
SELECT * FROM DISTRITO
-- -------------------------------------------------------------
SELECT * FROM ESTANTES
-- -------------------------------------------------------------
SELECT DNIBIBLIOTECARIA, IDUSUARIO AS CODIGOUSUARIO, 
		FECHAENTREGA, FECHADEVOLUCION
		FROM HISTORIAL
-- -------------------------------------------------------------
SELECT DNIBIBLIOTECARIA AS DNI, NOMBREBIBLIO AS [NOMBRE BIBLIOTECARIA], 
		APELLIDOBIBLIO AS [APELLIDO BIBLIOTECARIA], CORREO AS CORREO, TURNO AS TURNO
	FROM BIBLIOTECARIA
-- -------------------------------------------------------------
SELECT IDUSUARIO, NOMBREUSUARIO AS NOMBRE, APELLIDOUSUARIO AS APELLIDO,
		DNIUSUARIO, CODIGODIST AS [CODIGO DE DISTRITO], SEXO AS SEXO, CORREO AS CORREO, IDLIBRO
	FROM USUARIO
-- -------------------------------------------------------------
SELECT IDLIBRO, TITULOLIBRO AS [TITULO DEL LIBRO], AUTORLIBRO AS [AUTOR DEL LIBRO],
		NUMEROESTANTE AS [NUMERO DE ESTANTE]
	FROM LIBRO
-- -------------------------------------------------------------
SELECT IDSUPERVISOR, NOMBREAPELLIDO AS [NOMBRE Y APELLIDO], 
		CORREO AS CORREO, NUMEROESTANTE AS [NUMERO DE ESTANTE]
	FROM SUPERVISOR
-- -------------------------------------------------------------
SELECT IDPROVEEDOR, NOMPROVEEDOR AS [NOMBRE PROVEEDOR], APEPROVEEDOR AS [APELLIDO PROVEEDOR],
		CODIGODIST AS [CODIGO DE DISTRITO]
	FROM PROVEEDOR
-- -------------------------------------------------------------
SELECT * FROM [TURNO BIBLIOTECA]

GO


