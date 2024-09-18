select * from cuentas

-- Actulizar el saldo a 10 de las cuentas cuya cedula_propietario empiece por 17

update cuentas set saldo = 10  where cuentas.cedula_propietario like ('17%')