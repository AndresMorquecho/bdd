select * from videojuegos
-- 5 insercciones en todos los campos 
INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion) VALUES
(1, 'The Legend of Zelda', 'Aventura épica en el reino de Hyrule', 95),
(2, 'Super Mario Odyssey', 'Plataformas en 3D con Mario', 97),
(3, 'Minecraft', 'Juego de construcción y supervivencia', 93),
(4, 'The Witcher 3', 'RPG de mundo abierto con Geralt de Rivia', 92),
(5, 'Red Dead Redemption 2', 'Aventura en el salvaje oeste', 96);


-- 3 insercciones solo en campos obligatorios
INSERT INTO videojuegos (codigo, nombre, valoracion) VALUES
(6, 'The Legend of Zelda', 95),
(7, 'Super Mario Odyssey', 97),
(8, 'Minecraft', 93);
