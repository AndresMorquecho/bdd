select * from videojuegos

-- Listar los registros de videojuegos con un nombre que contengan la letra "C" o una valoracion de 7
select * from videojuegos where nombre like '%C%' or videojuegos.valoracion = 7

--Seleccionar videojuegos con un código entre 3 y 7 o una valoracion de 7
select * from videojuegos where codigo between 3 and 7 or videojuegos.valoracion = 7


-- Seleccionar videojuegos de guerra con una valoración mayor a 7 y que en su nombre empiecen con 'C'
-- o los videojuegos con una valoración mayor a 8 y que en su nombre empiecen con 'D'

SELECT * 
FROM videojuegos 
WHERE (descripcion = 'juego de guerra' AND valoracion > 7 AND nombre LIKE 'C%')
   OR (valoracion > 8 AND nombre LIKE 'D%');
