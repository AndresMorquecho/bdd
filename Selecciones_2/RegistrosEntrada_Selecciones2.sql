select * from registros_entrada

--Seleccione los registros de mes de septiembre o realizados por las cédulas de Pichincha (que inicie con 17)
SELECT * FROM registros_entrada
WHERE extract(month from fecha) = 9 or cedula_empleado like '17%';


--Seleccione los registros del mes de agosto realizados por las cédulas de Pichincha (qué inicie con 17) 
--y realizados entre las 08:00 a 12:00

SELECT * FROM registros_entrada 
where extract(month from fecha) = 8 and cedula_empleado like '17%' and hora between '08:00' and '12:00'


-- Seleccione los registros del mes de agosto realizados por las cédulas de Pichincha (qué inicie con 17) 
-- y realizados entre las 08:00 a 12:00 o los registros del mes de septiembre realizados por las 
-- cédulas de Esmeraldas (qué inicie con 08) y realizadas entre las 09:00 a 13:00

SELECT * 
FROM registros_entrada 
WHERE 
    (extract(month from fecha) = 8 AND cedula_empleado LIKE '17%' AND hora BETWEEN '08:00:00' AND '12:00:00') 
    OR 
    (extract(month from fecha) = 9 AND cedula_empleado LIKE '08%' AND hora BETWEEN '09:00:00' AND '13:00:00');
