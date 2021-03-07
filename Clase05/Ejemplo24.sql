


-- =============================================
-- Creación de la Base de Datos
-- =============================================

USE master;
go

IF( EXISTS ( SELECT name FROM master.sys.databases WHERE name = 'CLINICA' ) )
BEGIN
	DROP DATABASE CLINICA;
END;
go

CREATE DATABASE CLINICA;
go


-- =============================================
-- Creció la Base de Datos
-- =============================================

use clinica;
go

