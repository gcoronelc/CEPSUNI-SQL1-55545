create database pc1

create table pc1.dbo.paciente(
idpac int identity(1,1) not null constraint pk_paciente primary key,
nom varchar(100) not null,
fecha_nac date not null, 
dni char(8) not null CONSTRAINT u_doc_pac UNIQUE
)
GO

create table pc1.dbo.odontologo(
iddoc char(5) not null constraint pk_doc primary key, 
nom_doc varchar(100) not null,
)
go

create table pc1.dbo.tecnico(
idtec char(5) not null constraint pk_tec primary key, 
nom_tec varchar(100) not null,
)
go
create table pc1.dbo.medico(
idmedico char(5) not null constraint pk_med primary key, 
nom_medico varchar(100) not null,
)
go
create table pc1.dbo.orden(
idord int identity(1,1) constraint pk_tec2 primary key,
tipo text, /*existen 3 tipos de placas */
fecha date not null,
idpac int not null, constraint fk_paciente foreign key (idpac) references paciente,
iddoc char(5) not null, constraint fk_doc foreign key (iddoc) references odontologo,
)
go

create table pc1.dbo.pago(
idpago char(5) not null constraint pk_pago primary key,
metodo varchar(20), 
fecha date not null,
monto char(5) not null,
nom_pag varchar(60) not null,
idpac int not null, constraint fk_paciente1 foreign key (idpac) references paciente,
)
go



create table pc1.dbo.placa(
idplaca char(5) not null constraint pk_placa primary key,
tipo text, 
fecha date not null,
idpac int not null, constraint fk_paciente2 foreign key (idpac) references paciente,
iddoc char(5) not null, constraint fk_doc1 foreign key (iddoc) references odontologo,
idtec char(5) not null, constraint fk_tecnico1 foreign key (idtec) references tecnico,
)
go

create table pc1.dbo.informe(
idinf char(5) not null constraint pk_informe primary key,
diagnostico varchar(30) not null, 
fecha date not null,
idpac int not null, constraint fk_paciente3 foreign key (idpac) references paciente,
idmedico char(5) not null, constraint fk_med foreign key (idmedico) references medico,
idplaca char(5) not null, constraint fk_placa2 foreign key (idplaca) references placa,
)
go

/* DATOS DE LOS CLIENTES - INSERTAR */
/*TABLA PACIENTE*/
set identity_insert pc1.dbo.paciente on
go

insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(1,'Augusto Morales', '19980704', 72606875);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(2,'Anabel Lucano', '19980830', 73312890);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(3,'Ivan Guerra', '19970513', 72020548);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(4,'Victoria Luján', '20060717', 60411920);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(5,'Carla Cachay', '19930922', 73312891);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(6,'Flavia Gutierrez', '19960125', 72985263);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(7,'Blanca Sifuentes', '19951103', 33327651);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(8,'Luis Cavero', '19670121', 96325413);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(9,'Ignacio Velez', '20000426', 33320201);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(10,'Brenda Damian', '19991023', 26548526);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(11,'Renato Hurtado', '19980517', 45563870);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(12,'Abelardo Cifuentes', '19841030', 53242710);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(13,'Karla rojas', '19890113', 58463215);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00014,'Carmen Echevarría', '20001203', 79554632);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00015,'Victoria Fuentes', '19790322', 68454550);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00016,'Grimanesa Chero', '19981115', 72851645);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00017,'Fiorella Campos', '19741223', 54129867);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00018,'César Cañote', '19840506', 94875329);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00019,'Daniela Santander', '20020830', 98412567);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00020,'Anthony Malpartida', '19970126', 87459655);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00021,'Luis Diaz', '19950613', 72020021);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00022,'Paolo Ruiz', '19870615', 72020022);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00023,'Ana Ilave', '19890118', 72020023);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00024,'Paola Puentes', '19950825', 72020024);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00025,'Pedro Quispe', '19880222', 72020025);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00026,'Alex Quispe', '19890225', 72020026);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00027,'Aron Flores', '19990930', 72020027);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00028,'Alexia Chumbe', '19911030', 72020028);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00029,'Marcos Piedra', '19850520', 72020029);
go
insert into pc1.dbo.paciente(idpac,nom,fecha_nac,dni)
values(00030,'Miguel Bravo', '19970320', 72020030);
go
set identity_insert pc1.dbo.paciente off
go
select * from pc1.dbo.paciente
go


/* TABLA ODONTOLOGO*/

insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10001,'Ronald Aliaga')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10002,'Pedro Avila')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10003,'Marco Tolentino')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10004,'Eduardo Rebaza')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10005,'Maximiliano Palomino')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10006,'Sirena Juarez')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10007,'Tomas Fajardo')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10008,'Paolo Tamariz')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10009,'Rosa Camacho')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10010,'Leslye Quintana')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10011,'Alberto Zúñiga')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10012,'Ronald Valdivieso')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10013,'Andy marquina')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10014,'Rebeca cavero')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10015,'Oscar Zúñiga')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10016,'Mesías Gonzáles')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10017,'Enrique Samudio')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10018,'Génesis Hernández')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10019,'Claudia Peralda')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10020,'Marcelo Véliz')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10021,'Pool Vazques')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10022,'Sergio Piedra')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10023,'Romulo Anchante')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10024,'Pedro Prado')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10025,'Piero Barco')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10026,'Roberto Lopes')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10027,'Ana Mantari')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10028,'Isabel Torres')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10029,'Gladys Meza')
go
insert into pc1.dbo.odontologo(iddoc,nom_doc)
values(10030,'Alonso Peña')
go

select * from pc1.dbo.odontologo
go

/*Tabla tecnico*/

insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20001,'Alan Paredes')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20002,'Juan Salinas')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20003,'Ariana Maldonado')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20004,'Alan Paredes')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20005,'Juan Salinas')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20006,'Ariana Maldonado')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20007,'Alan Paredes')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20008,'Juan Salinas')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20009,'Ariana Maldonado')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20010,'Alan Paredes')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20011,'Juan Salinas')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20012,'Ariana Maldonado')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20013,'Alan Paredes')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20014,'Juan Salinas')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20015,'Ariana Maldonado')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20016,'Alan Paredes')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20017,'Juan Salinas')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20018,'Ariana Maldonado')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20019,'Alan Paredes')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20020,'Juan Salinas')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20021,'Juan Salinas')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20022,'Alan Paredes')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20023,'Ariana Maldonado')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20024,'Ariana Maldonado')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20025,'Alan Paredes')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20026,'Juan Salinas')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20027,'Alan Paredes')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20028,'Ariana Maldonado')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20029,'Juan Salinas')
go
insert into pc1.dbo.tecnico(idtec,nom_tec)
values(20030,'Alan Paredes')
go

select*from	pc1.dbo.tecnico
go

/*tabla médico*/
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30001,'Patricia Esquivel')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30002,'Patrick Blas')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30003,'Andrea Duarez')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30004,'Patricia Esquivel')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30005,'Patrick Blas')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30006,'Andrea Duarez')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30007,'Patricia Esquivel')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30008,'Patrick Blas')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30009,'Andrea Duarez')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30010,'Patricia Esquivel')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30011,'Patrick Blas')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30012,'Andrea Duarez')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30013,'Patricia Esquivel')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30014,'Patrick Blas')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30015,'Andrea Duarez')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30016,'Patricia Esquivel')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30017,'Patrick Blas')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30018,'Andrea Duarez')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30019,'Patricia Esquivel')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30020,'Patrick Blas')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30021,'Patrick Blas')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30022,'Patricia Esquivel')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30023,'Andrea Duarez')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30024,'Patricia Esquivel')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30025,'Patrick Blas')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30026,'Andrea Duarez')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30027,'Patrick Blas')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30028,'Patricia Esquivel')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30029,'Andrea Duarez')
go
insert into pc1.dbo.medico(idmedico,nom_medico)
values(30030,'Patricia Esquivel')
go


/* tabla orden*/
set identity_Insert pc1.dbo.orden on;
go

insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(1,'A','20130815',00001,10001)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(2,'B','20130816',00002,10002)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(3,'C','20130817',00003,10003)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(4,'C','20160915',00004,10004)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(5,'B','20180626',00005,10005)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(6,'A','20101130',00006,10006)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(7,'C','20131220',00007,10007)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(8,'A','20190317',00008,10008)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(9,'B','20170925',00009,10009)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(10,'A','20210201',00010,10010)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(11,'A','20160405',00011,10011)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(12,'B','20190606',00012,10012)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(13,'C','20181030',00013,10013)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(14,'C','20191125',00014,10014)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(15,'B','20161109',00015,10015)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(16,'A','20150727',00016,10016)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(17,'C','20140519',00017,10017)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(18,'A','20161205',00018,10018)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(19,'B','20160301',00019,10019)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(20,'A','20201006',00020,10020)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(21,'B','20131016',00021,10021)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(22,'B','20131017',00022,10022)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(23,'B','20131017',00023,10023)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(24,'C','20131016',00024,10024)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(25,'A','20131018',00025,10025)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(26,'C','20131017',00026,10026)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(27,'A','20131018',00027,10027)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(28,'B','20131019',00028,10028)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(29,'A','20131018',00029,10029)
go
insert into pc1.dbo.orden(idord,tipo,fecha, idpac, iddoc)
values(30,'B','20131017',00030,10030)
go
set identity_insert pc1.dbo.orden off;
go
select*from pc1.dbo.orden
go
/*tabla pago*/
insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40001,'Efectivo','20130815',25,'Augusto Morales',00001)
go

insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40002,'Tarjeta Mastercard','20130816',75,'Anabel Lucano',00002)
go

insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40003,'Tarjeta Visa','20130817',85,'Augusto Guerra',00003)
go

insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40004,'Tarjeta Visa','20160915',85,'Lizbeth Cachay',00004)
go

insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40005,'Tarjeta Mastercard','20180626',75,'Renata Rodriguez',00005)
go

insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40006,'Tarjeta Visa','20101130',25,'Carla Ramirez',00006)
go
insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40007,'Efectivo','20131220',85,'Daniel Salinas',00007)
go

insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40008,'Tarjeta Mastercard','20190317',25,'Anabel Lucano',00008)
go

insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40009,'Efectivo','20170925',75,'Juan Castillo',00009)
go
insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40010,'Efectivo','20210201',25,'Patrick Rojas',00010)
go

insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40011,'Efectivo','20160405',50,'Renato Hurtado',00011)
go

insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40012,'Tarjeta Mastercard','20190606',50,'Abelardo Cifuentes',00012)
go

insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40013,'Tarjeta Visa','20181030',60,'Daniela Rojas',00013)
go

insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40014,'Tarjeta Visa','20191125',75,'Carmen Echevarría',00014)
go

insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40015,'Tarjeta Mastercard','20161109',25,'Victoria Fuentes',00015)
go

insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40016,'Tarjeta Visa','20150727',45,'Grimanesa Chero',00016)
go
insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40017,'Efectivo','20140519',75,'Fiorella Campos',00017)
go

insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40018,'Tarjeta Mastercard','20161205',75,'César Cañote',00018)
go

insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40019,'Efectivo','20160301',75,'Daniela Santander',00019)
go
insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40020,'Efectivo','20201006',50,'Anthony Malpartida',00020)
go
insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40021,'Efectivo','20131016',45,'Luis Diaz',00021)
go
insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40022,'Tarjeta Visa','20131017',75,'Paolo Ruiz',00022)
go
insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40023,'Tarjeta Visa','20131017',75,'Ana Ilave',00023)
go
insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40024,'Tarjeta Mastercard','20131016',75,'Paola Puentes',00024)
go
insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40025,'Efectivo','20131018',25,'Pedro Quispe',00025)
go
insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40026,'Tarjeta Visa','20131017',85,'Alex Quispe',00026)
go
insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40027,'Tarjeta Mastercard','20131018',85,'Aron Flores',00027)
go
insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40028,'Efectivo','20131019',25,'Alexia Chumbe',00028)
go
insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40029,'Tarjeta Visa','20131018',75,'Marcos Piedra',00029)
go
insert into pc1.dbo.pago(idpago,metodo,fecha,monto,nom_pag,idpac)
values (40030,'Tarjeta Mastercard','20131017',85,'Miguel Bravo',00030)
go

select*from pc1.dbo.pago
go

/*Tabla placa*/
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50001,'A','20130820',00001,10001,20001)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50002,'B','20130820',00002,10002,20002)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50003,'C','20130821',00003,10003,20003)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50004,'C','20160920',00004,10004,20004)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50005,'B','20180630',00005,10005,20005)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50006,'A','20101202',00006,10006,20006)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50007,'C','20131227',00007,10007,20007)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50008,'A','20190322',00008,10008,20008)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50009,'B','20170930',00009,10009,20009)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50010,'A','20210205',00010,10010,20010)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50011,'A','20160405',00011,10011,20011)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50012,'B','20190606',00012,10012,20012)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50013,'C','20181030',00013,10013,20013)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50014,'C','20191125',00014,10014,20014)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50015,'B','20161109',00015,10015,20015)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50016,'A','20150727',00016,10016,20016)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50017,'C','20140519',00017,10017,20017)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50018,'A','20161205',00018,10018,20018)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50019,'B','20160301',00019,10019,20019)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50020,'A','20201006',00020,10020,20020)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50021,'B','20131016',00021,10021,20021)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50022,'B','20131017',00022,10022,20022)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50023,'B','20131017',00023,10023,20023)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50024,'C','20131016',00024,10024,20024)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50025,'A','20131018',00025,10025,20025)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50026,'C','20131017',00026,10026,20026)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50027,'A','20131018',00027,10027,20027)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50028,'B','20131019',00028,10028,20028)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50029,'A','20131018',00029,10029,20029)
go
insert into pc1.dbo.placa(idplaca,tipo, fecha, idpac, iddoc, idtec)
values (50030,'B','20131017',00030,10030,20030)
go
SELECT*FROM placa
go


/*tabla informe*/
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60001,'No presenta anomalías', '20130818',00001,30001,50001)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60002,'Presenta anomalías', '20130820',00002,30002,50002)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60003,'Presenta anomalías', '20130825',00003,30003,50003)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60004,'No presenta anomalías', '20160920',00004,30004,50004)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60005,'No presenta anomalías', '20180630',00005,30005,50005)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60006,'Presenta anomalías', '20101202',00006,30006,50006)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60007,'No presenta anomalías', '20131227',00007,30007,50007)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60008,'Presenta anomalías', '20190322',00008,30008,50008)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60009,'No presenta anomalías', '20170930',00009,30009,50009)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60010,'Presenta anomalías', '20210205',00010,30010,50010)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60011,'No presenta anomalías', '20160410',00011,30011,50011)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60012,'Presenta anomalías', '20190613',00012,30012,50012)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60013,'Presenta anomalías', '20181105',00013,30013,50013)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60014,'No presenta anomalías', '20191130',00014,30014,50014)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60015,'No presenta anomalías', '20161114',00015,30015,50015)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60016,'Presenta anomalías', '20150802',00016,30016,50016)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60017,'No presenta anomalías', '20140524',00017,30017,50017)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60018,'Presenta anomalías', '20161210',00018,30018,50018)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60019,'No presenta anomalías', '20160306',00019,30019,50019)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60020,'Presenta anomalías', '20201011',00020,30020,50020)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60021,'No presenta anomalías', '20131016',00021,30021,50021)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60022,'Presenta anomalías', '20131017',00022,30022,50022)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60023,'Presenta anomalías', '20131017',00023,30023,50023)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60024,'No presenta anomalías', '20131016',00024,30024,50024)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60025,'Presenta anomalías', '20131018',00025,30025,50025)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60026,'Presenta anomalías', '20131017',00026,30026,50026)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60027,'No presenta anomalías', '20131018',00027,30027,50027)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60028,'Presenta anomalías', '20131019',00028,30028,50028)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60029,'Presenta anomalías', '20131018',00029,30029,50029)
go
insert into pc1.dbo.informe(idinf,diagnostico,fecha,idpac,idmedico, idplaca)
values(60030,'Presenta anomalías', '20131017',00030,30030,50030)
go
SELECT*FROM pc1.dbo.informe
go

