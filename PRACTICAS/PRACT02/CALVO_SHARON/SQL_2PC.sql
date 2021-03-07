
CREATE DATABASE SQL_2PC
GO

drop table SQL_2PC..AEREOPUERTO;
go

-- PRIMARY KEY 
CREATE TABLE AEREOPUERTO
( 
	iddato               integer  NOT NULL IDENTITY (1,1),
	nombre               varchar(100)  NOT NULL ,
	idciudad             varchar(100)  NOT NULL ,
	num_vuelo			 varchar(50) NOT NULL,
	CONSTRAINT pk_aereo PRIMARY KEY(iddato),
)
go

SELECT * FROM SQL_2PC..AEREOPUERTO;
GO

SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS;
GO

insert into SQL_2PC.dbo.AEREOPUERTO(nombre,idciudad,num_vuelo)
values('Augusto Severo','MEX','LA3569');
GO

-- UNIQUE 

CREATE TABLE AEREOPUERTO
( 
	iddato               integer  NOT NULL IDENTITY (1,1),
	nombre               varchar(100)  NOT NULL ,
	idciudad             varchar(100)  NOT NULL ,
	num_vuelo			 varchar(50) NOT NULL,
	CONSTRAINT pk_aereo PRIMARY KEY(iddato),
	CONSTRAINT u_aereopuerto_numvuelo UNIQUE(num_vuelo)
)
go

insert into SQL_2PC.dbo.AEREOPUERTO(nombre,idciudad,num_vuelo)
values('Augusto Severo','MEX','LA3569');
GO

--FOREING KEY 

/*Tabla AEREOPUERTO*/

CREATE TABLE AEREOPUERTO
( 
	iddato               integer  NOT NULL IDENTITY (001,1),
	nombre               varchar(100)  NOT NULL ,
	idciudad             varchar(100)  NOT NULL ,
	num_vuelo			 varchar(50) NOT NULL,
	CONSTRAINT pk_aereo PRIMARY KEY(iddato),
	CONSTRAINT u_aereopuerto_numvuelo UNIQUE(num_vuelo)
)
go

insert into SQL_2PC.dbo.AEREOPUERTO(nombre,idciudad,num_vuelo)
values('Augusto Severo','MEX','LA3569');
GO

insert into SQL_2PC.dbo.AEREOPUERTO(nombre,idciudad,num_vuelo)
values('Jorge Cahvez','ITA','LA2719');
GO

insert into SQL_2PC.dbo.AEREOPUERTO(nombre,idciudad,num_vuelo)
values('Jorge Cahvez','PAR','LE16657');
GO

SELECT * FROM SQL_2PC..AEREOPUERTO;
GO


/*Tabla BASE*/

CREATE TABLE BASE
( 
	idbase               varchar(100)  NOT NULL ,
	nombase              varchar(50)  NOT NULL ,
	iddato               integer  NULL ,
	idmatricula          integer  NOT NULL ,
	CONSTRAINT PK_BASE PRIMARY KEY (idbase ),
	CONSTRAINT FK_BASE_iddato 
		FOREIGN KEY (iddato) 
		REFERENCES AEREOPUERTO(iddato)		
)
go

insert into SQL_2PC.dbo.BASE(idbase,nombase,iddato,idmatricula)
values('LIM','vtg675',3,23);
GO

insert into SQL_2PC.dbo.BASE(idbase,nombase,iddato,idmatricula)
values('PAN','Los angeles',1,23);
GO


SELECT * FROM SQL_2PC.dbo.BASE;
go

insert into SQL_2PC.dbo.BASE(idbase,nombase,iddato,idmatricula)
values('dvd','vtg675',4,23);
GO


drop table SQL_2PC.dbo.BASE;
GO


/*NOT NULL/NULL*/


/*Tabla AEREOPUERTO*/

CREATE TABLE AEREOPUERTO
( 
	iddato               integer  NOT NULL IDENTITY (500,1),
	nombre               varchar(100)  NOT NULL DEFAULT 'None',
	idciudad             varchar(100)  NULL ,
	num_vuelo			 varchar(50) NOT NULL DEFAULT 'LA1234',
	CONSTRAINT pk_aereo PRIMARY KEY(iddato),
	CONSTRAINT u_aereopuerto_numvuelo UNIQUE(num_vuelo)
)
go

insert into SQL_2PC.dbo.AEREOPUERTO(nombre)
values('Jorge Cahvez');
GO

insert into SQL_2PC.dbo.AEREOPUERTO(num_vuelo)
values('LA653');
GO

SELECT * FROM SQL_2PC.dbo.AEREOPUERTO;
go


-- CHECK 

CREATE TABLE TRIPULACIÒN
( 
	idcodigo             varchar(20)  NOT NULL ,
	idbase               varchar(100)  NOT NULL ,
	edad				 integer  NOT NULL, 
	nombre               varchar(100)   NULL ,
	dirmac               varchar(25)  NOT NULL ,
	idvuelo              varchar(20)   NULL ,
	CONSTRAINT pk_tripulacion PRIMARY KEY (idcodigo ASC,idbase ASC),
	CONSTRAINT fk_tripulacion FOREIGN KEY (idbase) REFERENCES BASE(idbase),
	CONSTRAINT ck_tripulacion_edad CHECK (edad >= 0 and edad<=120)
	
)
go

INSERT INTO SQL_2PC.dbo.TRIPULACIÒN(idcodigo,idbase,edad, nombre, dirmac, idvuelo)
values('CE2T','LIM',30,'','00:1e:c2:9e:28:6b','')
GO

INSERT INTO SQL_2PC.dbo.TRIPULACIÒN(idcodigo,idbase,edad, nombre, dirmac, idvuelo)
values('RY6T','PAN',45,'','00:1e:c2:9e:28:6b','')
GO

INSERT INTO SQL_2PC.dbo.TRIPULACIÒN(idcodigo,idbase,edad, nombre, dirmac, idvuelo)
values('CE2T','LIM',126,'','00:1e:c2:9e:28:6b','')
GO

SELECT * FROM SQL_2PC..TRIPULACIÒN;
GO





CREATE DATABASE DEMO01;
GO


CREATE TABLE DEMO01.dbo.articulo(
	art_id INT not null identity (1,1),
	art_nombre VARCHAR(100) NOT NULL,
	art_pre_costo money not null,
	art_pre_venta money not null,
	art_stock INT NOT NULL,
)
GO














































