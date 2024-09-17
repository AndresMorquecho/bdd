select * from productos

-- 1. Crear select que traiga todos los productos que empiezan con Q

select * from productos where nombre like '(q%)'

-- 2. Crear un select que traiga los productos con una descripción de null

select * from productos where productos.descripcion is null	

-- 3. Crear un select que traiga todos los productos con un precio 2 y 3

select * from productos where productos.precio between money(2) and money(3) 


