-- Ejemplo 07
-- DEFAULT
/*
Es el valor por defecto que toma una columna 
cuando no se especifica un valor.
Si no tiene un valor por defecto de manera explicta,
el valor por defecto es NULL.
Si la columna no acepta NULL ( NOT NULL ),
se produce un error.
*/



-- Tabla ARTICULO

drop table DEMO01.dbo.persona;
go

CREATE TABLE DEMO01.dbo.persona(
	idPersona INT NOT NULL IDENTITY(1001,1), 
	nombre VARCHAR(100) NOT NULL DEFAULT 'None',
	edad INT NULL,
	telefono VARCHAR(20) NULL DEFAULT '555555555',
	CONSTRAINT pk_persona PRIMARY KEY(idPersona)
)
GO

select * from DEMO01.dbo.persona;
go

insert into dbo.persona(nombre) values('Pedro');
go

insert into dbo.persona(edad) values(30);
go

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


