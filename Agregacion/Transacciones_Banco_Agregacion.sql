select * from transacciones
select * from banco

--Funcion 1 : Obtener la cantidad total de transaccion de tipo C

select count(transacciones.tipo) as total_transacciones_credito  from transacciones
where transacciones.tipo = 'C'

--Funcion 2: Obtener el promedio de montos de transacciones para cada número de cuenta


select tra.numero_cuenta, round(avg(cast(tra.monto as decimal)),2) as monto_promedio from transacciones tra
group by tra.numero_cuenta