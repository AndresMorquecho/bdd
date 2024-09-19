--TRANSACCIONES


select * from transacciones
-- Seleccionar transacciones de tipo C realizadas por los clientes con N° de cuentas entre 222001 y 22004
select * from transacciones where tipo  = 'C' and numero_cuenta between '222001' and '22004';

--Selecionar transacciones de Tipo D que fueron realizas el 25 de mayo y con el rango de cuenta entre 22007 y 22010
select * from transacciones where tipo = 'D' and fecha = '25-05-2024' and numero_cuenta between '22007' and '22010'

--Selecione todas las transacciones en donde el codigo sea entre 1 y 5, 
-- N° cuenta entre 20002 o 22004 que se hayan
-- realizado los dias 26 y 29 de mayo 
select * from transacciones where codigo between 1 and 5
and transacciones.numero_cuenta between '20002' and '22004' and fecha between '26-05-2024' and '29-05-2024'