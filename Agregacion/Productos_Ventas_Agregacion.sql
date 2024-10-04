select * from productos
select * from ventas

--Funcion 1 : Obteener el maximo precio de todos los productos
--Escribir la setencia SQL utilizando la funcion de agregacion MAX para obtener el maximo precio de los productos

select max(productos.precio) as precio_maximo from productos

--Funcion 2: Obtener la suma total de la cantidad de productos vendidos

--Escribir la sentencia SQL utilizando la funcion de agregación SUM para sumar la cantidad de productos vendidos

select sum(ventas.cantidad) as cantidad_total_vendida from ventas
