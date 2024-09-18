select * from videojuegos

-- Actualizar todas las descripciones de los videojuegos cuya valoración sea mayor que 9 por "Mejor Puntuado"

update videojuegos set descripcion = 'Mejor puntuado' where videojuegos.valoracion > 9 
