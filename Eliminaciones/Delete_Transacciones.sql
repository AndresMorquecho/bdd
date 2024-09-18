select * from transacciones

-- Elimina las transaferencias que se hayan hecho entre las 14:00 y 18:00 del mes de agosto del año actual
delete from transacciones where fecha BETWEEN '1/8/2024' and '31/8/2024' and hora BETWEEN '14:00' and '18:00'