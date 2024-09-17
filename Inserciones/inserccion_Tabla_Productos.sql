select * from productos

-- 5 Insercciones en la tabla productos

insert into productos(codigo, nombre, descripcion, precio, stock) VALUES
(1, 'Celular A52', 'Android, conexión 5G, 256 GB', 460, 200),
(2, 'Laptop X250', 'Intel i7, 16GB RAM, 512GB SSD', 1200, 150),
(3, 'Tablet T10', 'Pantalla 10 pulgadas, 128GB', 300, 100),
(4, 'Pantalla LCD', 'Sistema Android 65 pulgadas', 500, 100),
(5, 'Mouse Gamer', 'Color Rojo, RGB, 600 DPI', 40, 200);

-- 3 insercciones solo en campos obligatorios codigo, precio, stock, nombre
insert into productos(codigo, nombre, precio, stock) VALUES
(6, 'PC GAMER', 600, 20),
(7, 'Parlantes', 50, 20),
(8, 'Audifonos', 35, 10);
