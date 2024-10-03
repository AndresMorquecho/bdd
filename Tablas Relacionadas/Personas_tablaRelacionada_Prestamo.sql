select * from personas



create table prestamo(
	cedula char(10),
	monto money,
    fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40),

	constraint prestamo_pk primary key(cedula)
);


alter table personas
add constraint personas_prestamo_fk foreign key(cedula)
references prestamo(cedula)


-- INSERCICION EN PRESTAMO

INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
VALUES ('1012345678', 2000.00, '2023-05-10', '09:30:00', 'John Doe');

INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
VALUES ('1012345679', 3500.50, '2023-06-15', '11:00:00', 'Jane Doe');

INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
VALUES ('1012345680', 1500.75, '2023-07-20', '10:15:00', 'Mike Johnson');

INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
VALUES ('1012345681', 5000.00, '2023-08-05', '12:45:00', 'Alice Brown');

INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
VALUES ('1012345682', 2750.25, '2023-09-12', '09:50:00', 'Carlos Lopez');

INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
VALUES ('1012345683', 4200.00, '2023-10-01', '08:30:00', 'Ana Torres');

INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
VALUES ('1012345684', 3100.50, '2023-11-18', '11:30:00', 'Roberto Diaz');

INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
VALUES ('1012345685', 6000.00, '2023-12-07', '10:00:00', 'Elena Vargas');

INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
VALUES ('1012345686', 2500.00, '2023-08-25', '08:15:00', 'Luis Gomez');

INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
VALUES ('1012345687', 7000.25, '2023-09-30', '09:45:00', 'Pedro Jimenez');

-- INSERCCION EN PERSONAS


INSERT INTO personas (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
VALUES (1012345678, 'Sean', 'Smith', 1.80, '1990-05-15', '08:30:00', 5000.00, 2);

INSERT INTO personas (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
VALUES (1012345679, 'Juan', 'Perez', 1.75, '1985-09-25', '09:00:00', 3000.50, 1);

INSERT INTO personas (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
VALUES (1012345680, 'Maria', 'Lopez', 1.65, '1992-03-12', '11:00:00', 4500.75, 3);

INSERT INTO personas (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
VALUES (1012345681, 'Carlos', 'Gomez', 1.85, '1980-07-08', '07:45:00', 10000.00, 0);

INSERT INTO personas (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
VALUES (1012345682, 'Ana', 'Torres', 1.70, '1995-02-20', '12:15:00', 6000.25, 2);

INSERT INTO personas (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
VALUES (1012345683, 'Luis', 'Sanchez', 1.78, '1988-06-18', '10:30:00', 7500.00, 1);

INSERT INTO personas (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
VALUES (1012345684, 'Carmen', 'Morales', 1.60, '1990-04-10', '09:45:00', 3200.50, 4);

INSERT INTO personas (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
VALUES (1012345685, 'Roberto', 'Diaz', 1.83, '1982-12-22', '11:20:00', 8500.00, 3);

INSERT INTO personas (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
VALUES (1012345686, 'Elena', 'Vargas', 1.72, '1994-11-05', '08:00:00', 1000.00, 2);

INSERT INTO personas (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
VALUES (1012345687, 'Pedro', 'Jimenez', 1.90, '1987-08-30', '06:50:00', 9500.25, 1);



