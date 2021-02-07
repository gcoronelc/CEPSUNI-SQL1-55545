-- Ejemplo 02
-- FOREIGN KEY


drop table DEMO01.dbo.venta;
go

drop table DEMO01.dbo.articulo;
go

-- Tabla ARTICULO

drop table DEMO01.dbo.articulo;
go

CREATE TABLE DEMO01.dbo.articulo(
	idArticulo INT NOT NULL IDENTITY(1000,5), 
	nombre VARCHAR(100) NOT NULL,
	pre_costo MONEY NOT NULL,
	pre_venta MONEY NOT NULL,
	stock INT NOT NULL,
	CONSTRAINT pk_articulo PRIMARY KEY(idArticulo),
	CONSTRAINT u_articulo_nombre UNIQUE(nombre)
)
GO

SET IDENTITY_INSERT dbo.articulo ON;
GO

insert into demo01.dbo.articulo(idArticulo,nombre,pre_costo,pre_venta,stock)
values(500,'Producto 1', 500.0, 200.0, 100 );
go

insert into demo01.dbo.articulo(idArticulo,nombre,pre_costo,pre_venta,stock)
values(501,'Producto 2', 900.0, 2100.0, 230 );
go

insert into demo01.dbo.articulo(idArticulo,nombre,pre_costo,pre_venta,stock)
values(502,'Producto 3', 800.0, 197000.0, 60 );
go

SET IDENTITY_INSERT dbo.articulo ON;
GO

select * from DEMO01.dbo.articulo;
go


-- Tabla VENTA

drop table DEMO01.dbo.venta;
go

CREATE TABLE DEMO01.dbo.venta(
	idVenta INT NOT NULL IDENTITY(1000,5), 
	cliente VARCHAR(100) NOT NULL,
	idArticulo INT NOT NULL,
	pventa MONEY NOT NULL,
	cantidad INT NOT NULL,
	importe MONEY NOT NULL,
	CONSTRAINT pk_venta PRIMARY KEY(idVenta),
	CONSTRAINT fk_venta_articulo 
		FOREIGN KEY(idArticulo) 
		REFERENCES dbo.articulo(idArticulo)
)
GO

insert into demo01.dbo.venta(cliente,idArticulo,pventa,cantidad,importe)
values('Gustavo', 500, 40, 7, 0 );
go


-- Da error, por que no existe el producto 505.
-- Integridad referencial
insert into demo01.dbo.venta(cliente,idArticulo,pventa,cantidad,importe)
values('Karla', 505, 70, 10, 0 );
go

insert into demo01.dbo.venta(cliente,idArticulo,pventa,cantidad,importe)
values('Karla', 500, 70, 10, 0 );
go

insert into demo01.dbo.venta(cliente,idArticulo,pventa,cantidad,importe)
values('Gustavo', 501, 90, 20, 0 );
go

insert into demo01.dbo.venta(cliente,idArticulo,pventa,cantidad,importe)
values('Manuel', 502, 100, 25, 0 );
go

select * from DEMO01.dbo.venta;
go


-- Actualizar el importe

UPDATE dbo.venta 
SET importe = pventa * cantidad;
go

select * from DEMO01.dbo.venta;
go





