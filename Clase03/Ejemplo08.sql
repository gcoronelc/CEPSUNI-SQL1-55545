-- Ejemplo 07

-- CHECK - CASO 1
/*
Los valores que se einsertan en una columna deben cumplir una condició.
*/



-- Tabla ARTICULO

drop table DEMO01.dbo.persona;
go

CREATE TABLE DEMO01.dbo.persona(
	idPersona INT NOT NULL IDENTITY(1001,1), 
	nombre VARCHAR(100) NOT NULL DEFAULT 'None',
	edad INT NOT NULL CHECK (edad >=0 and edad <=120),
	telefono VARCHAR(20) NULL DEFAULT '555555555',
	CONSTRAINT pk_persona PRIMARY KEY(idPersona)
)
GO

select * from DEMO01.dbo.persona;
go

insert into DEMO01.dbo.persona(nombre, edad) values('Pedro', 150);
go

/*
Msg 547, Level 16, State 0, Line 27
Instrucción INSERT en conflicto con la restricción CHECK 'CK__persona__edad__17036CC0'. 
El conflicto ha aparecido en la base de datos 'DEMO01', tabla 'dbo.persona', column 'edad'.
Se terminó la instrucción.
*/

insert into DEMO01.dbo.persona(nombre,edad) values('Gustavo',-30);
go

/*
Msg 547, Level 16, State 0, Line 36
Instrucción INSERT en conflicto con la restricción CHECK 'CK__persona__edad__17036CC0'. 
El conflicto ha aparecido en la base de datos 'DEMO01', tabla 'dbo.persona', column 'edad'.
Se terminó la instrucción.
*/


drop table DEMO01.dbo.persona;
go

CREATE TABLE DEMO01.dbo.persona(
	idPersona INT NOT NULL IDENTITY(1001,1), 
	nombre VARCHAR(100) NOT NULL DEFAULT 'None',
	edad INT NOT NULL CONSTRAINT CK_PERSONA_EDAD CHECK (edad >=0 and edad <=120),
	telefono VARCHAR(20) NULL DEFAULT '555555555',
	CONSTRAINT pk_persona PRIMARY KEY(idPersona)
)
GO

insert into DEMO01.dbo.persona(nombre,edad) values('Gustavo',-30);
go

/*
Msg 547, Level 16, State 0, Line 60
Instrucción INSERT en conflicto con la restricción CHECK 'CK_PERSONA_EDAD'. 
El conflicto ha aparecido en la base de datos 'DEMO01', tabla 'dbo.persona', column 'edad'.
Se terminó la instrucción.
*/

drop table DEMO01.dbo.persona;
go

CREATE TABLE DEMO01.dbo.persona(
	idPersona INT NOT NULL IDENTITY(1001,1), 
	nombre VARCHAR(100) NOT NULL DEFAULT 'None',
	edad INT NOT NULL,
	telefono VARCHAR(20) NULL DEFAULT '555555555',
	CONSTRAINT pk_persona PRIMARY KEY(idPersona),
	CONSTRAINT CK_PERSONA_EDAD CHECK (edad >=0 and edad <=120)
)
GO

insert into DEMO01.dbo.persona(nombre,edad) values('Gustavo',200);
go

/*
Msg 547, Level 16, State 0, Line 83
Instrucción INSERT en conflicto con la restricción CHECK 'CK_PERSONA_EDAD'. El conflicto ha aparecido en la base de datos 'DEMO01', tabla 'dbo.persona', column 'edad'.
Se terminó la instrucción.
*/



-- Tabla ARTICULO

drop table DEMO01.dbo.articulo;
go

CREATE TABLE DEMO01.dbo.articulo(
	idArticulo INT NOT NULL, 
	nombre VARCHAR(100) NOT NULL,
	pre_costo MONEY NOT NULL,
	pre_venta MONEY NOT NULL,
	stock INT NOT NULL,
	CONSTRAINT pk_articulo PRIMARY KEY(idArticulo),
	CONSTRAINT u_articulo_nombre UNIQUE(nombre),
	CONSTRAINT CK_ARTICULO_PRECIO CHECK( PRE_VENTA > PRE_COSTO )
)
GO


INSERT INTO DEMO01.dbo.articulo(idArticulo,nombre,pre_costo,pre_venta,stock)
VALUES(1000, 'TELEVISOR', 2556.89, 1478.99, 100 );
GO


/*
Msg 547, Level 16, State 0, Line 112
Instrucción INSERT en conflicto con la restricción CHECK 'CK_ARTICULO_PRECIO'. 
El conflicto ha aparecido en la base de datos 'DEMO01', tabla 'dbo.articulo'.
Se terminó la instrucción.
*/
