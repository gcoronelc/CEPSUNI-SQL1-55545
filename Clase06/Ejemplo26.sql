-- UNION
/*
Se utiliza para unir resultados de 2 o mas consultas.
Las consultas deben tener la misma cantidad de columnas
y ser compatibles.
*/

select 'EMPLEADO' tipo, idempleado codigo, concat(apellido,', ',nombre) [nombre completo] 
from rh..empleado
UNION
select 'PROFESOR', IdProfesor, concat(ApeProfesor,', ',NomProfesor)
from edutec..Profesor;

-- Ejercicio
/*
En una sola consulta combine los datos de los alumnos y profesores de la base de datos EDUCA. La información a mostrar es:
▪ Categoría: Puede ser alumno o Profesor
▪ Nombre: debe ser el nombre del alumno o profesor
*/

-- De Ivan Guerra para todos:  09:09 AM

select 'alumno' categoria, alu_nombre "Nombre"from educa..ALUMNO unionselect 'profesor' cateria, cur_profesorfrom educa..CURSO;
go


--De Lesly Liza para todos:  09:10 AM

SELECT 'ALUMNO'  CATEGORIA, ALU_NOMBRE 'NOMBRE'FROM EDUCA..ALUMNOUNIONSELECT 'PROFESOR'  CATEGORIA, CUR_PROFESOR 'NOMBRE'FROM EDUCA..CURSO
go

-- De Huayanay, Fabiola para todos:  09:12 AM

select alu_id CODIGO,'ALUMNO' tipo , alu_nombre [NOMBRE COMPLETO] from EDUCA..ALUMNOUNIONselect cur_id, 'PROFESOR' tipo , 	case 		when cur_profesor is null then 'PENDIENTE'		when cur_profesor = '' then 'SE FUE'		else cur_profesor endfrom EDUCA..CURSO;
go




