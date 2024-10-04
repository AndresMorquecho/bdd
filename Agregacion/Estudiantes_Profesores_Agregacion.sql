select * from estudiantes
select * from profesores

--Funcion 1: Obtener la cantidad total de estudiantes asignados a cada profesor

--Escribir la setencia SQL utilizando la funcion de agregación  COUNT para contar el número de estudiantes
--Utilizar la cláusula GROUP BY para agrupar los estudiantes por profesor


select  est.codigo_profesor, count(est.nombre)  from estudiantes est join profesores prof on est.codigo_profesor = prof.codigo
group by est.codigo_profesor


alter table estudiantes
add column edad INTEGER



--Funcion 2: Obtener la edad promedio de los estudiantes

--Escribir la setencia SQL utilizando la funcion de agregación  COUNT para contar el número de estudiantes
--Utilizar la cláusula GROUP BY para agrupar los estudiantes por profesor

SELECT ROUND(AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM estudiantes.fecha_nacimiento))) AS edad_promedio
FROM estudiantes;




