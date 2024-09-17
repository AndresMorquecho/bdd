
select * from registros_entrada 

-- Seleccionar todas las cedulas de empleado, fecha y hora de los registros de entrada
select * from registros_entrada 

-- Seleccionar los registros de entrada que estén entre 7:00 y 14:00
select * from registros_entrada where hora between '7:00' and '14:00'

-- Seleccionar los registros de entrada que tengas horas superior a 8:00
select * from registros_entrada where hora > '8:00'
