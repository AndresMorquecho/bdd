--ESTUDIANTES

select * from estudiantes

-- Seleccionar el nombre y apellido de los estudiantes cuyos nombre empiecen con M o si su apellido termina en Z
select estudiantes.nombre, estudiantes.apellido from estudiantes where nombre like 'M%' or estudiantes.apellido like '%z'

--CREAR UN SELECT QUE TRAIGA LOS NOMBRE DE TODOS LOS ESTUDIANTES QUE 
--TENGAN UN NUMERO 32 U EMPIECE CON 18 EN ALGUNA PARTE DE SU CEDULA
select nombre from estudiantes where  estudiantes.cedula  like '%32%' or   estudiantes.cedula like '18%'

-- CREAR UN SELECT QUE TRAIGA LOS NOMBRES COMPLETOS DE TODOS LOS
--ESTUDIANTES CUYA CEDULA TERMINE EN 06 O EMPIECE CON 17
select nombre, apellido from estudiantes where cedula like '%06' or cedula like '17%'
