select * from registros_entrada
select * from empleado
-- Consulta: Obtener la cedula del epleado, fecha y nombre de los empleados cutos registros de entrada tienen fecha entre '2023-08-01' AND '2023-08-31')
-- o cuya cedula del empleaado contiene 17% y la hora de entrada este entre '08:00' AND '12:00' o cuya fecha esta entre '2023-10-06' AND '2023-10-20'
-- la cedula del empleado contiene 08% y la hora de entrada '09:00' AND '13:00'

SELECT re.cedula_empleado, re.fecha, em.nombre 
FROM registros_entrada re 
JOIN empleado em 
ON re.codigo_empleado = em.codigo_empleado 
WHERE 
(re.fecha BETWEEN '2023-08-01' AND '2023-08-31')
OR 
(re.cedula_empleado LIKE '17%' AND re.hora BETWEEN '08:00' AND '12:00')
OR 
(re.cedula_empleado LIKE '08%' AND re.hora BETWEEN '09:00' AND '13:00' AND re.fecha BETWEEN '2023-10-06' AND '2023-10-20');
-- Subconsulta obtener todos los datos de empleado donde el codigo de registro del empleado
-- corresponde al codigo de regigistro de entrada de cedula 2201

SELECT re.cedula_empleado, re.fecha, em.nombre 
FROM registros_entrada re 
JOIN empleado em 
ON re.codigo_empleado = em.codigo_empleado 
WHERE em.codigo_empleado =(select re.codigo_empleado from  registros_entrada re where re.codigo_empleado = '2201')
