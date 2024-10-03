
select * from productos
select * from ventas
--Consulta: Obtener el nombre, stock y cantidad de productos y ventas cuyo nombre contiene la letra m o la descripcion sea igual a 0
select productos.nombre, productos.stock, ventas.cantidad from productos, ventas where productos.codigo = ventas.codigo_producto and
(productos.nombre like '%m%' or productos.descripcion = null)

--Subconsulta: Obtener el nombre y stock de los productos donde el codigo de producto de las ventas corresponde a una cantidad de 5

select productos.nombre, productos.stock from productos, ventas 
where productos.codigo = ventas.codigo_producto
and productos.codigo in (select ventas.codigo_producto from ventas where cantidad = 5 )

-- Nota uso in porque tengo varios productos con cantidad de 5
