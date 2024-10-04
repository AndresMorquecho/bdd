select * from videojuegos
select * from plataformas


--funcion 1: obtener la cantidad total de plataformas disponibles para cada videojuego

select  plataformas.codigo_videojuego ,count(codigo_videojuego) 
as total_plataformas from plataformas group by id_plataforma

--funcion 2: Obtener la valoracion promedio de todos los videojuegos
select round(avg(valoracion),2) as valoracion_promedio from videojuegos