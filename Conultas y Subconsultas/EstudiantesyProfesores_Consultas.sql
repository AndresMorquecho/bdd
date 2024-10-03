select * from estudiantes
select * from profesores
--Consulta: Obtener el codigo de profesor con todos los nombres y apellidos de los estudiantes cuyo apellido contiene la letra n
select profesores.codigo, estudiantes.nombre, estudiantes.apellido from profesores, estudiantes where
estudiantes.codigo_profesor = profesores.codigo

--Subsonsulta: Obtener todos los estudiantes cuyo codigo de profesor corresponde al nombre ´Franciso'
select * from profesores, estudiantes where
estudiantes.codigo_profesor = ( select profesores.codigo from profesores where profesores.nombre = 'Francisco' )

