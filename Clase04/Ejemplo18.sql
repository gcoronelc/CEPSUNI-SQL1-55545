-- CONVERT y CAST
-- ====================================================================

/*
Funciones para convertir un dato de un tipo a otro.
*/


-- '25/02/2021'


select convert(datetime,'25/02/2021 14:12',103) Resultado;
go

select 
	convert(varchar(20), getdate(), 103) Resultado1,
	convert(varchar(20), getdate(), 100) Resultado1;
go




