select * from videojuegos
select * from plataformas

--Consulta obtener el nombre, descripcion, valoracion y nombre de plataforma de videojuegos y platafromas cuya descripcion 
-- Contiene Guerra y tiene una valoracion mayor a 7 o cuyo nombre comienza con C y tiene una valoracion mayor a 8 y comienza con D

SELECT vj.nombre, vj.descripcion, vj.valoracion, pl.nombre_plataforma, pl.codigo_videojuego
FROM videojuegos vj
JOIN plataformas pl ON vj.codigo = pl.codigo_videojuego
WHERE 
    (vj.descripcion = 'Guerra' AND vj.valoracion > 7)
    OR 
    ((vj.nombre LIKE 'C%' OR vj.nombre LIKE 'D%') AND vj.valoracion > 8);


--Obtener todos los datos de plataformas donde el codigo del videojuego corresponde al codigo de god of war
SELECT vj.nombre, vj.descripcion, vj.valoracion, pl.nombre_plataforma, pl.codigo_videojuego
FROM videojuegos vj
JOIN plataformas pl ON vj.codigo = pl.codigo_videojuego
WHERE pl.codigo_videojuego = (select vj.codigo from  videojuegos vj where vj.nombre = 'God of war')
