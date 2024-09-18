select * from registros_entrada 
--Actuliza todas las cédulas de registro_entrada por "082345679" para todos los registros del mes de agosto

Update registros_entrada set cedula_empleado = '082345679' where fecha BETWEEN '1/8/2024' and '31/8/2024'
