
select * from cuentas

--Consulta obtener los numero de cuenta y nombres de usuario cuyos saldo etan entre 100 y 1000
select numero_cuenta, nombre from usuario us, cuentas cta 
where us.cedula = cta.cedula_propietario and cta.saldo between money(100)  and money(1000) 

--Obtener todos los datos cuentas y usuarios donde la fecha de creación de la cuenta este entre '2022-09-21' y '2023-09-21'
select cta.numero_cuenta, cta."fecha_creación", cta.saldo, us.cedula from usuario us, cuentas cta where us.cedula = cta.cedula_propietario and
cta."fecha_creación" between '2022-09-21' and '2023-09-21'