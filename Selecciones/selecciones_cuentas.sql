select * from cuentas

-- 1. Crear un select que traiga el numero de cuenta y el saldo de todas las cuentas
select numero_cuenta, saldo from cuentas
-- 2. Crear un select que traiga los registros entre el dia de hoy hasta 2 meses antes
select fecha_creación,* from cuentas where fecha_creación between '17/07/2024' and '17/09/2024'
-- 3. Crear un select que traiga el numero de cuenta y el sado de las cuentas desde el día de hoy hasta 2 meses antes
select numero_cuenta, saldo from cuentas where fecha_creación between '17/07/2024' and '17/09/2024'
