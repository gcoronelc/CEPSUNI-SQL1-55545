-- Ejemplo 02
-- IDENTITY
-- SET IDENTITY_INSERT [ [ database_name . ] schema_name . ] table_name { ON | OFF } 

/*

Habilita la inserción de valores explicitos en columnas IDENTITY.
Solo se puede habilitar una tabla a la vez.

SET IDENTITY_INSERT dbo.articulo ON;
GO

INSERT INTO ARTICULO( id, nombre, .... ) VALUES( 500, ..... );
INSERT INTO ARTICULO( id, nombre, .... ) VALUES( 501, ..... );
INSERT INTO ARTICULO( id, nombre, .... ) VALUES( 502, ..... );
GO

SET IDENTITY_INSERT dbo.articulo OFF;
GO

*/


drop table DEMO01.dbo.articulo;
go

CREATE TABLE DEMO01.dbo.articulo(
	id INT NOT NULL IDENTITY(1000,5),
	nombre VARCHAR(100) NOT NULL,
	pre_costo MONEY NOT NULL,
	pre_venta MONEY NOT NULL,
	stock INT NOT NULL
)
GO

SET IDENTITY_INSERT dbo.articulo ON;
GO

insert into demo01.dbo.articulo(id,nombre,pre_costo,pre_venta,stock)
values(1,'Producto 1', 500.0, 200.0, -100 );
go

insert into demo01.dbo.articulo(id,nombre,pre_costo,pre_venta,stock)
values(2,'Producto 2', 500.0, 200.0, -100 );
go

insert into demo01.dbo.articulo(id,nombre,pre_costo,pre_venta,stock)
values(3,'Producto 3', 500.0, 200.0, 60 );
go

SET IDENTITY_INSERT dbo.articulo OFF;
GO

insert into demo01.dbo.articulo(nombre,pre_costo,pre_venta,stock)
values('Producto 4', 500.0, 200.0, 800 );
go

SET IDENTITY_INSERT dbo.articulo ON;
GO

insert into demo01.dbo.articulo(id,nombre,pre_costo,pre_venta,stock)
values(2000,'Producto 2000', 500.0, 200.0, -100 );
go

SET IDENTITY_INSERT dbo.articulo OFF;
GO

insert into demo01.dbo.articulo(nombre,pre_costo,pre_venta,stock)
values('Producto ABC', 500.0, 200.0, 800 );
go


select * from DEMO01.dbo.articulo;
go







