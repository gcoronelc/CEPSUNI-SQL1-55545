-- Ejemplo 01

drop table DEMO01.dbo.articulo;
go

CREATE TABLE DEMO01.dbo.articulo(
	art_id INT NOT NULL,
	art_nombre VARCHAR(100) NOT NULL,
	art_pre_costo MONEY NOT NULL,
	art_pre_venta MONEY NOT NULL,
	art_stock INT NOT NULL
)
GO


insert into demo01.dbo.articulo values(500,'Producto 1', 500.0, 200.0, -100 );
go


select * from DEMO01.dbo.articulo;
go







