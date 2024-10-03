select * from transacciones
select * from banco


--Consulta: Obtener todas las transacciones de tipo C cuyo numero de cuenta este entre 22001 y 22004

select * from transacciones, banco where transacciones.codigo = banco.codigo_transaccion
and tipo = 'C' and numero_cuenta between '22001' and '22004'

--Subconsulta: Obtener todos los datos de transacciones cuyo codigo corresponde al codigo de transaccion del banco con codigo 1

select transacciones.* from transacciones, banco where transacciones.codigo = banco.codigo_transaccion
and banco.codigo_banco = 1