select * from estudiantes

-- Actulizar el apellido por Hernandez todos los estudiantes que tengan una cedula que empieza por le 17

update estudiantes set apellido = 'Hernandez' where cedula like ('17%')
