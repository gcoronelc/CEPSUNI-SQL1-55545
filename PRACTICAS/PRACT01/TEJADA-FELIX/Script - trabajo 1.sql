-- TRABAJO 1

/* Creación base de datos TRABAJO_01 */

CREATE DATABASE Trabajo_01
GO

-- PARA TABLA TRANSPORTE
/* Creación Tabla TRANSPORTE */

CREATE TABLE Trabajo_01.dbo.Transporte(
	id_transporte INT NOT NULL,
	canal VARCHAR(50) NOT NULL,
	ingreso DATE NOT NULL,
	id_empresa INT NOT NULL,
	Nom_empresa VARCHAR(250) NOT NULL,
	placa_1 VARCHAR(50) NOT NULL,
	placa_2 VARCHAR(50) NOT NULL
)
GO

/* Generar datos en la tabla TRANSPORTE */

INSERT INTO Trabajo_01.dbo.transporte VALUES (2093636,'Mercados', 
2013-09-03, 175308, 'MACATE COURIER S.R.L', 'ABC747', '-');
GO

INSERT INTO Trabajo_01.dbo.transporte VALUES (2096472,'Mercados', 
2013-09-09, 175308, 'MACATE COURIER S.R.L', 'ABC747', '-');
GO

INSERT INTO Trabajo_01.dbo.transporte VALUES (2092211,'Mercados', 
2013-09-01, 153615, 'TORRES OROZCO OLIVIA MARNELY', 'AFU885', '-');
GO

INSERT INTO Trabajo_01.dbo.transporte VALUES (2092961,'Mercados', 
2013-09-03, 153615, 'TORRES OROZCO OLIVIA MARNELY', 'AFU885', '-');
GO

INSERT INTO Trabajo_01.dbo.transporte VALUES (2093652,'Mercados', 
2013-09-03, 153615, 'TORRES OROZCO OLIVIA MARNELY', 'AFU885', '-');
GO

/* Selección de la tabla TRANSPORTE */

SELECT * 
FROM Trabajo_01.dbo.transporte;
GO

/* Eliminar tabla TRANSPORTE */

DROP TABLE Trabajo_01.dbo.transporte;
GO 

-- PARA TABLA VEHICULO
/* Creación Tabla VEHICULO */

CREATE TABLE Trabajo_01.dbo.Vehiculo(
	id_vehiculo INT NOT NULL,
	placa_1 VARCHAR(50) NOT NULL,
	placa_2 VARCHAR(50) NOT NULL,
	Tipo VARCHAR(50) NOT NULL,
	fec_registro DATE NOT NULL,
	Est_vehiculo VARCHAR(250) NOT NULL
)
GO

/* Generar datos en la tabla VEHICULO */

INSERT INTO Trabajo_01.dbo.vehiculo VALUES (10001,'ABC747',
'-', 'Furgoneta', 2012-12-01, 175308, 'Buen estado');
GO

INSERT INTO Trabajo_01.dbo.vehiculo VALUES (10002,'AFU885',
'-', 'Furgoneta', 2011-02-08, 175308, 'Buen estado');
GO

INSERT INTO Trabajo_01.dbo.vehiculo VALUES (10003,'AFZ936',
'-', 'Furgoneta', 2011-09-14, 175308, 'Buen estado');
GO

INSERT INTO Trabajo_01.dbo.vehiculo VALUES (10004,'AHX753',
'-', 'Furgoneta', 2014-10-15, 175308, 'Buen estado');
GO

INSERT INTO Trabajo_01.dbo.vehiculo VALUES (10005,'ATC883',
'-', 'Furgoneta', 2010-09-18, 175308, 'Buen estado');
GO

/* Selección de la tabla VEHICULO */

SELECT * 
FROM Trabajo_01.dbo.vehiculo;
GO

/* Eliminar tabla VEHICULO */

DROP TABLE Trabajo_01.dbo.vehiculo;
GO 

-- PARA TABLA PROVEEDOR
/* Creación Tabla PROVEEDOR */

CREATE TABLE Trabajo_01.dbo.proveedor(
	id_proveedor INT NOT NULL,
	Zona VARCHAR(50) NOT NULL,
	Linea_prod VARCHAR(50) NOT NULL,
	Lead_time VARCHAR(50) NOT NULL,
	O_Compras VARCHAR(50) NOT NULL
)
GO

/* Generar datos en la tabla PROVEEDOR */

INSERT INTO Trabajo_01.dbo.proveedor VALUES (1,'Norte',
'Mascotas', '5 dias', 'D-100121');
GO

INSERT INTO Trabajo_01.dbo.proveedor VALUES (2,'Norte',
'Dulces', '2 dias', 'D-100122');
GO

INSERT INTO Trabajo_01.dbo.proveedor VALUES (3,'Norte',
'Harinas', '8 dias', 'D-100123');
GO

INSERT INTO Trabajo_01.dbo.proveedor VALUES (4,'Norte',
'Avenas', '1 dia', 'D-100124');
GO

INSERT INTO Trabajo_01.dbo.proveedor VALUES (5,'Norte',
'Panetones', '3 dias', 'D-100125');
GO

/* Selección de la tabla PROVEEDOR */

SELECT * 
FROM Trabajo_01.dbo.proveedor;
GO

/* Eliminar tabla PROVEEDOR */

DROP TABLE Trabajo_01.dbo.proveedor;
GO 

-- PARA TABLA EMPRESA
/* Creación Tabla EMPRESA */

CREATE TABLE Trabajo_01.dbo.empresa(
	id_empresa INT NOT NULL,
	Nom_empresa VARCHAR(250) NOT NULL,
	Fec_ingreso DATE NOT NULL,
	Estado VARCHAR(50) NOT NULL
)
GO

/* Generar datos en la tabla EMPRESA */

INSERT INTO Trabajo_01.dbo.empresa VALUES (175308,'MACATE COURIER S.R.L.',
2009-09-09, 'Disponible');
GO

INSERT INTO Trabajo_01.dbo.empresa VALUES (153615,'TORRES OROZCO OLIVIA MARNELY',
2014-01-08, 'Disponible');
GO

INSERT INTO Trabajo_01.dbo.empresa VALUES (156432,'CUADROS GRADOS MIGUEL ANGEL',
2009-12-31, 'Disponible');
GO

INSERT INTO Trabajo_01.dbo.empresa VALUES (131322,'PEÑA SANCHEZ ALEJANDRO JAVIER',
2011-08-18, 'Disponible');
GO

INSERT INTO Trabajo_01.dbo.empresa VALUES (181108,'RIVERA CASTRO JAVIER EDUARDO',
2011-02-02, 'Disponible');
GO

/* Selección de la tabla EMPRESA */

SELECT * 
FROM Trabajo_01.dbo.empresa;
GO

/* Eliminar tabla EMPRESA */

DROP TABLE Trabajo_01.dbo.empresa;
GO 

-- PARA TABLA CONDUCTOR
/* Creación Tabla CONDUCTOR */

CREATE TABLE Trabajo_01.dbo.conductor(
	id_conductor VARCHAR(50) NOT NULL,
	Nom_conductor VARCHAR(250) NOT NULL,
	Signatura VARCHAR(50) NOT NULL,
	Est_signatura VARCHAR(50) NOT NULL,
	Nom_empresa VARCHAR(250) NOT NULL
)
GO

/* Generar datos en la tabla CONDUCTOR */

INSERT INTO Trabajo_01.dbo.conductor VALUES ('A001','ABREU ORDAZ IXAHIR',
'V20209085', 'Vigente', 'MACATE COURIER S.R.L.');
GO

INSERT INTO Trabajo_01.dbo.conductor VALUES ('A002','ACOSTA ALVARADO NEI',
'V15300703', 'Vigente', 'PEREZ HUILCAMISA ALEJANDRO');
GO

INSERT INTO Trabajo_01.dbo.conductor VALUES ('A003','AGUILAR CASTILLO J.',
'V22091195', 'Vigente', 'CUENCA PEÑA CARLOS ANDRES');
GO

INSERT INTO Trabajo_01.dbo.conductor VALUES ('A004','ALFARO CASTILLO R.',
'Q40620821', 'Vigente', 'ALVA SOLUCIONES S.A.C.');
GO

INSERT INTO Trabajo_01.dbo.conductor VALUES ('A005','ALIAGA RAMIREZ B.',
'Q08819568', 'Vigente', 'CUENCA PEÑA CARLOS ANDRES');
GO

/* Selección de la tabla CONDUCTOR */

SELECT * 
FROM Trabajo_01.dbo.conductor;
GO

/* Eliminar tabla CONDUCTOR */

DROP TABLE Trabajo_01.dbo.conductor;
GO 

-- PARA TABLA ALMACEN
/* Creación Tabla ALMACEN */

CREATE TABLE Trabajo_01.dbo.almacen(
	id_almacen INT NOT NULL,
	Zona VARCHAR(50) NOT NULL,
	Productos VARCHAR(50) NOT NULL,
	Disponibilidad VARCHAR(100) NOT NULL,
	ingreso_alm DATE NOT NULL,
	id_transporte INT NOT NULL
)
GO

/* Generar datos en la tabla ALMACEN */

INSERT INTO Trabajo_01.dbo.almacen VALUES (5,'Norte',
'Mascotas', 'Almacen LLeno', 2019-09-03, 2093636);
GO

INSERT INTO Trabajo_01.dbo.almacen VALUES (18,'Sur',
'Mixto', 'Disponible', 2019-09-09, 2096472);
GO

INSERT INTO Trabajo_01.dbo.almacen VALUES (13,'Centro',
'Mixto', 'Almacen Lleno', 2019-09-01, 2092211);
GO

INSERT INTO Trabajo_01.dbo.almacen VALUES (17,'Sur',
'Mixto', 'Disponible', 2019-09-03, 2092961);
GO

INSERT INTO Trabajo_01.dbo.almacen VALUES (12,'Centro',
'Mixto', 'Disponible', 2019-09-03, 2093652);
GO

/* Selección de la tabla ALMACEN */

SELECT * 
FROM Trabajo_01.dbo.almacen;
GO

/* Eliminar tabla ALMACEN */

DROP TABLE Trabajo_01.dbo.almacen;
GO 

-- PARA TABLA PICKING
/* Creación Tabla PICKING */

CREATE TABLE Trabajo_01.dbo.picking(
	Cod_almacen VARCHAR(50) NOT NULL,
	Guia INT NOT NULL,
	O_Compras VARCHAR(50) NOT NULL,
	Linea_prod VARCHAR(50) NOT NULL,
	Cod_estibador VARCHAR(50) NOT NULL,
	Fec_picking DATE NOT NULL
)
GO

/* Generar datos en la tabla PICKING */

INSERT INTO Trabajo_01.dbo.picking VALUES ('Aven-1', 80842322,
'D-100159', 'Avenas', 'Est-462', 2017-11-20);
GO

INSERT INTO Trabajo_01.dbo.picking VALUES ('Pane-1', 80880793,
'D-100180', 'Panetones', 'Est-233', 2016-04-25);
GO

INSERT INTO Trabajo_01.dbo.picking VALUES ('Pane-1', 81037144,
'D-100205', 'Panetones', 'Est-416', 2015-06-07);
GO

INSERT INTO Trabajo_01.dbo.picking VALUES ('Masc-1', 81059556,
'D-100206', 'Mascotas', 'Est-298', 2017-09-27);
GO

INSERT INTO Trabajo_01.dbo.picking VALUES ('Dulc-1', 81167097,
'D-100122', 'Dulces', 'Est-463', 2017-10-14);
GO

/* Selección de la tabla PICKING */

SELECT * 
FROM Trabajo_01.dbo.picking;
GO

/* Eliminar tabla PICKING */

DROP TABLE Trabajo_01.dbo.picking;
GO 