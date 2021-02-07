-- Ejemplo 02
-- UNIQUE


-- Caso 1

drop table DEMO01.dbo.articulo;
go

CREATE TABLE DEMO01.dbo.articulo(
	id INT NOT NULL IDENTITY(1000,5) 
		CONSTRAINT pk_articulo PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL 
	    CONSTRAINT U_ARTICULO_NOMBRE UNIQUE,
	pre_costo MONEY NOT NULL,
	pre_venta MONEY NOT NULL,
	stock INT NOT NULL
)
GO

select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS;
go

-- Caso 2

drop table DEMO01.dbo.articulo;
go

CREATE TABLE DEMO01.dbo.articulo(
	id INT NOT NULL IDENTITY(1000,5), 
	nombre VARCHAR(100) NOT NULL,
	pre_costo MONEY NOT NULL,
	pre_venta MONEY NOT NULL,
	stock INT NOT NULL,
	CONSTRAINT pk_articulo PRIMARY KEY(id),
	CONSTRAINT u_articulo_nombre UNIQUE(nombre)
)
GO

select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS;
go


insert into demo01.dbo.articulo(nombre,pre_costo,pre_venta,stock)
values('Producto 1', 500.0, 200.0, 100 );
go

insert into demo01.dbo.articulo(nombre,pre_costo,pre_venta,stock)
values('Producto 1', 900.0, 2100.0, 100 );
go

insert into demo01.dbo.articulo(nombre,pre_costo,pre_venta,stock)
values('Producto 2', 900.0, 2100.0, 100 );
go

insert into demo01.dbo.articulo(nombre,pre_costo,pre_venta,stock)
values(null, 500.0, 200.0, 800 );
go

-- Caso 3

drop table DEMO01.dbo.articulo;
go

CREATE TABLE DEMO01.dbo.articulo(
	id INT NOT NULL IDENTITY(1000,5), 
	nombre VARCHAR(100) NULL,
	pre_costo MONEY NOT NULL,
	pre_venta MONEY NOT NULL,
	stock INT NOT NULL,
	CONSTRAINT pk_articulo PRIMARY KEY(id),
	CONSTRAINT u_articulo_nombre UNIQUE(nombre)
)
GO

insert into demo01.dbo.articulo(nombre,pre_costo,pre_venta,stock)
values('Producto 1', 500.0, 200.0, 800 );
go

insert into demo01.dbo.articulo(nombre,pre_costo,pre_venta,stock)
values(null, 500.0, 200.0, 800 );
go

-- ¿Se puede? 
-- NO. Solo puede existir un producto con nombre NULL
insert into demo01.dbo.articulo(nombre,pre_costo,pre_venta,stock)
values(null, 789.0, 2345.0, 900 );
go

select * from DEMO01.dbo.articulo;
go







