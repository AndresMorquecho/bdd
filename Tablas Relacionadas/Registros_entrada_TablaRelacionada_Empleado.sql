select * from registros_entrada



create table empleado(
	codigo_empleado int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,

	CONSTRAINT empleado_pk primary key(codigo_empleado)
);

alter table registros_entrada
add column codigo_empleado int,
add constraint registros_entrada_empleado_fk foreign key(codigo_empleado)
REFERENCES empleado(codigo_empleado)


select * from empleado

INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) 
VALUES (2201, 'Juan Perez', '2024-09-25', '09:00:00');

INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) 
VALUES (2202, 'Maria Lopez', '2024-09-25', '09:15:00');

INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) 
VALUES (2203, 'Carlos Gomez', '2024-09-25', '09:30:00');

INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) 
VALUES (2204, 'Ana Torres', '2024-09-25', '09:45:00');

INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) 
VALUES (2205, 'Luis Sanchez', '2024-09-25', '10:00:00');

INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) 
VALUES (2206, 'Carmen Morales', '2024-09-25', '10:15:00');

INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) 
VALUES (2207, 'Roberto Diaz', '2024-09-25', '10:30:00');

INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) 
VALUES (2208, 'Elena Vargas', '2024-09-25', '10:45:00');

INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) 
VALUES (2209, 'Pedro Jimenez', '2024-09-25', '11:00:00');

INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) 
VALUES (2210, 'Laura Castillo', '2024-09-25', '11:15:00');

-- INSERT EN TABLA REGISTRO 
INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
VALUES (1, '0912345678', '2023-08-10', '08:30:00', 2201);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
VALUES (2, '0912345679', '2023-08-15', '09:00:00', 2202);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
VALUES (3, '0912345680', '2023-09-05', '10:00:00', 2203);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
VALUES (4, '0912345681', '2023-09-20', '11:15:00', 2204);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
VALUES (5, '0912345682', '2023-10-01', '08:45:00', 2205);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
VALUES (6, '0912345683', '2023-10-15', '12:30:00', 2206);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
VALUES (7, '0912345684', '2023-11-01', '09:15:00', 2207);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
VALUES (8, '0912345685', '2023-11-10', '10:30:00', 2208);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
VALUES (9, '0912345686', '2023-12-01', '11:45:00', 2209);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
VALUES (10, '0912345687', '2023-12-15', '12:00:00', 2210);

