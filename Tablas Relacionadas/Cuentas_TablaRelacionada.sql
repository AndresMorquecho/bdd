select * from cuentas

-- Creacion tabla usuarios
create table usuario(
	cedula char(5),
	nombre varchar(25)  not null,
	apellido varchar(25)  not null,
	tipo_cuenta varchar(20),
	limite_credito float,

	CONSTRAINT usuario_pk PRIMARY key(cedula)
);


select * from usuario
-- agregar a tabla usuario cuentas con fechas entre  '2022-08-21' and '2023-09-21'
-- y su saldo este entre 100 y 1000

DELETE FROM cuentas 
WHERE NOT (fecha_creación BETWEEN '2022-08-21' AND '2023-09-21' 
AND saldo::numeric BETWEEN 100 AND 1000);



SELECT * 
FROM cuentas 
WHERE fecha_creación BETWEEN '2022-08-21' AND '2023-09-21' 
AND saldo BETWEEN money(100)  AND  money (1000)

insert into usuario(cedula, nombre, apellido)
values
('11789', 'Julian', 'Alvarez' ),
('78901', 'Cristiano', 'Ronaldo' ),
('01234', 'Fernando', 'Quintero' ),
('13456', 'Luis', 'Peñafiel'),
('17501','Moises', 'Caicedo'),
('17509', 'Edmundo', 'Vagabundo'),
('17510', 'Josefina', 'Sanchez'),
('12333','Enzo', 'Marezca'),
('12444', 'Enzo', 'Fernandez'),
('12555', 'Mikaelo', 'Mudrick')


select  * from usuario
alter table cuentas
add CONSTRAINT cuentas_usuario_fk
FOREIGN key(cedula_propietario)
REFERENCES usuario(cedula)


