select * from clientes
select * from compras

--Funcion 1: Obtener el monto total de compras realizadas por CADA cliente

--Escribir la setencia SQL utilizando la funcion de agregación SUM para sumar los montos de las compras
--Utilizar la cláusula GROUP BY para agrupar las compras por cliente

select  compras.cedula ,sum(compras.monto) from clientes join compras on clientes.cedula = compras.cedula 
group by compras.id_compra	

--Funcion 2: Obtener la cantidad total de compras realizadas en una fecha específica

select compras.fecha_compra, count(compras.monto) from compras
where compras.fecha_compra = '2023-02-02'
group by compras.fecha_compra
