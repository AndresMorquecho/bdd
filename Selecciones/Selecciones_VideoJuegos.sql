select * from videojuegos

-- Seleccionar todos los videoJuegos con un nombre que comience con C
select * from videojuegos where nombre like 'C%'

-- Seleccionar Videojuegos con una valoración entre 9 y 10
select * from videojuegos where valoracion between 9 and 10;

-- Seleccionar VideoJuegos con una descripcción Null
select * from videojuegos where descripcion is null
