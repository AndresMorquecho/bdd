select * from transacciones 
-- Actualiza "TIPO" de todos registros que tengan una transacción mayor a 100 y menor que 500, que se hayan llevado a cabo en el mes de septiembre con horas entre 14:00 y 20:00 por "T"

UPDATE transacciones
SET tipo = 'T'
WHERE monto BETWEEN money(100) AND money(500)
AND fecha BETWEEN '2024-09-01' AND '2024-09-30'
AND hora BETWEEN '14:00:00' AND '20:00:00';
