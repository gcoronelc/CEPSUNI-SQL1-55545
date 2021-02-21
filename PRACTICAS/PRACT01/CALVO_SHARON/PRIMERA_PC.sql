


CREATE TABLE AEREOPUERTO
( 
	iddato               integer  NOT NULL ,
	nombre               varchar(100)  NOT NULL ,
	idciudad             varchar(100)  NOT NULL ,
	CONSTRAINT XPKAEREOPUERTO PRIMARY KEY (iddato ASC)
)
go



CREATE TABLE AVIÒN
( 
	idmatricula          integer  NOT NULL ,
	idflota              varchar(20)  NOT NULL ,
	idsubflota           varchar(20)  NOT NULL ,
	idbase               varchar(20)  NOT NULL ,
	CONSTRAINT XPKAVIÒN PRIMARY KEY (idmatricula ASC)
)
go



CREATE TABLE BASE
( 
	idbase               varchar(100)  NOT NULL ,
	nombase              varchar(50)  NOT NULL ,
	idciudad             varchar(100)  NOT NULL ,
	iddato               integer  NULL ,
	idmatricula          integer  NOT NULL ,
	CONSTRAINT XPKBASE PRIMARY KEY (idbase ASC),
	CONSTRAINT R_1 FOREIGN KEY (iddato) REFERENCES AEREOPUERTO(iddato)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_4 FOREIGN KEY (idmatricula) REFERENCES AVIÒN(idmatricula)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go



CREATE TABLE TRIPULACIÒN
( 
	idcodigo             varchar(20)  NOT NULL ,
	idbase               varchar(100)  NOT NULL ,
	paterno              varchar(100)  NOT NULL ,
	materno              varchar(100)  NOT NULL ,
	nombre               varchar(100)  NOT NULL ,
	dirmac               varchar(25)  NOT NULL ,
	idvuelo              varchar(20)  NOT NULL ,
	CONSTRAINT XPKTRIPULACIÒN PRIMARY KEY (idcodigo ASC,idbase ASC),
	CONSTRAINT R_6 FOREIGN KEY (idbase) REFERENCES BASE(idbase)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go



CREATE TABLE VUELO
( 
	idvuelo              integer  NOT NULL ,
	iddato               integer  NOT NULL ,
	fecha                datetime  NOT NULL ,
	origen               varchar(80)  NOT NULL ,
	destino              varchar(80)  NOT NULL ,
	std                  datetime  NOT NULL ,
	sta                  datetime  NOT NULL ,
	idbase               varchar(100)  NOT NULL ,
	idmatricula          integer  NOT NULL ,
	idcodigo             varchar(20)  NOT NULL ,
	CONSTRAINT XPKVUELO PRIMARY KEY (idvuelo ASC,iddato ASC),
	CONSTRAINT R_8 FOREIGN KEY (idcodigo,idbase) REFERENCES TRIPULACIÒN(idcodigo,idbase)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_9 FOREIGN KEY (idmatricula) REFERENCES AVIÒN(idmatricula)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go



CREATE TABLE PILOTO
( 
	idcodigo             integer  NOT NULL ,
	idbase               varchar(100)  NOT NULL ,
	materno              varchar(100)  NOT NULL ,
	nombre               varchar(100)  NOT NULL ,
	dirmac               varchar(25)  NOT NULL ,
	idvuelo              varchar(20)  NOT NULL ,
	paterno              varchar(20)  NULL ,
	CONSTRAINT XPKPILOTO PRIMARY KEY (idcodigo ASC,idbase ASC),
	CONSTRAINT R_3 FOREIGN KEY (idbase) REFERENCES BASE(idbase)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go






insert into SQL_1.dbo.AEREOPUERTO
values(1,'JORGE CHAVEZ','MEX')

insert into SQL_1.dbo.AEREOPUERTO
values(2,'JORGE CHAVEZ','PIU')

insert into SQL_1.dbo.AEREOPUERTO
values(3,'JORGE CHAVEZ','TAC')

insert into SQL_1.dbo.AEREOPUERTO
values(4,'JORGE CHAVEZ','LIM')

insert into SQL_1.dbo.AEREOPUERTO
values(5,'JORGE CHAVEZ','MEX')

insert into SQL_1.dbo.AEREOPUERTO
values(6,'JORGE CHAVEZ','ITA')

insert into SQL_1.dbo.AEREOPUERTO
values(7,'JORGE CHAVEZ','MAN')

insert into SQL_1.dbo.AEREOPUERTO
values(8,'JORGE CHAVEZ','CHI')

insert into SQL_1.dbo.AEREOPUERTO
values(9,'JORGE CHAVEZ','ICA')

insert into SQL_1.dbo.AEREOPUERTO
values(10,'JORGE CHAVEZ','CHO')
GO

insert into SQL_1.dbo.AEREOPUERTO
values(11,'JORGE CHAVEZ','CAL')

insert into SQL_1.dbo.AEREOPUERTO
values(12,'JORGE CHAVEZ','COL')

insert into SQL_1.dbo.AEREOPUERTO
values(13,'JORGE CHAVEZ','VEN')

insert into SQL_1.dbo.AEREOPUERTO
values(14,'JORGE CHAVEZ','ARG')

insert into SQL_1.dbo.AEREOPUERTO
values(15,'JORGE CHAVEZ','CAJ')

insert into SQL_1.dbo.AEREOPUERTO
values(16,'JORGE CHAVEZ','VEN')

insert into SQL_1.dbo.AEREOPUERTO
values(17,'JORGE CHAVEZ','COL')

insert into SQL_1.dbo.AEREOPUERTO
values(18,'JORGE CHAVEZ','PIU')

insert into SQL_1.dbo.AEREOPUERTO
values(19,'JORGE CHAVEZ','CAR')


insert into SQL_1.dbo.AEREOPUERTO
values(20,'JORGE CHAVEZ','PUE')


insert into SQL_1.dbo.AEREOPUERTO
values(21,'JORGE CHAVEZ','CAR')

insert into SQL_1.dbo.AEREOPUERTO
values(22,'JORGE CHAVEZ','POL')

insert into SQL_1.dbo.AEREOPUERTO
values(23,'JORGE CHAVEZ','FIL')

insert into SQL_1.dbo.AEREOPUERTO
values(24,'JORGE CHAVEZ','PAR')

insert into SQL_1.dbo.AEREOPUERTO
values(25,'JORGE CHAVEZ','URU')

insert into SQL_1.dbo.AEREOPUERTO
values(26,'JORGE CHAVEZ','CHI')

SELECT*FROM SQL_1.dbo.AEREOPUERTO;
GO