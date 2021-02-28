USE SF
go

-- Eliminar Tabla

DROP TABLE SF.dbo.areadetrabajo

-- Crear Tabla con restricciones

CREATE TABLE areadetrabajo( 
	Id_area_de_trabajo   int  NOT NULL IDENTITY (7001,1),
	  CONSTRAINT pk_area_de_trabajo PRIMARY KEY(Id_area_de_trabajo),
	nombre_de_area_de_trabajo varchar(100)  NOT NULL ,
	jefe_de_area_de_trabajo varchar(100)  NOT NULL,
	CONSTRAINT u_areadetrabajo_jefedeareadetrabajo UNIQUE(jefe_de_area_de_trabajo)
)
GO

-- Formato Fecha

SET DATEFORMAT dmy

-- Selecciona Tabla

SELECT*FROM areadetrabajo

-- Insertar Datos

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Canal Tradicional Lima','Manrique Alfaro Hector Alejandro Agustin')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Canales Digitales','Fernandez Muñoz Ena Maria Patricia')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Capacitacion','Roman Leon Pamela Melissa')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Categoria Elaborados','Vargas Arias Miguel Arturo')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Categoria Huevos Y Cerdo','Raffo Tosi Renato')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Categoria Pavo','Villegas Chirinos Julio Cesar')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Categoria Pollo Beneficiado','Asto Soria Rully Ivar')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Central De Facturacion','Luque Diaz Maria Isabel')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Centro De Corte','Panduro Solano Juan Miguel')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Centro De Distribucion','Cerro Cordova Luis Miguel')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Centro De Distribucion Ate','Ocampo Zumaeta Jose Gessel')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Cobranzas','Tejada Ruiz William Artidoro')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Compensaciones Y Planificación','Egoavil Bobadilla Alejandro Javier')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Compras Infraestructura','Rondon Echevarria Sandra Vanessa')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Compras Servicios Y Suministros','Rodriguez Medina Fabiola Ivonne')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Comunicación Interna','Collado Pereyra Carlos Eduardo')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Contabilidad Y Costos','Ocares Vivas Teodoro Boris')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Control De Gestion De Costos E Inversiones','Flores Gadea Elvio Valdomiro')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Control Interno Financiero','Diaz Castillo Carmen Rosa')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Creditos Y Cobranzas','Garcia Milla Carrasco Silvia')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Desarrollo Organizacional','Enciso Rivera Wilfredo')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Distribucion','Caso Celestino Henry Gustavo')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Gerencia Comercial','Garcia Cedron Jessica Gina')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Gerencia Corporativa De Administracion Y Finanzas','Skrzypek Montalvo Francis John')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Gerencia Corporativa De Gestion Humana','Arakaki Shimabuku Victor Rafael')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Gerencia De Auditoria','Fernandez Morales Jose Loui')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Gerencia De Compras','Regalado Aservi Luis Jose')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Gerencia De Demanda','Wong Marin Pamela Milagros')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Gerencia De Distribucion','Lavado Flores Frank Gustavo')

INSERT INTO SF.dbo.areadetrabajo (nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
VALUES ('Gerencia De I&D De Nuevos Productos','Cespedes Diaz Gianina')

-- Esquema

select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS;
go

