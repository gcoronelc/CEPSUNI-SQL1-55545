CREATE DATABASE TRABAJOS_SQL 
GO

CREATE TABLE TRABAJOS_SQL.dbo.PRODUCTO(
	id_PRODUCTO INT NOT NULL
	CONSTRAINT PK_PRODUCTO PRIMARY KEY,
	ID_DOC_VENTA INTEGER NOT NULL
	CONSTRAINT FK_PRODUCTO_DOC_VENTA
	FOREIGN KEY(id_DOC_VENTA) 
		REFERENCES dbo.DOC_VENTA (id_DOC_VENTA),

	NOMPRODUCTO VARCHAR(50) NOT NULL,
	MARCA VARCHAR(50) NOT NULL,
	idEMPLEADO VARCHAR(250) NOT NULL, 
	FECSISTEMA date NOT NULL,
	DIRMAC INTEGER NOT NULL,
	ESTADO VARCHAR(20) NOT NULL,
	CONSTRAINT U_PRODUCTO_id_PRODUCTO UNIQUE (id_PRODUCTO),
	CONSTRAINT CK_PRODUCTO_MARCA CHECK (MARCA = 'CAT' or 
	MARCA = 'PAUS' or MARCA = 'METSO'),
	CONSTRAINT CK__ESTADO CHECK (ESTADO = 'COMPLETO' OR ESTADO = 'EN PROCESO')
)
GO
INSERT INTO TRABAJOS_SQL.dbo.PRODUCTO VALUES (51143,19492, 'WIRING HARNESS', 'PAUS', 
'STEPHANIE LLANOS VALENZUELA', '2021-01-04', 175308, 'COMPLETO');
GO

select*from TRABAJOS_SQL.dbo.PRODUCTO;
go


CREATE TABLE TRABAJOS_SQL.dbo.CLIENTE(
	id_CLIENTE INT NOT NULL IDENTITY
	CONSTRAINT PK_CLIENTE PRIMARY KEY,
	
	RAZONSOCIAL VARCHAR(50) NOT NULL,
	DESCUENTO VARCHAR(50) NOT NULL,
	TELEFONO INTEGER NOT NULL,
	FECSISTEMA date NOT NULL,
	DIRMAC INTEGER NOT NULL,
	ESTADO VARCHAR(20) NOT NULL,
	CONSTRAINT U_CLIENTE_id_CLIENTE UNIQUE (id_CLIENTE),
	)
GO

INSERT INTO TRABAJOS_SQL.dbo.CLIENTE VALUES (1022434,'JRC INGENIERIA Y CONSTRUCCION', 
'5%',989821302, '2021-01-04',18937,'COMPLETO');
GO

select*from TRABAJOS_SQL.dbo.CLIENTE;
go


CREATE TABLE TRABAJOS_SQL.dbo.STATUS (
	id_STATUS INT NOT NULL IDENTITY
	CONSTRAINT PK_STATUS PRIMARY KEY,
	CANTIDAD_VENDIDA INTEGER NOT NULL,
	NUMERO_DE_PEDIDO INTEGER NOT NULL,
	SALDO_EN_ALMACEN INTEGER NOT NULL,
	CONSTRAINT U_STATUS_id_STATUS UNIQUE (id_STATUS),
	CONSTRAINT CK_STATUS_SALDO_EN_ALMACEN  CHECK (SALDO_EN_ALMACEN >=0 )
)
GO

INSERT INTO TRABAJOS_SQL.dbo.STATUS VALUES (1122434,5, 
40001522,50);
GO

select*from TRABAJOS_SQL.dbo.STATUS;
go


CREATE TABLE TRABAJOS_SQL.dbo.SEDE (
 id_SEDE INT NOT NULL 
	CONSTRAINT PK_SEDE PRIMARY KEY,
	idDOCVENTA INT NOT NULL,
	NOMBRESEDE VARCHAR(50) NOT NULL,
	idEMPLEADO VARCHAR(250) NOT NULL,
	FECSISTEMA date NOT NULL,
	DIRMAC INTEGER NOT NULL,
	ESTADO VARCHAR (20) NOT NULL,
	CONSTRAINT U_SEDE_id_SEDE UNIQUE (id_SEDE)
)	
GO

INSERT INTO TRABAJOS_SQL.dbo.SEDE VALUES(2002,4123397,'NORTE', 175308, '2021-01-04',213444, 'COMPLETO');
GO

select*from TRABAJOS_SQL.dbo.SEDE;
go


CREATE TABLE TRABAJOS_SQL.dbo.MONEDA (
 id_MONEDA INT NOT NULL 
	CONSTRAINT PK_MONEDA PRIMARY KEY,
	SIMBOLO VARCHAR(20) NOT NULL,
	NOMMONEDA VARCHAR(50) NOT NULL,
	idEMPLEADO VARCHAR(250) NOT NULL,
	FECSISTEMA date NOT NULL,
	DIRMAC INTEGER NOT NULL,
	ESTADO VARCHAR (20) NOT NULL,
	CONSTRAINT U_MONEDA_id_MONEDA UNIQUE (id_MONEDA)
)	
GO

INSERT INTO TRABAJOS_SQL.dbo.MONEDA VALUES(18392, 'SOLES','DOLAR', 145308, '2021-01-04',243444, 'COMPLETO');
GO

select*from TRABAJOS_SQL.dbo.MONEDA;
go


CREATE TABLE TRABAJOS_SQL.dbo.DOC_VENTA(
	id_DOC_VENTA INT NOT NULL
	CONSTRAINT PK_DOC_VENTA PRIMARY KEY,
	id_MONEDA int NOT NULL
	CONSTRAINT FK_DOC_VENTA_MONEDA
		FOREIGN KEY(id_MONEDA) 
		REFERENCES dbo.MONEDA(id_MONEDA),

	COTIZACION INTEGER NOT NULL,
	FECSISTEMA date NOT NULL,
	DIRMAC INTEGER NOT NULL,
	ESTADO VARCHAR(20) NOT NULL,
	CONSTRAINT U_DOC_VENTA_id_DOC_VENTA UNIQUE (id_DOC_VENTA)
)
GO

INSERT INTO TRABAJOS_SQL.dbo.DOC_VENTA VALUES(19492,18392, 20000357,'2021-01-04',267444, 'COMPLETO');
GO

select*from TRABAJOS_SQL.dbo.DOC_VENTA;
go