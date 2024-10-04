
--Escribir la sentencia SQL utilizando la función de agregación AVG para calcular el promedio de las cuentas
-- Utilizar la cláusula Where para filtrar las cuentas del usuario específico utilizando su cédula
-- Ejecutar la consulta en la base de datos

select avg(cast(cta.saldo as numeric)) from cuentas cta join usuario usu on cta.cedula_propietario = usu.cedula
where cta.cedula_propietario = '11789'

-- Escribir la sentencia SQL utilizando la función de agregación COUNT para contar el número de cuentas.
-- utilizar la cláusula GROUP BY para agrupar las cuentas por tipo de cuenta

select tipo_cuenta, count(usu.tipo_cuenta) from usuario usu 
group by usu.tipo_cuenta



