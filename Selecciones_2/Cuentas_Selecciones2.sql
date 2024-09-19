--CUENTAS
select * from cuentas

-- Selecionar le numero de cuenta y saldo de todas cuentas con saldo mayor a 100 y menor a 1000
select cuentas.numero_cuenta, cuentas.saldo from cuentas where saldo > money(100) and cuentas.saldo < money(1000)

-- Seleccionar las cuentas entre el día de hoy hasta hace 1 año
select * from cuentas where cuentas."fecha_creación" > '2023-01-01' and cuentas."fecha_creación" <= '19-09-2024'

-- Selecionar las cuentas con saldo 0 o con una cedula de propietario que termine con 2 
select * from cuentas where saldo = money(0) or cuentas.cedula_propietario like '%2'