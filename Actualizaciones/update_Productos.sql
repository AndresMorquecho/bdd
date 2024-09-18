select * from productos
-- Actualizar el stock a 0 en todos los productos donde la descripción sea null
update productos set stock = 0 where productos.descripcion is null
