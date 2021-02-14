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


insert into dbo.persona(telefono) values('768234567');
go

select * from DEMO01.dbo.persona;
go

alter table dbo.persona 
add dni varchar(20) not null default 'NONE';
go

UPDATE dbo.persona
SET dni = '87623456'
where idPersona = 1001;


