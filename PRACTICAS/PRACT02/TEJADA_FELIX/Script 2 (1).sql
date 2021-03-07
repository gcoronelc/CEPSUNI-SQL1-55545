-- TRABAJO 1

/* Creación base de datos TRABAJO_01 */

CREATE DATABASE Trabajo_01
GO

-- PARA TABLA TRANSPORTE
/* Creación Tabla TRANSPORTE */

CREATE TABLE Trabajo_01.dbo.Transporte(
	id_transporte INT NOT NULL
	CONSTRAINT PK_Transporte PRIMARY KEY,
	canal VARCHAR(50) NOT NULL,
	ingreso DATE NOT NULL,
	id_empresa INTEGER NOT NULL
		CONSTRAINT FK_Transporte_Empresa
		FOREIGN KEY(id_empresa) 
		REFERENCES dbo.Empresa(id_empresa),
	Nom_empresa VARCHAR(250) NOT NULL,
	placa_1 VARCHAR(50) NOT NULL,
	placa_2 VARCHAR(50) NOT NULL DEFAULT 'NONE',
	CONSTRAINT U_Transporte_id_transporte UNIQUE (id_transporte),
	CONSTRAINT CK_Transporte_canal CHECK (canal = 'Mercados' or 
	canal = 'Distribuidores' or canal = 'Mayoristas'),
	CONSTRAINT CK_Transporte_ingreso CHECK (ingreso <= '2020-01-01')
)
GO

/* Generar datos en la tabla TRANSPORTE */

INSERT INTO Trabajo_01.dbo.Transporte VALUES (2093636,'Mercados', 
'2013-09-03', 131322, 'PEÑA SANCHEZ ALEJANDRO JAVIER', 'ABC747', '-');
GO

INSERT INTO Trabajo_01.dbo.Transporte VALUES (2096472,'Mercados', 
'2013-09-09', 153615, 'TORRES OROZCO OLIVIA MARLENY', 'ABC747', '-');
GO

INSERT INTO Trabajo_01.dbo.Transporte VALUES (2092211,'Mercados', 
'2013-09-01', 156432, 'CUADROS GRADOS MIGUEL ANGEL', 'AFU885', '-');
GO

INSERT INTO Trabajo_01.dbo.Transporte VALUES (2092961,'Mercados', 
'2013-09-03', 175308, 'MACATE COURIER S.R.L.', 'AFU885', '-');
GO

INSERT INTO Trabajo_01.dbo.Transporte VALUES (2093652,'Mercados', 
'2013-09-03', 181108, 'RIVERA CASTRO JAVIER EDUARDO', 'AFU885', '-');
GO

/* Selección de la tabla TRANSPORTE */

SELECT * 
FROM Trabajo_01.dbo.Transporte;
GO

/* Eliminar tabla TRANSPORTE */

DROP TABLE Trabajo_01.dbo.Transporte;
GO 

-- PARA TABLA VEHICULO
/* Creación Tabla VEHICULO */

CREATE TABLE Trabajo_01.dbo.Vehiculo(
	id_vehiculo INT NOT NULL
	CONSTRAINT PK_Vehiculo PRIMARY KEY,
	placa_1 VARCHAR(50) NOT NULL,
	placa_2 VARCHAR(50) NOT NULL DEFAULT 'NONE',
	Tipo VARCHAR(50) NOT NULL,
	fec_registro DATE NOT NULL,
	Est_vehiculo VARCHAR(250) NOT NULL,
	CONSTRAINT u_vehiculo_id_vehiculo UNIQUE(id_vehiculo),
	CONSTRAINT CK_vehiculo_fec_registro CHECK (fec_registro <= '2020-01-01'),
	CONSTRAINT CK_vehiculo_Tipo CHECK (Tipo = 'Furgoneta' or Tipo = 'Furgón doble'),
	CONSTRAINT CK_vehiculo_Est_vehiculo CHECK (Est_vehiculo = 'Buen estado' 
	or Est_vehiculo = '-')
)
GO

/* Generar datos en la tabla VEHICULO */

INSERT INTO Trabajo_01.dbo.vehiculo VALUES (10001,'ABC747',
'-', 'Furgoneta', '2012-12-01', 'Buen estado');
GO

INSERT INTO Trabajo_01.dbo.vehiculo VALUES (10002,'AFU885',
'-', 'Furgoneta', '2011-02-08', 'Buen estado');
GO

INSERT INTO Trabajo_01.dbo.vehiculo VALUES (10003,'AFZ936',
'-', 'Furgoneta', '2011-09-14', 'Buen estado');
GO

INSERT INTO Trabajo_01.dbo.vehiculo VALUES (10004,'AHX753',
'-', 'Furgoneta', '2014-10-15', 'Buen estado');
GO

INSERT INTO Trabajo_01.dbo.vehiculo VALUES (10005,'ATC883',
'-', 'Furgoneta', '2010-09-18', 'Buen estado');
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

CREATE TABLE Trabajo_01.dbo.Proveedor(
	id_proveedor INT NOT NULL
	CONSTRAINT PK_Proveedor PRIMARY KEY,
	Zona VARCHAR(50) NOT NULL,
	Linea_prod VARCHAR(50) NOT NULL,
	Lead_time VARCHAR(50) NOT NULL,
	O_Compras VARCHAR(50) NOT NULL,
	CONSTRAINT u_proveedor_id_proveedor UNIQUE(id_proveedor),
	CONSTRAINT u_proveedor_o_compras UNIQUE(O_compras),
	CONSTRAINT CK_proveedor_Zona CHECK (Zona = 'Norte' 
	or Zona = 'Sur' or Zona = 'Centro'),
	CONSTRAINT CK_proveedor_Linea_prod CHECK (Linea_prod = 'Mascotas' 
	or Linea_prod = 'Dulces' or Linea_prod = 'Harinas' or 
	Linea_prod = 'Avenas' or Linea_prod = 'Panetones')
)
GO

/* Generar datos en la tabla PROVEEDOR */

INSERT INTO Trabajo_01.dbo.Proveedor VALUES (1,'Norte',
'Mascotas', '5 dias', 'D-100121');
GO

INSERT INTO Trabajo_01.dbo.Proveedor VALUES (2,'Norte',
'Dulces', '2 dias', 'D-100122');
GO

INSERT INTO Trabajo_01.dbo.Proveedor VALUES (3,'Norte',
'Harinas', '8 dias', 'D-100123');
GO

INSERT INTO Trabajo_01.dbo.Proveedor VALUES (4,'Norte',
'Avenas', '1 dia', 'D-100124');
GO

INSERT INTO Trabajo_01.dbo.Proveedor VALUES (5,'Norte',
'Panetones', '3 dias', 'D-100125');
GO

/* Selección de la tabla PROVEEDOR */

SELECT * 
FROM Trabajo_01.dbo.Proveedor;
GO

/* Eliminar tabla PROVEEDOR */

DROP TABLE Trabajo_01.dbo.Proveedor;
GO 

-- PARA TABLA EMPRESA
/* Creación Tabla EMPRESA */

CREATE TABLE Trabajo_01.dbo.Empresa(
	id_empresa INT NOT NULL
	CONSTRAINT PK_Empresa PRIMARY KEY,
	Nom_empresa VARCHAR(250) NOT NULL,
	Fec_ingreso DATE NOT NULL,
	Estado VARCHAR(50) NOT NULL,
	CONSTRAINT CK_empresa_Estado CHECK (Estado = 'Disponible' 
	or Estado = 'No disponible'),
	CONSTRAINT CK_empresa_fec_ingreso CHECK (fec_ingreso <= '2020-01-01')
)
GO

/* Generar datos en la tabla EMPRESA */

INSERT INTO Trabajo_01.dbo.Empresa VALUES (175308,'MACATE COURIER S.R.L.',
'2009-09-09', 'Disponible');
GO

INSERT INTO Trabajo_01.dbo.Empresa VALUES (153615,'TORRES OROZCO OLIVIA MARNELY',
'2014-01-08', 'Disponible');
GO

INSERT INTO Trabajo_01.dbo.Empresa VALUES (156432,'CUADROS GRADOS MIGUEL ANGEL',
'2009-12-31', 'Disponible');
GO

INSERT INTO Trabajo_01.dbo.Empresa VALUES (131322,'PEÑA SANCHEZ ALEJANDRO JAVIER',
'2011-08-18', 'Disponible');
GO

INSERT INTO Trabajo_01.dbo.Empresa VALUES (181108,'RIVERA CASTRO JAVIER EDUARDO',
'2011-02-02', 'Disponible');
GO

/* Selección de la tabla EMPRESA */

SELECT * 
FROM Trabajo_01.dbo.Empresa;
GO

/* Eliminar tabla EMPRESA */

DROP TABLE Trabajo_01.dbo.Empresa;
GO 

-- PARA TABLA CONDUCTOR
/* Creación Tabla CONDUCTOR */

CREATE TABLE Trabajo_01.dbo.Conductor(
	id_conductor VARCHAR(50) NOT NULL
	CONSTRAINT PK_Conductor PRIMARY KEY,
	Nom_conductor VARCHAR(250) NOT NULL,
	Signatura VARCHAR(50) NOT NULL,
	Est_signatura VARCHAR(50) NOT NULL,
	Nom_empresa VARCHAR(250) NOT NULL,
	CONSTRAINT u_conductor_id_conductor UNIQUE(id_conductor),
	CONSTRAINT u_conductor_signatura UNIQUE(Signatura),
	CONSTRAINT CK_conductor_Est_signatura CHECK (Est_signatura = 'Vigente'
	or Est_signatura = 'Caducado'),
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
FROM Trabajo_01.dbo.Conductor;
GO

/* Eliminar tabla CONDUCTOR */

DROP TABLE Trabajo_01.dbo.Conductor;
GO 

-- PARA TABLA ALMACEN
/* Creación Tabla ALMACEN */

CREATE TABLE Trabajo_01.dbo.Almacen(
	id_almacen INT NOT NULL
	CONSTRAINT PK_Almacen PRIMARY KEY,
	Zona VARCHAR(50) NOT NULL,
	Productos VARCHAR(50) NOT NULL,
	Disponibilidad VARCHAR(100) NOT NULL,
	ingreso_alm DATE NOT NULL,
	id_transporte INT NOT NULL,
	CONSTRAINT u_almacen_id_almacen UNIQUE(id_almacen),
	CONSTRAINT u_almacen_id_transporte UNIQUE(id_transporte),
	CONSTRAINT CK_almacen_Zona CHECK (Zona = 'Norte' 
	or Zona = 'Sur' or Zona = 'Centro'),
	CONSTRAINT CK_almacen_Productos CHECK (Productos = 'Mascotas' 
	or Productos = 'Dulces' or Productos = 'Mixto'),
	CONSTRAINT CK_almacen_Disponibilidad CHECK (Disponibilidad = 'Disponible' 
	or Disponibilidad = 'Almacen Lleno'),
	CONSTRAINT CK_almacen_ingreso_alm CHECK (ingreso_alm <= '2020-01-01')
)
GO

/* Generar datos en la tabla ALMACEN */

INSERT INTO Trabajo_01.dbo.almacen VALUES (5,'Norte',
'Mascotas', 'Almacen LLeno', '2019-09-03', 2093636);
GO

INSERT INTO Trabajo_01.dbo.almacen VALUES (18,'Sur',
'Mixto', 'Disponible', '2019-09-09', 2096472);
GO

INSERT INTO Trabajo_01.dbo.almacen VALUES (13,'Centro',
'Mixto', 'Almacen Lleno', '2019-09-01', 2092211);
GO

INSERT INTO Trabajo_01.dbo.almacen VALUES (17,'Sur',
'Mixto', 'Disponible', '2019-09-03', 2092961);
GO

INSERT INTO Trabajo_01.dbo.almacen VALUES (12,'Centro',
'Mixto', 'Disponible', '2019-09-03', 2093652);
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

CREATE TABLE Trabajo_01.dbo.Picking(
	Cod_almacen VARCHAR(50) NOT NULL,
	Guia INT NOT NULL
	CONSTRAINT PK_Picking PRIMARY KEY,
	O_Compras VARCHAR(50) NOT NULL,
	Linea_prod VARCHAR(50) NOT NULL,
	Cod_estibador VARCHAR(50) NOT NULL,
	Fec_picking DATE NOT NULL,
	CONSTRAINT u_picking_o_compras UNIQUE(O_compras),
	CONSTRAINT u_picking_o_Guia UNIQUE(Guia),
	CONSTRAINT CK_picking_Linea_prod CHECK (Linea_prod = 'Mascotas' 
	or Linea_prod = 'Dulces' or Linea_prod = 'Harinas' or 
	Linea_prod = 'Avenas' or Linea_prod = 'Panetones'),
	CONSTRAINT CK_picking_Fec_picking CHECK (Fec_picking <= '2020-01-01')
)
GO

/* Generar datos en la tabla PICKING */

INSERT INTO Trabajo_01.dbo.picking VALUES ('Aven-1', 80842322,
'D-100159', 'Avenas', 'Est-462', '2017-11-20');
GO

INSERT INTO Trabajo_01.dbo.picking VALUES ('Pane-1', 80880793,
'D-100180', 'Panetones', 'Est-233', '2016-04-25');
GO

INSERT INTO Trabajo_01.dbo.picking VALUES ('Pane-1', 81037144,
'D-100205', 'Panetones', 'Est-416', '2015-06-07');
GO

INSERT INTO Trabajo_01.dbo.picking VALUES ('Masc-1', 81059556,
'D-100206', 'Mascotas', 'Est-298', '2017-09-27');
GO

INSERT INTO Trabajo_01.dbo.picking VALUES ('Dulc-1', 81167097,
'D-100122', 'Dulces', 'Est-463', '2017-10-14');
GO

/* Selección de la tabla PICKING */

SELECT * 
FROM Trabajo_01.dbo.picking;
GO

/* Eliminar tabla PICKING */

DROP TABLE Trabajo_01.dbo.picking;
GO 