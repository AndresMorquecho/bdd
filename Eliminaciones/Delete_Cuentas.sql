Select * from cuentas

-- Elimina todas las cuentas cuya cedula_propietario empiece por 10 
delete from cuentas where cuentas.cedula_propietario like ('10%')