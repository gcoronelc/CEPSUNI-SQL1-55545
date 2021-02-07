
insert into demo01.dbo.articulo(nombre,pre_costo,pre_venta,stock)
select nombre, pcosto, pventa, stock from dbo.productos;
go

select * from dbo.articulo;
go

