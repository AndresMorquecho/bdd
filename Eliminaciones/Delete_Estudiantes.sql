select * from estudiantes

-- Elimina todos los estudiantes que tenga una cedula que termina por 05
delete from estudiantes where estudiantes.cedula like ('%05')