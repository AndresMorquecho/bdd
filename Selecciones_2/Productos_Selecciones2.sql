--PRODUCTOS
-- Selecionar todos los productos con extock igual a 10 y precio menor a 10 
select * from productos where stock  = 10 and precio < money(10)

-- Seleecionar los nombre y stock de todos los productos que tengan un m en su nombre 
-- o tenga un espacio en balcno en su descripción

select nombre, stock from productos where nombre like '%m%' or productos.descripcion like '% %'

-- Selecionnar el nombre de todos los productos que tenga null el campo de descrpcion o tenga un stock de 0 
select nombre from productos where productos.descripcion is null or productos.stock = 0
