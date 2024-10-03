select * from estudiantes


create table profesores(
	codigo int,
	nombre varchar(50),

	constraint profesores_pk primary key(codigo)
);

alter table estudiantes
add column codigo_profesor INTEGER,
add constraint estudiante_profesores_fk foreign key(codigo_profesor)
references profesores(codigo)

INSERT INTO profesores (codigo, nombre) VALUES
(1, 'Francisco'),
(2, 'Ana'),
(3, 'Carlos'),
(4, 'Beatriz'),
(5, 'David'),
(6, 'Elena'),
(7, 'Fernando'),
(8, 'Gabriela'),
(9, 'Hugo'),
(10, 'Isabel');


INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) VALUES
('1234567890', 'Juan', 'Pérez', 'juan.perez@example.com', '2000-01-15', 1),
('0987654321', 'María', 'Gómez', 'maria.gomez@example.com', '1999-02-20', 2),
('1122334455', 'Carlos', 'López', 'carlos.lopez@example.com', '2001-03-25', 3),
('5566778899', 'Ana', 'Martínez', 'ana.martinez@example.com', '1998-04-30', 4),
('6677889900', 'Luis', 'Rodríguez', 'luis.rodriguez@example.com', '2002-05-05', 5),
('2233445566', 'Sofía', 'Hernández', 'sofia.hernandez@example.com', '2000-06-10', 6),
('3344556677', 'Miguel', 'García', 'miguel.garcia@example.com', '1999-07-15', 7),
('4455667788', 'Laura', 'Fernández', 'laura.fernandez@example.com', '2001-08-20', 8),
('5566778890', 'Jorge', 'Ramírez', 'jorge.ramirez@example.com', '1998-09-25', 9),
('6677889901', 'Elena', 'Torres', 'elena.torres@example.com', '2002-10-30', 10);



