select * from personas
select * from prestamo 


-- Consulta: Obtener la cantidad ahorrra, el monto del préstamo y el garante de las personas cuyo préstamo está entre 100 y 1000
select personas.cantidad_ahorrada, prestamo.monto, prestamo.garante from personas, prestamo
where personas.cedula = prestamo.cedula and prestamo.monto between money(100) and money(1000)

-- Obtener todos los datos de la persona cuya cédula sea igual a la cedula de nombre "Sean"
select * from personas where cedula = (select cedula where nombre = 'Sean')
