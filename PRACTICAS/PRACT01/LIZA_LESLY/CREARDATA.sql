USE SANFERNANDO


CREATE TABLE AportesDelEmpleador
( 
	Id_Aportes_del_empleador int  NOT NULL ,
	Id_Persona           int  NOT NULL,
	aporte_essalud       decimal(18,2)  NULL ,
	aporte_seguro_vida_ley decimal(18,2)  NULL ,
	aporte_seguro_sctr   decimal(18,2)  NULL ,
	aporte_eps           decimal(18,2)  NULL ,
	total_aportes        decimal(18,2)  NOT NULL 
	 
)
go



ALTER TABLE AportesDelEmpleador
	ADD CONSTRAINT XPKAportesDelEmpleador PRIMARY KEY  CLUSTERED (Id_Aportes_del_empleador ASC)
go



CREATE TABLE AreaDeTrabajo
( 
	Id_area_de_trabajo   int  NOT NULL ,
	nombre_de_area_de_trabajo varchar(100)  NOT NULL ,
	jefe_de_area_de_trabajo varchar(100)  NOT NULL 
)
go



ALTER TABLE AreaDeTrabajo
	ADD CONSTRAINT XPKAreaDeTrabajo PRIMARY KEY  CLUSTERED (Id_area_de_trabajo ASC)
go



CREATE TABLE Boleta
( 
	Id_Boleta            int  NOT NULL ,
	Id_Persona           int  NOT NULL ,
	puesto               varchar(50)  NOT NULL ,
	centro_de_trabajo    varchar(20)  NOT NULL ,
	periodo_de_pago      datetime  NOT NULL ,
	regimen_pensionario  varchar(20)  NOT NULL ,
	CUSSP                char(12)  NOT NULL ,
	vacaciones           datetime  NOT NULL ,
	remuneracion_basica  decimal(18,2)  NOT NULL ,
	dias_laborados       int  NOT NULL ,
	total_ingresos       decimal(18,2)  NOT NULL ,
	total_descuentos     decimal(18,2)  NOT NULL ,
	total_aportes        decimal(18,2)  NOT NULL ,
	neto_a_pagar         decimal(18,2)  NOT NULL 
)
go



ALTER TABLE Boleta
	ADD CONSTRAINT XPKBoleta PRIMARY KEY  CLUSTERED (Id_Boleta ASC)
go



CREATE TABLE Cuenta
( 
	Id_Cuenta            int  NOT NULL ,
	Id_Persona           int  NOT NULL,
	Banco_Afiliado       varchar(50)  NOT NULL ,
	Moneda_de_cuenta     varchar(20)  NOT NULL ,
	Numero_de_cuenta     varchar(20)  NOT NULL 
	 
)
go



ALTER TABLE Cuenta
	ADD CONSTRAINT XPKCuenta PRIMARY KEY  CLUSTERED (Id_Cuenta ASC)
go



CREATE TABLE DescuentosDelTrabajador
( 
	Id_Descuentos_del_trabajador int  NOT NULL ,
	Id_Persona           int  NOT NULL ,
	aporte_sp            decimal(18,2)  NULL ,
	adelanto_quincena    decimal(18,2)  NULL ,
	vales_de_consumo     decimal(18,2)  NULL ,
	tardanzas            decimal(18,2)  NULL ,
	total_descuentos     decimal(18,2)  NOT NULL 
	 
	
	
)
go



ALTER TABLE DescuentosDelTrabajador
	ADD CONSTRAINT XPKDescuentosDelTrabajador PRIMARY KEY  CLUSTERED (Id_Descuentos_del_trabajador ASC)
go



CREATE TABLE Ingresos
( 
	Id_ingresos          int  NOT NULL ,
	Id_Persona           int  NOT NULL ,
	remuneracion_basica  decimal(18,2)  NOT NULL ,
	asignacion_familiar  decimal(18,2)  NULL ,
	horas_extras         decimal(18,2)  NULL ,
	comision             decimal(18,2)  NULL ,
	vales_de_consumo     decimal(18,2)  NULL ,
	total_ingresos       decimal(18,2)  NOT NULL 
	
	 
)
go



ALTER TABLE Ingresos
	ADD CONSTRAINT XPKIngresos PRIMARY KEY  CLUSTERED (Id_ingresos ASC)
go



CREATE TABLE Persona
( 
	Id_Persona           int  NOT NULL ,
	Apellido_Paterno     varchar(30)  NOT NULL ,
	Apellido_Materno     varchar(30)  NOT NULL ,
	Nombres              varchar(20)  NOT NULL ,
	Tipo_de_trabajador   varchar(20)  NOT NULL ,
	DNI_del_trabajador   varchar(20)  NOT NULL ,
	Fecha_de_nacimiento  datetime  NOT NULL ,
	Fecha_de_ingreso     datetime  NOT NULL ,
	Fecha_de_cese        datetime  NULL ,
	Direccion            varchar(40)  NOT NULL ,
	Teléfono             varchar(20)  NOT NULL ,
	Correo               varchar(50)  NOT NULL ,
	Puesto               varchar(50)  NOT NULL ,
	Id_area_de_trabajo   int  NOT NULL 
)
go



ALTER TABLE Persona
	ADD CONSTRAINT XPKPersona PRIMARY KEY  CLUSTERED (Id_Persona ASC)
go



CREATE TABLE Planilla
( 
	Id_Planilla          int  NOT NULL ,
	Id_Persona           int  NOT NULL,
	Periodo_de_Planilla  varchar(20)  NOT NULL ,
	Inicio_de_planilla   datetime  NOT NULL ,
	Fin_de_planilla      datetime  NULL 
	 
)
go



ALTER TABLE Planilla
	ADD CONSTRAINT XPKPlanilla PRIMARY KEY  CLUSTERED (Id_Planilla ASC)
go




ALTER TABLE AportesDelEmpleador
	ADD CONSTRAINT FK_PERAPOR FOREIGN KEY (Id_Persona) REFERENCES Persona(Id_Persona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Boleta
	ADD CONSTRAINT FK_PERBOL FOREIGN KEY (Id_Persona) REFERENCES Persona(Id_Persona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Cuenta
	ADD CONSTRAINT FK_PERCUE FOREIGN KEY (Id_Persona) REFERENCES Persona(Id_Persona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE DescuentosDelTrabajador
	ADD CONSTRAINT FK_PERDES FOREIGN KEY (Id_Persona) REFERENCES Persona(Id_Persona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Ingresos
	ADD CONSTRAINT FK_PERING FOREIGN KEY (Id_Persona) REFERENCES Persona(Id_Persona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Persona
	ADD CONSTRAINT FK_AREPER FOREIGN KEY (Id_area_de_trabajo) REFERENCES AreaDeTrabajo(Id_area_de_trabajo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Planilla
	ADD CONSTRAINT FK_PERPLA FOREIGN KEY (Id_Persona) REFERENCES Persona(Id_Persona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go



CREATE PROCEDURE usp_insertaempleado
@Id_Persona int,
@Apellido_Paterno varchar(30),
@Apellido_Materno varchar(30),
@Nombres varchar(20),
@Tipo_de_trabajador varchar(20),
@DNI_del_trabajador varchar(20),
@Fecha_de_nacimiento datetime,
@Fecha_de_ingreso datetime,
@Fecha_de_cese datetime,
@Direccion varchar(40),
@Teléfono varchar(20),
@Correo varchar(50),
@Id_area_de_trabajo int,
@Puesto varchar(50) 

as
insert into Persona(Id_Persona,Apellido_Paterno,
Apellido_Materno,Nombres,
Tipo_de_trabajador,DNI_del_trabajador,
Fecha_de_nacimiento,Fecha_de_ingreso,
Fecha_de_cese,Direccion,Teléfono,Correo,
Id_area_de_trabajo,Puesto)
 
values 
(@Id_Persona,@Apellido_Paterno,@Apellido_Materno,
@Nombres,@Tipo_de_trabajador,@DNI_del_trabajador,
@Fecha_de_nacimiento,@Fecha_de_ingreso,
@Fecha_de_cese,@Direccion,@Teléfono,@Correo,
@Id_area_de_trabajo,@Puesto)
go



CREATE PROCEDURE usp_insertacuenta
@Id_Cuenta int,
@Id_Persona int,
@Banco_Afiliado varchar(50),
@Moneda_de_cuenta varchar(20),
@Numero_de_cuenta varchar(20)

as
insert into Cuenta(Id_Cuenta,
Id_Persona,Banco_Afiliado,
Moneda_de_cuenta,Numero_de_cuenta)
 
values 
(@Id_Cuenta,@Id_Persona,@Banco_Afiliado,
@Moneda_de_cuenta,@Numero_de_cuenta)
go



CREATE PROCEDURE usp_insertaareadetrabajo
@Id_area_de_trabajo int,
@nombre_de_area_de_trabajo varchar(100),
@jefe_de_area_de_trabajo varchar(100)

as
insert into AreaDeTrabajo(Id_area_de_trabajo, 
nombre_de_area_de_trabajo,jefe_de_area_de_trabajo)
 
values 
(@Id_area_de_trabajo,@nombre_de_area_de_trabajo,
@jefe_de_area_de_trabajo)
go



CREATE PROCEDURE usp_insertaplanilla
@Id_Planilla int,
@Id_Persona int,
@Periodo_de_Planilla varchar(20),
@Inicio_de_planilla datetime,
@Fin_de_planilla datetime

as
insert into Planilla (Id_Planilla,Id_Persona,
Periodo_de_Planilla,Inicio_de_planilla,
Fin_de_planilla)
 
values 
(@Id_Planilla,@Id_Persona,@Periodo_de_Planilla,
@Inicio_de_planilla,@Fin_de_planilla )
go



CREATE PROCEDURE usp_insertaingresos
@Id_ingresos int,
@Id_Persona int,
@remuneracion_basica decimal(18,2),
@asignacion_familiar decimal(18,2),
@horas_extras decimal(18,2),
@comision decimal(18,2),
@vales_de_consumo decimal(18,2),
@total_ingresos decimal(18,2)

as
insert into Ingresos(Id_ingresos,
Id_Persona,remuneracion_basica,
asignacion_familiar,horas_extras,comision,
vales_de_consumo,total_ingresos)

values
(@Id_ingresos,
@Id_Persona,@remuneracion_basica,
@asignacion_familiar,@horas_extras,@comision,
@vales_de_consumo, @total_ingresos)
go



CREATE PROCEDURE usp_insertadescuentos
@Id_Descuentos_del_trabajador int,
@Id_Persona int,
@aporte_sp decimal(18,2),
@adelanto_quincena decimal(18,2),
@vales_de_consumo decimal(18,2),
@tardanzas decimal(18,2),
@total_descuentos decimal(18,2)

as
insert into DescuentosDelTrabajador(Id_Descuentos_del_trabajador,Id_Persona, aporte_sp,adelanto_quincena,vales_de_consumo,
tardanzas,total_descuentos)

values
(@Id_Descuentos_del_trabajador,@Id_Persona,
@aporte_sp,@adelanto_quincena,@vales_de_consumo,
@tardanzas,@total_descuentos)
go



CREATE PROCEDURE usp_insertaaportes
@Id_Aportes_del_empleador int,
@Id_Persona int,
@aporte_essalud decimal(18,2),
@aporte_seguro_vida_ley decimal(18,2),
@aporte_seguro_sctr decimal(18,2),
@aporte_eps decimal(18,2),
@total_aportes decimal(18,2)

as
insert into AportesDelEmpleador(Id_Aportes_del_empleador,Id_Persona,aporte_essalud,
aporte_seguro_vida_ley,aporte_seguro_sctr,
aporte_eps,total_aportes)

values
(@Id_Aportes_del_empleador,@Id_Persona,
@aporte_essalud,@aporte_seguro_vida_ley,
@aporte_seguro_sctr,@aporte_eps,@total_aportes)
go



CREATE PROCEDURE usp_insertaboleta
@Id_Boleta int,
@Id_Persona int,
@puesto varchar(50),
@centro_de_trabajo varchar(20),
@periodo_de_pago datetime,
@regimen_pensionario varchar(20),
@CUSSP char(12),
@vacaciones datetime,
@remuneracion_basica decimal(18,2),
@dias_laborados int,
@total_ingresos decimal(18,2),
@total_descuentos decimal(18,2),
@total_aportes decimal(18,2),
@neto_a_pagar decimal(18,2)

as
insert into Boleta(Id_Boleta,Id_Persona,puesto,
centro_de_trabajo,periodo_de_pago,
regimen_pensionario,CUSSP,vacaciones,
remuneracion_basica,dias_laborados,
total_ingresos,total_descuentos,
total_aportes,neto_a_pagar)

values
(@Id_Boleta,@Id_Persona,@puesto,
@centro_de_trabajo,@periodo_de_pago,
@regimen_pensionario,@CUSSP,@vacaciones,
@remuneracion_basica,@dias_laborados,
@total_ingresos,@total_descuentos,
@total_aportes,@neto_a_pagar)


go


