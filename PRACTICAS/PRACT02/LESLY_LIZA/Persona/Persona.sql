
USE SF
GO

-- Eliminar Tabla

DROP TABLE SF.dbo.Persona

-- Crear Tabla con restricciones

CREATE TABLE Persona( 
	Id_Persona           int  NOT NULL IDENTITY (1001,1),
	Id_area_de_trabajo   int  NOT NULL ,
	Apellido_Paterno     varchar(30)  NOT NULL ,
	Apellido_Materno     varchar(30)  NOT NULL ,
	Nombres              varchar(50)  NOT NULL ,
	Tipo_de_trabajador   varchar(20)  NOT NULL ,
	DNI_del_trabajador   char(8)  NOT NULL ,
	Fecha_de_nacimiento  datetime  NOT NULL ,
	Fecha_de_ingreso     datetime  NOT NULL ,
	Fecha_de_cese        datetime  NULL ,
	Teléfono             varchar(20)  NOT NULL ,
	Direccion            varchar(100)  NOT NULL ,
	Correo               varchar(50)  NOT NULL ,
	Puesto               varchar(80)  NOT NULL ,
	CONSTRAINT pk_persona PRIMARY KEY(Id_Persona),
	CONSTRAINT fk_persona_idareadetrabajo
		FOREIGN KEY(Id_area_de_trabajo) 
		REFERENCES dbo.areadetrabajo(Id_area_de_trabajo),
	CONSTRAINT u_persona_dnideltrabajador UNIQUE(DNI_del_trabajador),
	CONSTRAINT u_persona_telefono UNIQUE(Teléfono),
	CONSTRAINT u_persona_dnicorreo UNIQUE(correo)
)
GO

-- Formato Fecha

SET DATEFORMAT dmy

-- Selecciona Tabla

SELECT* FROM SF.dbo.Persona;
GO

-- Insertar Datos

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7001,'Woo','Poquioma','Candy','Empleado','73615671','3/10/1992','1/02/2017','1/01/4000','980784200',' Alameda San Marcos Urb. Los Cedros De Villa Chorrillos  ','wool@sanfernado.com.pe','Analista De Servicio Al Cliente')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7002,'Poggi','Athos','Giulliana Fiorella','Empleado','45862846','22/06/1989','2/02/2017','1/01/4000','980784201',' Alameda Toribio Rodriguez De Mendoza 134 Santiago De Surco  ','poggil@sanfernado.com.pe','Analista De Administracion De Personal Y Nomina')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7003,'Alvarez','Tarazona','Diego Alonso','Empleado','44615200','23/10/1987','15/02/2017','1/01/4000','980784202',' Ampliacion 39 Jr. Panama Carabayllo  ','alvarezl@sanfernado.com.pe','Supervisor De Ventas')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7004,'Barrueto','Lazo','William','Empleado','16783568','10/01/1977','16/02/2017','1/01/4000','980784203',' Ampliacion Kuwait Villa Maria Del Triunfo  ','barruetol@sanfernado.com.pe','Analista De Adquisicion De Talento')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7005,'Giannoni','Moyano','Mayra Melisa','Empleado','41181039','18/05/1982','20/02/2017','1/01/4000','980784204',' Asentamiento Humano 09 De Octubre  El Agustino  ','giannonil@sanfernado.com.pe','Analista De Trade Marketing')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7006,'Gallo','Fernandez','Gabriela Lucia','Empleado','70269537','9/12/1993','13/03/2017','1/01/4000','980784205',' Asentamiento Humano 09 De Octubre El Agustino  ','gallol@sanfernado.com.pe','Ejecutivo De Ventas')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7007,'Leon','Castro','Briyan Fernando','Empleado','41613703','16/08/1982','13/03/2017','1/01/4000','980784206',' Asentamiento Humano 09 De Octubre El Agustino  ','leonl@sanfernado.com.pe','Jefe De Categoria Elaborados')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7008,'Vargas','Arias','Miguel Arturo','Empleado','41533126','10/11/1982','1/04/2017','1/01/4000','980784207',' Asentamiento Humano 11 De Mayo Ps. B1 Gr. 03 Sector Virgen Del Carmen San Juan De Lurigancho  ','vargasl@sanfernado.com.pe','Jefe De Categoria Pollo Beneficiado')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7009,'Asto','Soria','Rully Ivar','Empleado','42428625','16/12/1981','1/04/2017','1/01/4000','980784208',' Asentamiento Humano 9 De Octubre Alfonso Ugarte  El Agustino  ','astol@sanfernado.com.pe','Analista De Relaciones Laborales')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7010,'Lezcano','Villa','Enrique Ricardo','Empleado','45169094','16/07/1988','1/04/2017','1/01/4000','980784209',' Asentamiento Humano A1 Chorrillos  ','lezcanol@sanfernado.com.pe','Supervisor De Ventas')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7011,'Buendia','Robles','Carlos Alberto','Empleado','40609376','3/10/1978','4/04/2017','1/01/4000','980784210',' Asentamiento Humano Alfonso Ugarte - Pamplona Alta San Juan De Miraflores  ','buendial@sanfernado.com.pe','Asistente De Laboratorio')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7012,'Huamani','Aldoradin','Lizbet','Empleado','44011074','8/11/1986','12/04/2017','1/01/4000','980784211',' Asentamiento Humano Alicia Valdivia Chorrillos  ','huamanil@sanfernado.com.pe','Asistente De Ventas')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7013,'Trujillo','Hidalgo','Elga Yadira','Empleado','40490467','24/03/1980','17/04/2017','1/01/4000','980784212',' Asentamiento Humano Amauta Sector 10 Ate  ','trujillol@sanfernado.com.pe','Supervisor De Ventas')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7014,'Briones','Angeles','Ulises Eladio','Empleado','40811996','7/02/1981','17/04/2017','1/01/4000','980784213',' Asentamiento Humano Ampliacion Belen San Juan De Lurigancho  ','brionesl@sanfernado.com.pe','Supervisor De Produccion')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7015,'Bazan','Lopez','Jose Alberto','Empleado','40567996','12/05/1979','17/04/2017','1/01/4000','980784214',' Asentamiento Humano Asent H Sta Rosa De Lima Mz B Lt 8 H Zevallos  Ate  ','bazanl@sanfernado.com.pe','Jefe De Planta De Beneficio')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7016,'Panduro','Solano','Juan Miguel','Empleado','42378795','30/05/1984','17/04/2017','1/01/4000','980784215',' Asentamiento Humano Brisas De Villa Chorrillos  ','pandurol@sanfernado.com.pe','Supervisor De Sanidad')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7017,'Figueroa','Calderon','Gianina Marisol','Empleado','71995141','17/01/1993','24/04/2017','1/01/4000','980784216',' Asentamiento Humano Buenos Aires De Villa Chorrillos  ','figueroal@sanfernado.com.pe','Analista De Control De Costos')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7018,'Huaman','Castillo','Alicia','Empleado','46815987','18/02/1992','24/04/2017','1/01/4000','980784217',' Asentamiento Humano Buenos Aires De Villa Chorrillos  ','huamanl@sanfernado.com.pe','Coordinador De Canales Digitales')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7019,'Palomeque','Rodriguez','Karem Janette','Empleado','10861276','5/06/1978','15/05/2017','1/01/4000','980784218',' Asentamiento Humano Buenos Aires De Villa Chorrillos  ','palomequel@sanfernado.com.pe','Administrador De Produccion')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7020,'Fournier','Castillo','Pierre','Empleado','43633489','16/05/1986','15/05/2017','1/01/4000','980784219',' Asentamiento Humano Buenos Milagros San Juan De Miraflores  ','fournierl@sanfernado.com.pe','Coordinador De Negocio Pollo')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7021,'Zapata','Barreto','Jesus Emilio','Empleado','46059387','30/05/1989','24/05/2017','1/01/4000','980784220',' Asentamiento Humano C.R. La Rivera De Chillon Puente Piedra  ','zapatal@sanfernado.com.pe','Administrador De Infraestructura Y Telecomunicaciones')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7022,'Ortiz','Mantilla','Eduardo Alberto','Empleado','44225664','27/04/1987','5/06/2017','1/01/4000','980784221',' Asentamiento Humano Cerrito Feliz  ','ortizl@sanfernado.com.pe','Ejecutivo De Ventas')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7023,'Daza','Contreras','Carlos Alberto','Empleado','07644709','31/10/1977','12/06/2017','1/01/4000','980784222',' Asentamiento Humano Colina Comas  ','dazal@sanfernado.com.pe','Coordinador De Reputacion Y Responsabilidad Social')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7024,'Hurtado','Vares','Silvana Fabiola','Empleado','40238785','26/04/1979','19/06/2017','1/01/4000','980784223',' Asentamiento Humano Colinas A Comas  ','hurtadol@sanfernado.com.pe','Supervisor Sig')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7025,'Cardenas','Sanchez','Carmen Beatriz','Empleado','01540954','9/10/1990','20/06/2017','19/02/2021','980784224',' Asentamiento Humano Cristo De Pachacamilla Villa El Salvador  ','cardenasl@sanfernado.com.pe','Asistente De Gestion Documentaria')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7026,'Miranda','Palpan','Pedro Junior','Empleado','40613233','26/06/1980','26/06/2017','1/01/4000','980784225',' Asentamiento Humano Defensores De Lima San Juan De Miraflores  ','mirandal@sanfernado.com.pe','Project Manager')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7027,'Elguera','Amezquita','Alfredo Arturo','Empleado','40538376','1/09/1979','3/07/2017','1/01/4000','980784226',' Asentamiento Humano El Amauta Los Olivos  ','elgueral@sanfernado.com.pe','Project Manager')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7028,'Cruz','Ortiz','Julio Cesar','Empleado','02864774','19/10/1975','24/07/2017','1/01/4000','980784227',' Asentamiento Humano El Inti San Juan De Miraflores  ','cruzl@sanfernado.com.pe','Supervisor De Sanidad')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7029,'Mercado','Polanco','Ana Lucia','Empleado','43595953','12/06/1986','1/09/2017','1/01/4000','980784228',' Asentamiento Humano Emilio Ponce Villa Maria Del Triunfo  ','mercadol@sanfernado.com.pe','Analista Senior De Planeamiento Financiero')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7030,'Rivero','Hinojosa','Sandra Vanessa','Empleado','46324552','1/05/1990','1/11/2017','1/01/4000','980784229',' Asentamiento Humano Enrique Milla Ochoa Los Olivos  ','riverol@sanfernado.com.pe','Supervisor Regional De Ventas')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7001,'Rodriguez','Mejia','Elvio Juan','Empleado','29712374','8/07/1977','6/11/2017','1/01/4000','980784230',' Asentamiento Humano Enrique Milla Ochoa Los Olivos  ','rodriguezl@sanfernado.com.pe','Gestor De Gestion Humana')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7002,'Huarcaya','Cerda','Elizabeth','Empleado','46198271','7/01/1989','1/12/2017','1/01/4000','980784231',' Asentamiento Humano Estrella Santa Maria San Juan De Lurigancho  ','huarcayal@sanfernado.com.pe','Analista De Proyectos')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7003,'Moran','Muñoz','Elvis Augusto','Empleado','71981292','24/01/1993','1/12/2017','1/01/4000','980784232',' Asentamiento Humano Heroes De San Juan San Juan De Miraflores  ','moranl@sanfernado.com.pe','Supervisor De Ventas Provincia')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7004,'Monge','Cortijo','Jorge Raul','Empleado','20076210','5/06/1971','4/12/2017','1/01/4000','980784233',' Asentamiento Humano Horacio Zevallos Gomez Ate  ','mongel@sanfernado.com.pe','Coordinador De Canales Digitales')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7005,'Vertiz','Zapata','Manuel Antonio','Empleado','45059775','1/05/1988','4/12/2017','1/01/4000','980784234',' Asentamiento Humano Huaycan Ucv - 182 Ate  ','vertizl@sanfernado.com.pe','Asistente Sig')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7006,'Cueto','Huerta','Victor Enrique','Empleado','76061238','31/01/1995','25/01/2018','1/01/4000','980784235',' Asentamiento Humano Huaycan Ucv 94 Ate  ','cuetol@sanfernado.com.pe','Coordinador De Transporte')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7007,'Peña','Yauri','Johnny Martin','Empleado','72764372','24/03/1995','1/02/2018','1/01/4000','980784236',' Asentamiento Humano Huaycan Zona P Ucv 192 Ate  ','peñall@sanfernado.com.pe','Asistente De Gestion Documentaria')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7008,'Romero','Hidalgo','Jhonny Percy','Empleado','43053987','6/07/1985','1/02/2018','1/01/4000','980784237',' Asentamiento Humano Integración  Chorrillos  ','romerol@sanfernado.com.pe','Administrador Jr. De Produccion')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7009,'Zegarra','Manrique','Brenda Raquel','Empleado','46314777','1/04/1990','28/02/2018','1/01/4000','980784238',' Asentamiento Humano J.C. Mariategui Puente Piedra  ','zegarral@sanfernado.com.pe','Administrador Jr. De Produccion')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7010,'Tavara','La Chira','Ricardo Yafar','Empleado','73437845','10/04/1993','28/02/2018','1/01/4000','980784239',' Asentamiento Humano Javier Heraud Ate  ','tavaral@sanfernado.com.pe','Administrador Jr. De Produccion')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7011,'Ayllon','Navarro','Elmer Alberto','Empleado','70430150','14/05/1990','1/03/2018','1/01/4000','980784240',' Asentamiento Humano Javier Heraud Psj. 4 Ate  ','ayllonl@sanfernado.com.pe','Analista De Planeamiento')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7012,'Colfer','Chavez','Erick Junior','Empleado','70649451','25/04/1996','2/03/2018','31/07/2021','980784241',' Asentamiento Humano Jesus De Nazareth San Juan De Lurigancho  ','colferl@sanfernado.com.pe','Asistente Administrativo')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7013,'Alcantara','Rubio De Rubio','Carla Andrea','Empleado','09995055','8/11/1973','21/03/2018','1/01/4000','980784242',' Asentamiento Humano Jose Carlos Mariategui Psj. Los Cactus - Vallecito Villa Maria Del Triunfo  ','alcantaral@sanfernado.com.pe','Supervisor De Tesoreria')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7014,'Vera','Busch','Jeannette Lizeth','Empleado','45972921','17/10/1989','9/04/2018','1/01/4000','980784243',' Asentamiento Humano Jose Carlos Mariategui San Juan De Miraflores  ','veral@sanfernado.com.pe','Ejecutivo De Ventas')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7015,'Hernandez','Sevillano','Marisol','Empleado','45640841','23/03/1989','16/04/2018','1/01/4000','980784244',' Asentamiento Humano Jose Olaya Balandra Chorrillos  ','hernandezl@sanfernado.com.pe','Jefe De Categoria Pavo')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7016,'Villegas','Chirinos','Julio Cesar','Empleado','40788016','28/07/1980','18/04/2018','1/01/4000','980784245',' Asentamiento Humano Jose Olaya Lurin  ','villegasl@sanfernado.com.pe','Analista De Mejora De Procesos')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7017,'Urpay','Tupia','Jackeline Medalith','Empleado','72898203','21/01/1994','21/05/2018','1/01/4000','980784246',' Asentamiento Humano Juan Pablo Ii Los Olivos  ','urpayl@sanfernado.com.pe','Supervisor Sig')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7018,'Lino','Matos','Carmen Rosa','Empleado','47149604','13/10/1991','28/05/2018','31/07/2021','980784247',' Asentamiento Humano Juan Velasco Alvarado Villa Maria Del Triunfo  ','linol@sanfernado.com.pe','Controller De Costos E Inversiones')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7019,'Flores','Gadea','Elvio Valdomiro','Empleado','40499436','8/03/1980','1/06/2018','1/01/4000','980784248',' Asentamiento Humano La Estrella Ate  ','floresl@sanfernado.com.pe','Analista De Administracion De Personal Y Nomina')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7020,'Mendoza','Rojas','Haydee Susan','Empleado','42993447','17/02/1985','1/06/2018','31/07/2021','980784249',' Asentamiento Humano La Ribera Chillon Puente Piedra  ','mendozal@sanfernado.com.pe','Analista De Imagen Y Empaques')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7021,'Bisso','Carrasco','Giuliana Beatriz','Empleado','46418553','17/07/1990','15/06/2018','31/07/2021','980784250',' Asentamiento Humano La Union Cll.Las Cipreces Villa Maria Del Triunfo  ','bissol@sanfernado.com.pe','Analista De Marketing')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7022,'Gonzales','Rivera','Cristian David','Empleado','73330126','3/03/1995','1/07/2018','1/01/4000','980784251',' Asentamiento Humano Las Animas Puente Piedra  ','gonzalesl@sanfernado.com.pe','Comprador')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7023,'Mogollon','Palacios','Riccy Andrea','Empleado','42611837','16/09/1984','9/07/2018','31/07/2021','980784252',' Asentamiento Humano Las Brisas Chorrillos  ','mogollonl@sanfernado.com.pe','Asistente De Laboratorio')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7024,'Carpio','Fernandez','Miriam Elizabeth','Empleado','43586313','20/04/1986','18/07/2018','31/07/2021','980784253',' Asentamiento Humano Las Brisas De Villa Chorrillos  ','carpiol@sanfernado.com.pe','Abogado Senior')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7025,'Jonquet','Van Brunschot','Johanna Alejandra','Empleado','45550751','21/02/1989','1/08/2018','1/01/4000','980784254',' Asentamiento Humano Las Brisas De Villa San Juan De Miraflores  ','jonquetl@sanfernado.com.pe','Analista De Marketing')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7026,'Ramos','Diaz','Franklin Alexander','Empleado','70838036','12/01/1992','1/08/2018','31/07/2021','980784255',' Asentamiento Humano Las Flores De Villa San Juan De Miraflores  ','ramosl@sanfernado.com.pe','Ejecutivo De Ventas')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7027,'Condor','Callupe','Jessyka Kelly','Empleado','44633284','23/03/1987','13/08/2018','31/07/2021','980784256',' Asentamiento Humano Lejano Oeste 28 De Julio Huscar San Juan De Lurigancho  ','condorl@sanfernado.com.pe','Supervisor Senior De Produccion')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7028,'Torres','Rosales','Meisser Magnolia','Empleado','44673009','24/11/1987','13/08/2018','1/01/4000','980784257',' Asentamiento Humano Los Claveles  Ate  ','torresl@sanfernado.com.pe','Supervisor De Nutricion')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7029,'Lara','Palacios','Jackeline Susana','Empleado','43447600','2/12/1985','22/08/2018','30/04/2021','980784258',' Asentamiento Humano Los Laureles San Juan De Miraflores  ','laral@sanfernado.com.pe','Jefe De Transporte Y Distribucion')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7030,'Caso','Celestino','Henry Gustavo','Empleado','41486533','6/01/1982','3/09/2018','1/01/4000','980784259',' Asentamiento Humano Los Olivos De Pro Los Olivos De Pro Los Olivos  ','casol@sanfernado.com.pe','Supervisor De Mantenimiento')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7001,'Clemente','Mejia','Vladimir','Empleado','45542860','9/02/1989','10/09/2018','31/03/2021','980784260',' Asentamiento Humano Los Portales De Pachamac Villa El Salvador  ','clementel@sanfernado.com.pe','Medico Ocupacional')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7002,'Jimenez','Castro','Elvia Sofia','Empleado','10542976','3/03/1977','20/09/2018','1/01/4000','980784261',' Asentamiento Humano Mamacona Alta Lurin  ','jimenezl@sanfernado.com.pe','Asistente Medico Veterinario')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7003,'Sandiga','Huaman','Juliana Beatriz','Empleado','72678138','6/04/1991','15/10/2018','31/07/2021','980784262',' Asentamiento Humano Manzanilla 2 Lima  ','sandigal@sanfernado.com.pe','Analista De Marketing')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7004,'Peña','Cadenillas','Alejandro','Empleado','46084721','16/10/1989','17/10/2018','31/07/2021','980784263',' Asentamiento Humano Mirador Ii Pamplona Alta San Juan De Miraflores  ','peñal@sanfernado.com.pe','Gestor De Gestion Humana')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7005,'Vargas','Mogollon','Santiago Anderson','Empleado','44072131','14/05/1986','22/10/2018','31/07/2021','980784264',' Asentamiento Humano Mon Señor Pedro Laos Hurtado  San Juan De Miraflores  ','vargasll@sanfernado.com.pe','Gestor De Gestion Humana')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7006,'Calle','Gomez','Jhan Carlos','Empleado','45482127','12/11/1988','5/11/2018','1/01/4000','980784265',' Asentamiento Humano Nevado Conquis Chorrillos  ','callel@sanfernado.com.pe','Coordinador De Desarrollo')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7007,'Roman','Leon','Pamela Melissa','Empleado','47011868','16/02/1992','3/12/2018','1/01/4000','980784266',' Asentamiento Humano Nicolas De Pierola Psj. Las Alpas Ate  ','romanl@sanfernado.com.pe','Analista De Administracion De Personal Y Nomina')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7008,'Rojas','Torres','Pool Guillermo','Empleado','47516146','30/11/1991','5/12/2018','30/04/2021','980784267',' Asentamiento Humano Nueva Esperanza Lima  ','rojasl@sanfernado.com.pe','Supervisor De Nutricion')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7009,'Miranda','Gutierrez','Justo Daniel','Empleado','46465453','28/03/1990','17/12/2018','30/04/2021','980784268',' Asentamiento Humano Nueva Luz Santa Clara Ate  ','mirandall@sanfernado.com.pe','Analista De Control De La Demanda')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7010,'Lopez','Rojas','Carmen Carolina','Empleado','74027676','4/12/1994','21/12/2018','31/07/2021','980784269',' Asentamiento Humano Nuevo  Lurin Lurin  ','lopezl@sanfernado.com.pe','Analista De Control De Costos')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7011,'Hernandez','Suarez','Jhan Carlo','Empleado','73695668','13/01/1994','1/01/2019','31/07/2021','980784270',' Asentamiento Humano Nuevo Amanecer Chorrillos  ','hernandezll@sanfernado.com.pe','Inspector De Calidad')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7012,'Rivas','Aranda','Roxana Yoselin','Empleado','70207288','16/07/1993','7/01/2019','31/07/2021','980784271',' Asentamiento Humano Nuevo Horizonte Villa Maria Del Triunfo  ','rivasl@sanfernado.com.pe','Supervisor De Ventas')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7013,'Cavassa','Sanchez','Guido Marcello','Empleado','48060428','10/01/1994','7/01/2019','31/07/2021','980784272',' Asentamiento Humano Nuevo Lurin Atusparia Lurin  ','cavassal@sanfernado.com.pe','Coordinador De Marketing')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7014,'Dioses','Cruz','Diego Alonso','Empleado','47788049','12/11/1992','21/01/2019','31/07/2021','980784273',' Asentamiento Humano Nuevo Progreso Villa Maria Del Triunfo  ','diosesl@sanfernado.com.pe','Auditor Interno Senior')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7015,'Romero','Chumbiray','Ricardo Alberto','Empleado','47472552','11/03/1992','4/02/2019','31/07/2021','980784274',' Asentamiento Humano Paradero 12 De Bayovar Ampliacion 22 De Noviembre San Juan De Lurigancho  ','romeroll@sanfernado.com.pe','Comprador Senior')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7016,'Medina','Del Castillo','Luis Enrique Miguel','Empleado','45601295','19/12/1988','18/02/2019','31/07/2021','980784275',' Asentamiento Humano Paraje De Puruchuco Ate  ','medinal@sanfernado.com.pe','Supervisor De Ventas')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7017,'Ninapayta','Castillo','Jose Arturo','Empleado','44535948','23/07/1987','22/02/2019','30/04/2021','980784276',' Asentamiento Humano Pilar Nores De Garcia San Martin De Porres  ','ninapaytal@sanfernado.com.pe','Analista De Route To Market')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7018,'Tavara','Guerrero','Renato Adrian','Empleado','72869650','24/05/1995','22/02/2019','31/07/2021','980784277',' Asentamiento Humano Principe De Asturias Villa El Salvador  ','tavarall@sanfernado.com.pe','Supervisor De Ventas')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7019,'Elcorrobarrutia','Soto','Jose Manuel','Empleado','42245160','14/05/1979','4/03/2019','31/07/2021','980784278',' Asentamiento Humano Sab Juan De Libertad Cmte. 18 Chorrillos  ','elcorrobarrutial@sanfernado.com.pe','Gestor Inmobiliario')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7020,'Pizzorni','Barrios','Annabella Castalia','Empleado','46129844','6/11/1989','4/03/2019','31/07/2021','980784279',' Asentamiento Humano San Antonio Ate  ','pizzornil@sanfernado.com.pe','Analista De Datos Maestros')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7021,'Vasquez De Velasco','Morales','Jorge Andres','Empleado','46783106','12/02/1991','11/03/2019','31/07/2021','980784280',' Asentamiento Humano San Camilo Villa Maria Del Triunfo  ','vasquez de velascol@sanfernado.com.pe','Auditor Interno Jr')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7022,'Flores','Ignacio','Lessly Roxana','Empleado','75334281','19/04/1994','15/03/2019','31/07/2021','980784281',' Asentamiento Humano San Carlos  Santa Anita  ','floresll@sanfernado.com.pe','Coordinador De Planeamiento Comercial')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7023,'Calderon','Sulca','Carlos Felipe','Empleado','44105001','11/02/1987','1/04/2019','31/07/2021','980784282',' Asentamiento Humano San Francisco Villa Maria Del Triunfo  ','calderonl@sanfernado.com.pe','Jefe De Trade Marketing')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7024,'Galarreta','Martinez','Jorge Miguel','Empleado','44740196','30/12/1987','3/04/2019','1/01/4000','980784283',' Asentamiento Humano San Genaro Chorrillos  ','galarretal@sanfernado.com.pe','Analista De Planeamiento Comercial')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7025,'Laguna','Rugel','Miguel Angel','Empleado','41331244','21/04/1982','24/04/2019','31/07/2021','980784284',' Asentamiento Humano San Genaro Chorrillos  ','lagunal@sanfernado.com.pe','Supervisor De Produccion')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7026,'Parraga','Canto','David Jorge','Empleado','45202941','1/08/1988','25/04/2019','31/07/2021','980784285',' Asentamiento Humano San Genaro Chorrillos  ','parragal@sanfernado.com.pe','Supervisor De Produccion')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7027,'Caldas','Geronimo','Jesus Alberto','Empleado','42148169','15/05/1980','1/05/2019','30/04/2021','980784286',' Asentamiento Humano San Genaro Ii Chorrillos  ','caldasl@sanfernado.com.pe','Jefe De Seguridad Patrimonial')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7028,'Reyna','Rivero','Manuel Octavio','Empleado','42765929','25/01/1964','2/05/2019','1/01/4000','980784287',' Asentamiento Humano San Jose 3 San Bartolo  ','reynal@sanfernado.com.pe','Supervisor De Ventas')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7029,'Maguiña','Tupac Yupanqui','Raphael Samuel','Empleado','42406500','25/05/1984','6/05/2019','31/07/2021','980784288',' Asentamiento Humano San Juan De La Libertad Chorrillos  ','maguiñal@sanfernado.com.pe','Analista De Branding')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7030,'Rendón','Orcada','Ericka','Empleado','47112842','8/02/1991','27/05/2019','31/07/2021','980784289',' Asentamiento Humano San Juan De La Libertad Chorrillos  ','rendónl@sanfernado.com.pe','Jefe De Investigacion De Mercados')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7001,'Tarma','Villavicencio','Fiorella Carolina','Empleado','43831913','17/09/1986','27/05/2019','1/01/4000','980784290',' Asentamiento Humano San Juan De La Libertad Chorrillos  ','tarmal@sanfernado.com.pe','Asistente Comercial')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7002,'Castañeda','Cordova','Luis Carlos','Empleado','46327949','1/05/1990','1/06/2019','30/04/2021','980784291',' Asentamiento Humano San Juan De La Libertad Cmt 15 Chorrillos  ','castañedal@sanfernado.com.pe','Ingeniero De Desarrollo Junior')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7003,'Sanchez','Guerra','Joel Benji','Empleado','73613830','12/11/1992','3/06/2019','31/07/2021','980784292',' Asentamiento Humano San Luis De La Soledad Puente Piedra  ','sanchezl@sanfernado.com.pe','Asistente De Bienestar')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7004,'Bautista','Trinidad','Genesis Anais','Empleado','47597457','11/06/1991','5/06/2019','31/07/2021','980784293',' Asentamiento Humano San Martin De Porres S/N Los Olivos  ','bautistal@sanfernado.com.pe','Jefe De Ventas')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7005,'Manrique','Alfaro','Hector Alejandro Agustin','Empleado','43903509','24/09/1986','17/06/2019','1/01/4000','980784294',' Asentamiento Humano San Martin De Porres Villa Maria Del Triunfo  ','manriquel@sanfernado.com.pe','Jefe De Ventas')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7006,'Chipoco','Rojas','Julio Antonio','Empleado','43394647','11/11/1985','17/06/2019','1/01/4000','980784295',' Asentamiento Humano San Pedro Chorrillos  ','chipocol@sanfernado.com.pe','Recepcionista')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7007,'Sullca','Espinoza','Sulema Nuby','Empleado','45840128','21/06/1989','1/07/2019','30/04/2021','980784296',' Asentamiento Humano Santa Cruz Piso 3 Los Olivos  ','sullcal@sanfernado.com.pe','Jefe De Route To Market')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7008,'Aliaga','Rodriguez','Christian Adrian','Empleado','09881247','16/02/1974','1/07/2019','1/01/4000','980784297',' Asentamiento Humano Santa Isabel De Villa Cmt 4 Santiago De Surco  ','aliagal@sanfernado.com.pe','Analista De Compensaciones Y Planificacion')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7009,'Castillo','Flores','Pier Alexis Samael','Empleado','46066973','15/12/1989','1/07/2019','31/03/2021','980784298',' Asentamiento Humano Santa Maria 22 San Juan De Lurigancho  ','castillol@sanfernado.com.pe','Analista De Planeamiento Financiero')

INSERT INTO SF.dbo.Persona (Id_area_de_trabajo,Apellido_Paterno,Apellido_Materno,Nombres,Tipo_de_trabajador,DNI_del_trabajador,Fecha_de_nacimiento,Fecha_de_ingreso,Fecha_de_cese,Teléfono,Direccion,Correo,Puesto)
VALUES (7010,'Meza','Castro','Carlos Andres','Empleado','72371223','16/10/1996','1/07/2019','31/07/2021','980784299',' Asentamiento Humano Santa Modesta Santiago De Surco  ','mezal@sanfernado.com.pe','Coordinador De Transporte')

