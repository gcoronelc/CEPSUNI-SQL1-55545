-- Ejemplo 02
-- PRIMARY KEY


-- Caso 1

drop table DEMO01.dbo.articulo;
go

CREATE TABLE DEMO01.dbo.articulo(
	id INT NOT NULL IDENTITY(1000,5) 
		CONSTRAINT pk_articulo PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
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
	CONSTRAINT pk_articulo PRIMARY KEY(id)
)
GO

select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS;
go


SET IDENTITY_INSERT dbo.articulo ON;
GO

insert into demo01.dbo.articulo(id,nombre,pre_costo,pre_venta,stock)
values(1,'Producto 1', 500.0, 200.0, -100 );
go

insert into demo01.dbo.articulo(id,nombre,pre_costo,pre_venta,stock)
values(1,'Producto 2', 500.0, 200.0, -100 );
go

SET IDENTITY_INSERT dbo.articulo OFF;
GO

insert into demo01.dbo.articulo(nombre,pre_costo,pre_venta,stock)
values('Producto 4', 500.0, 200.0, 800 );
go

insert into demo01.dbo.articulo(nombre,pre_costo,pre_venta,stock)
values('Producto ABC', 500.0, 200.0, 800 );
go


select * from DEMO01.dbo.articulo;
go







