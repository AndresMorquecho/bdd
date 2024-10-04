select * from personas
select * from prestamo

-- Funcion 1: Obtener la suma total de los montos de préstamos para cada persona

-- Escribir la setencia SQL utilizando la funcion de agregación Sum para sumar los montos de los préstamos
-- Utilizar la cláusula GROUP BY para agrupar los préstamos por persona

select personas.cedula, sum(prestamo.monto) as monto_total_prestamos from personas join prestamo on personas.cedula = prestamo.cedula
group by personas.cedula 

-- Funcion 2: Obtener la cantidad total de personas que tienen mas de  un hijo

-- Escribir la setencia SQL utilizando la funcion de agregación count para contar el numero de personas
-- Utilizar la cláusula Where para filtrar las personas que tienen mas de un hijo

select count(prestamo.monto) as total_personas from personas join prestamo on personas.cedula = prestamo.cedula
where personas.numero_hijos > 1 
