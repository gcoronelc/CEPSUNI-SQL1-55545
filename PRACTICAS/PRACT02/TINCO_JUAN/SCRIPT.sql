
CREATE TABLE Categoria
( 
	IdCategoria          int IDENTITY ( 1,1 ) ,
	NomCategoria         varchar(25)  NOT NULL ,
	Prefijo              char(3)  NOT NULL ,
	ConCategoria         int  NOT NULL ,
	CONSTRAINT XPKCategoria PRIMARY KEY (IdCategoria ASC)
)
go

SET IDENTITY_INSERT dbo.Categoria ON;
go

insert into dbo.Categoria(IdCategoria,NomCategoria,Prefijo,ConCategoria) 
values(1,'Consumo masivo', 'con', 111);
go

insert into dbo.Categoria(IdCategoria,NomCategoria,Prefijo,ConCategoria) 
values(2,'Molienda', 'mol', 222);
go


set identity_insert dbo.categoria off;
go

select*from Categoria;
go

CREATE TABLE Articulo
( 
	IdArticulo           varchar(8)  NOT NULL ,
	IdCategoria          int  NOT NULL ,
	NomArticulo          varchar(35)  NOT NULL ,
	PreArticulo          money  NOT NULL ,
	CONSTRAINT XPKArticulo PRIMARY KEY (IdArticulo ASC),
	CONSTRAINT R_12 FOREIGN KEY (IdCategoria) REFERENCES Categoria(IdCategoria)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go

insert into dbo.Articulo(IdArticulo,IdCategoria,NomArticulo,PreArticulo) 
values(1001,1, 'Cacao', 70);
go

insert into dbo.Articulo(IdArticulo,IdCategoria,NomArticulo,PreArticulo) 
values(1007,1, 'Margarina', 29);
go

insert into dbo.Articulo(IdArticulo,IdCategoria,NomArticulo,PreArticulo) 
values(1016,1, 'Tomate', 300);
go

insert into dbo.Articulo(IdArticulo,IdCategoria,NomArticulo,PreArticulo) 
values(1002,2, 'Trigo', 900);
go

insert into dbo.Articulo(IdArticulo,IdCategoria,NomArticulo,PreArticulo) 
values(1003,2, 'Soya', 110);
go

insert into dbo.Articulo(IdArticulo,IdCategoria,NomArticulo,PreArticulo) 
values(1004,2, 'Palma de aceite', 400);
go

insert into dbo.Articulo(IdArticulo,IdCategoria,NomArticulo,PreArticulo) 
values(1008,2,'Peroxido de Hidrogeno',25);
go

insert into dbo.Articulo(IdArticulo,IdCategoria,NomArticulo,PreArticulo) 
values(1009,2,'Hiplocortio de Sodio',30);
go

insert into dbo.Articulo(IdArticulo,IdCategoria,NomArticulo,PreArticulo) 
values(1011,2,'Camaron',20);
go

insert into dbo.Articulo(IdArticulo,IdCategoria,NomArticulo,PreArticulo) 
values(1015,1,'Maiz girasol',500);
go

insert into dbo.Articulo(IdArticulo,IdCategoria,NomArticulo,PreArticulo) 
values(1014,2,'Bonito',45);
go

insert into dbo.Articulo(IdArticulo,IdCategoria,NomArticulo,PreArticulo) 
values(1017,2,'Sal industrial',200);
go

select*from Articulo;
go

CREATE TABLE Proveedor
( 
	IdProveedor          char(6)  NOT NULL ,
	NomProveedor         varchar(35)  NOT NULL ,
	RUC                  char(11)  NOT NULL ,
	DirProveedor         varchar(60)  NOT NULL ,
	TelProveedor         char(9)  NULL ,
	Email                varchar(40)  NULL ,
	Clave                varchar(10)  NULL ,
	CONSTRAINT XPKProveedor PRIMARY KEY (IdProveedor ASC),
	CONSTRAINT U_PROVEEDOR_RUC UNIQUE (RUC),
)
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2056, 'INVERSIONES DT1 SAC', 20341252483,'Callao',903959571,'INVERSIOESDT1SAC@gmail.com',9374235416);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2001, 'Tucaco', 20341252483,'Callao',903959571,'Tucacao@gmail.com',9374231016);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2002, 'ManteDeli', 20610135156,'SMP',920066727,'ManteDeli@gmail.com',9135331476);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2003, 'Pastelini', 20642244842,'Chorrillos',958786649,'Pastelini@gmail.com',8518456935);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2004, 'Trigoberto', 20122895205,'Lince',913445863,'Trigoberto@gmail.com',8902472753);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2005, 'Delisoya', 20034271465,'Rimac',901007797,'Delisoya@gmail.com',3783345025);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2006, 'Aceitoso', 20386523545,'San Miguel',945046183,'Aceitoso@gmail.com',4207394272);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2041,'PESQUERA SAN ANDRES DEL SUR S.A.',20117871852,'Ancon',3954885,'PESQUERASANANDRES@gmail.com',4756071508);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2042,'CIA. INVERSIONES MINERAS Y AGRICOLA',20128425978,'Ate Vitarte',3144885,'CIA.INVERSIONESMINERAS@gmail.com',6448003422
);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2043,'ITALO MARITIMA S.A. - ITALMAR',20228196585,'Barranco',3954895,'ITALOMARITIMAS.A.@gmail.com',5180651862);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2044,'MOLINO LA PERLA S.A.C.',20131589086,'Breña',3954585,'MOLINOLAPERLA@gmail.com',9118054986);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2045,'INVERSIONES LA RIOJA S.A.' ,20334766714,'Carabayllo',3947565,'INVERSIONESLARIOJA@gmail.com',2266159708);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2046,'TECNICA AVICOLA S.A.',20505120702,'Chaclacayo',3954243,'TECNICAAVICOLAS.A.@gmail.com',2250695914);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2047,'PESQUERA CENTINELA S.A.C.',20278966004,'Chorrillos',3910885,'PESQUERACENTINELAS.A.C.@gmail.com',6148882098);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2048,'ACUICOLA SANTA ISABEL SAC',20484136689,'Cieneguilla',3984885,'ACUICOLASANTAISABEL@gmail.com',6156534532);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2049,'PESQUERA ARYAL S.A.',20379689788,'Comas',3424885,'PESQUERAARYALS.A.@gmail.com',9698123588);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2050,'CONSORCIO TERMINALES' ,20382631294,'El Agustino',3950085,'CONSORCIOTERMINALES@gmail.com',3270364030);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2051,'PESQUERA EXALMAR S.A.A.',20380336384,'Independencia',3454885,'PESQUERAEXALMARS.A.A.@gmail.com',6229228613);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2052,'CARTAVIO RUM COMPANY S.A.C.',20222335052,'Jesus Maria',3954635,'CARTAVIORUMCOMPANY@gmail.com',9138824884);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2053,'PESQUERA CANTABRIA S.A.',20504595863,'La Molina',3528885,'PESQUERACANTABRIAS.A.@gmail.com',2905551132);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2054,'INVERSIONES H.B. & M S.A.C.',20601162980,'La Victoria',3983885,'INVERSIONESH.B.&@gmail.com',7958768360);
go

insert into dbo.Proveedor(IdProveedor,NomProveedor,RUC,DirProveedor,TelProveedor,Email,Clave) 
values(2055,'TECNOLOGICA DE ALIMENTOS S.A.',20100971772,'Lima',3463885,'TECNOLOGICADEALIMENTOS@gmail.com',5476191308);
go

select*from Proveedor;
go

CREATE TABLE Empleado
( 
	IdEmpleado           char(6)  NOT NULL ,
	ApeEmpleado          varchar(20)  NOT NULL ,
	NomEmpleado          varchar(20)  NOT NULL ,
	DirEmpleado          varchar(60)  NULL ,
	TelEmpleado          char(9)  NULL ,
	Contraseña           varchar(10)  NOT NULL ,
	CONSTRAINT XPKEmpleado PRIMARY KEY (IdEmpleado ASC),
)
go


insert into dbo.Empleado(IdEmpleado,ApeEmpleado,NomEmpleado,DirEmpleado,TelEmpleado,Contraseña) 
values(3001,'Lopez','Julian','Chorrillos',944893097,1596875369);
go

insert into dbo.Empleado(IdEmpleado,ApeEmpleado,NomEmpleado,DirEmpleado,TelEmpleado,Contraseña) 
values(3002,'Vilchez','Miguel','Comas',977731381,5638425988);
go

insert into dbo.Empleado(IdEmpleado,ApeEmpleado,NomEmpleado,DirEmpleado,TelEmpleado,Contraseña) 
values(3006,'Oscco Odria','Vanesa','Barranco',931474429,1756323461);
go

insert into dbo.Empleado(IdEmpleado,ApeEmpleado,NomEmpleado,DirEmpleado,TelEmpleado,Contraseña) 
values(3005,'Gutierrez Alvarado','Enrique' ,'Ate Vitarte',931574758,1474856231);
go

select*from Empleado;
go

CREATE TABLE Documento
( 
	NumDocumento         int  NOT NULL ,
	IdDocumento          int IDENTITY ( 1,1 ) ,
	NomDocumento         varchar(10)  NULL ,
	Serie                int  NOT NULL ,
	CONSTRAINT XPKDocumento PRIMARY KEY (NumDocumento ASC)
)
go

SET IDENTITY_INSERT dbo.Documento ON;
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(1,01,'Factura',1);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(2,01,'Factura',2);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(3,01,'Factura',3);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(4,01,'Factura',4);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(5,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(6,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(7,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(8,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(9,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(10,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(11,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(12,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(13,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(14,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(15,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(16,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(17,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(18,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(19,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(20,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(41,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(42,03,'Boleta',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(43,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(44,03,'Boleta',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(45,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(46,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(47,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(48,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(49,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(50,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(51,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(52,03,'Boleta',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(53,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(54,03,'Boleta',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(55,01,'Factura',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(56,03,'Boleta',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(57,03,'Boleta',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(58,03,'Boleta',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(59,03,'Boleta',0001);
go

insert into dbo.Documento(NumDocumento,IdDocumento,NomDocumento,Serie) 
values(60,01,'Factura',0001);
go

SET IDENTITY_INSERT dbo.Documento OFF;
go

select*from Documento;
go

CREATE TABLE Pedido
( 
	IdPedido             int  NOT NULL ,
	NumDocumento         int  NOT NULL ,
	IdProveedor          char(6)  NULL ,
	IdEmpleado           char(6)  NOT NULL ,
	NomProveedor         varchar(35)  NULL ,
	Fecha                datetime  NOT NULL ,
	Monto                money  NOT NULL ,
	IGV                  money  NOT NULL ,
	Total                money  NOT NULL ,
	Delivery             int  NOT NULL,
	Estado               smallint  NOT NULL ,
	CONSTRAINT XPKPedido PRIMARY KEY (IdPedido ASC),
	CONSTRAINT CK_PEDIDO_DELIVERY CHECK (Delivery= 0 or delivery = 1),
	CONSTRAINT R_4 FOREIGN KEY (IdProveedor) REFERENCES Proveedor(IdProveedor)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_9 FOREIGN KEY (IdEmpleado) REFERENCES Empleado(IdEmpleado)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_19 FOREIGN KEY (NumDocumento) REFERENCES Documento(NumDocumento)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5062,62,2001,3001,'INVERSIONES M5 SAC','20200107',8820,1587.6,10407.6,3,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5061,1,2001,3001,'INVERSIONES M6 SAC','20200107',8820,1587.6,10407.6,3,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5001,1,2001,3001,'Tucacao','20200107',8820,1587.6,10407.6,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5002,2,2001,3001,'Tucacao','20200207',8470,1524.6,9994.6,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5003,3,2001,3001,'Tucacao','20200307',3850,693,4543,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5004,4,2001,3001,'Tucacao','20200407',10430,1877.4,12307.4,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5005,5,2002,3001,'ManteDeli','20200110',3741,673.38,4414.38,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5006,6,2002,3001,'ManteDeli','20200210',2262,407.16,2669.16,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5007,7,2002,3001,'ManteDeli','20200310',3625,652.5,4277.5,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5008,8,2003,3001,'Pastelini','20200105',19200,3456,22656,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5009,9,2003,3001,'Pastelini','20200205',25800,4644,30444,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5010,10,2003,3001,'Pastelini','20200306',38400,6912,45312,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5011,11,2004,3002,'Trigoberto','20200121',84600,15228,99828,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5012,12,2004,3002,'Trigoberto','20200221',117900,21222,139122,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5013,13,2004,3002,'Trigoberto','20200322',123300,22194,145494,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5014,14,2004,3002,'Trigoberto','20200421',127800,23004,150804,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5015,15,2005,3002,'Delisoya','20200115',15620,2811.6,18431.6,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5016,16,2005,3002,'Delisoya','20200215',5500,990,6490,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5017,17,2005,3002,'Delisoya','20200315',9790,1762.2,11552.2,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5018,18,2006,3002,'Aceitoso','20200117',52400,9432,61832,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5019,19,2006,3002,'Aceitoso','20200217',38400,6912,45312,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5020,20,2006,3002,'Aceitoso','20200317',20400,3672,24072,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5041,41,2041,3006,'PESQUERA SAN ANDRES DEL SUR S.A.','20200902',725,130.5,855.5,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5042,42,2042,3005,'CIA. INVERSIONES MINERAS Y AGRICOLA','20200902',14500,2610,17110,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5043,43,2043,3006,'ITALO MARITIMA S.A. - ITALMAR','20200902',3300,594,3894,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5044,44,2044,3006,'MOLINO LA PERLA S.A.C.','20200902',300,54,354,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5045,45,2045,3006,'INVERSIONES LA RIOJA S.A.' ,'20200902',930,167.4,1097.4,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5046,46,2046,3006,'TECNICA AVICOLA S.A.','20201015',1650,297,1947,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5047,47,2047,3006,'PESQUERA CENTINELA S.A.C.','20201015',6000,1080,7080,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5048,48,2048,3006,'ACUICOLA SANTA ISABEL SAC','20201015',5000,900,5900,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5049,49,2049,3005,'PESQUERA ARYAL S.A.','20201015',13600,2448,16048,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5050,50,2050,3006,'CONSORCIO TERMINALES' ,'20201015',29700,5346,35046,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5051,51,2051,3006,'PESQUERA EXALMAR S.A.A.','20201111',6300,1134,7434,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5052,52,2052,3006,'CARTAVIO RUM COMPANY S.A.C.','20201111',3080,554.4,3634.4,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5053,53,2053,3005,'PESQUERA CANTABRIA S.A.','20201111',720,129.6,849.6,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5054,54,2054,3005,'INVERSIONES H.B. & M S.A.C.','20201111',464,83.52,547.52,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5055,55,2055,3005,'TECNOLOGICA DE ALIMENTOS S.A.','20201123',15200,2736,17936,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5056,56,2047,3006,'PESQUERA CENTINELA S.A.C.','20201123',1665,299.7,1964.7,1,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5057,57,2048,3006,'ACUICOLA SANTA ISABEL SAC','20201221',21600,3888,25488,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5058,58,2049,3005,'PESQUERA ARYAL S.A.','20201221',30600,5508,36108,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5059,59,2050,3006,'CONSORCIO TERMINALES' ,'20201221',43200,7776,50976,0,5);
go

insert into dbo.Pedido(IdPedido,NumDocumento,IdProveedor,IdEmpleado,NomProveedor,Fecha,Monto,IGV,Total,Delivery,Estado) 
values(5060,60,2051,3005,'PESQUERA EXALMAR S.A.A.','20201221',10800,1944,12744,1,5);
go

select*from Pedido;
go

CREATE TABLE DetallePedido
( 
	IdPedido             int  NOT NULL ,
	IdArticulo           varchar(8)  NOT NULL ,
	Cantidad             int  NOT NULL ,
	Preventa             money  NOT NULL ,
	Subtotal             money  NOT NULL ,
	CONSTRAINT XPKDetallePedido PRIMARY KEY (IdPedido ASC,IdArticulo ASC),
	CONSTRAINT R_10 FOREIGN KEY (IdArticulo) REFERENCES Articulo(IdArticulo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_11 FOREIGN KEY (IdPedido) REFERENCES Pedido(IdPedido)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go

insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal) 
values(5001,1001,126,70,8820);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5002,1001,121,70,8470);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal) 
values(5003,1001,55,70,3850);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5004,1001,149,70,10430);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5005,1007,129,29,3741);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5006,1007,78,29,2262);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal) 
values(5007,1007,125,29,3625);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5008,1016,64,300,19200);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal) 
values(5009,1016,86,300,25800);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal) 
values(5010,1016,128,300,38400);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5011,1002,94,900,84600);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal) 
values(5012,1002,131,900,117900);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal) 
values(5013,1002,137,900,123300);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5014,1002,142,900,127800);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5015,1003,142,110,15620);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5016,1003,50,110,5500);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal) 
values(5017,1003,89,110,9790);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5018,1004,131,400,52400);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal) 
values(5019,1004,96,400,38400);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5020,1004,51,400,20400);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5041,1008,29,25,725);
go

insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5042,1015,29,500,14500);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5043,1003,30,110,3300);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5044,1011,15,20,300);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5045,1009,31,30,930);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5046,1003,15,110,1650);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5047,1004,15,400,6000);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5048,1017,25,200,5000);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5049,1004,34,400,13600);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5050,1002,33,900,29700);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5051,1016,21,300,6300);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5052,1003,28,110,3080);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5053,1011,36,20,720);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5054,1007,16,29,464);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5055,1004,38,400,15200);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5056,1014,37,45,1665);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5057,1002,24,900,21600);
go

insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5058,1002,34,900,30600);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5059,1002,48,900,43200);
go
insert into dbo.DetallePedido(IdPedido,IdArticulo,Cantidad,Preventa,Subtotal)
values(5060,1016,36,300,10800);
go


select*from DetallePedido;
go
