-- Consulta: Obtener el nombre y apellido de los clientes cuya cédula contenga el número 7 en su CI,
select nombre, apellido from clientes, compras where clientes.cedula = compras.cedula and compras.cedula like '%7%'

-- Subconsulta: Obtener todos los clientes cuya cédula sea igual a cédula de nombre Mónica
select * from clientes where cedula in ( select cedula from clientes where nombre = 'Monica')

--Nota uso in en lugar de = Porque tengo más de una Monica
