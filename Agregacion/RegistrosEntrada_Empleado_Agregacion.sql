select * from registros_entrada
select * from empleado

--funcion 1: Obtener la cantidad total de registros de entrada realizados por cada empleado
select re.cedula_empleado, count(re.cedula_empleado) from registros_entrada re
group by re.cedula_empleado

--funcion 2: Obtener la fecha minina y maxima de los registros de entrada

select min(fecha) as fecha_minima, max(fecha) as fecha_maxima from registros_entrada re
