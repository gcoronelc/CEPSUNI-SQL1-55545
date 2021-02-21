CREATE TABLE AEREOPUERTO
( 
	iddato               integer  NOT NULL ,
	nombre               varchar(100)  NOT NULL ,
	idciudad             integer  NOT NULL ,
	CONSTRAINT XPKAEREOPUERTO PRIMARY KEY (iddato ASC)
)
go



CREATE TABLE AVIÒN
( 
	idmatricula          integer  NOT NULL ,
	idflota              integer  NOT NULL ,
	idsubflota           integer  NOT NULL ,
	idbase               integer  NOT NULL ,
	CONSTRAINT XPKAVIÒN PRIMARY KEY (idmatricula ASC)
)
go



CREATE TABLE BASE
( 
	idbase               integer  NOT NULL ,
	nombase              varchar(50)  NOT NULL ,
	idciudad             integer  NOT NULL ,
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
	idcodigo             integer  NOT NULL ,
	idbase               integer  NOT NULL ,
	paterno              varchar(100)  NOT NULL ,
	materno              varchar(100)  NOT NULL ,
	nombre               varchar(100)  NOT NULL ,
	dirmac               varchar(25)  NOT NULL ,
	idvuelo              integer  NOT NULL ,
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
	idbase               integer  NOT NULL ,
	idmatricula          integer  NOT NULL ,
	idcodigo             integer  NOT NULL ,
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
	idbase               integer  NOT NULL ,
	materno              varchar(100)  NOT NULL ,
	nombre               varchar(100)  NOT NULL ,
	dirmac               varchar(25)  NOT NULL ,
	idvuelo              integer  NOT NULL ,
	paterno              integer  NOT NULL ,
	CONSTRAINT XPKPILOTO PRIMARY KEY (idcodigo ASC,idbase ASC),
	CONSTRAINT R_3 FOREIGN KEY (idbase) REFERENCES BASE(idbase)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go


