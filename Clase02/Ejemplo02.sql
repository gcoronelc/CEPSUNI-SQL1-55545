-- Ejemplo 02
-- IDENTITY

/*

IDENTITY(1,1): Inicia en 1 y se incrementa de 1 en 1

IDENTITY(1000,2): Inicia en 1000 y se incrementa de 2 en 2

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


insert into demo01.dbo.articulo(nombre,pre_costo,pre_venta,stock)
values('Producto 1', 500.0, 200.0, -100 );
go

insert into demo01.dbo.articulo(nombre,pre_costo,pre_venta,stock)
values('Producto 2', 500.0, 200.0, -100 );
go

insert into demo01.dbo.articulo(nombre,pre_costo,pre_venta,stock)
values('Producto 3', 500.0, 200.0, null );
go

insert into demo01.dbo.articulo(nombre,pre_costo,pre_venta,stock)
values('Producto 3', 500.0, 200.0, 60 );
go

select * from DEMO01.dbo.articulo;
go







