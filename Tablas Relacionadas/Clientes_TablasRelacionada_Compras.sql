select * from clientes

select * from compras
create table compras(
	id_compra int,
	cedula char(10) not null,
	fecha_compra date not null,
	monto float not null
)

alter table compras
add constraint compras_pk primary key(id_compra) 


alter table compras
add constraint compras_clientes_fk
FOREIGN key(cedula)
references clientes(cedula)

-- INSERTE 10 DATOS A LA TABLA CLIENTES PORQUE ESTA VACIA :(
INSERT INTO clientes (cedula, nombre, apellido, edad) VALUES ('1234567890', 'Monica', 'Perez', 30);
INSERT INTO clientes (cedula, nombre, apellido, edad) VALUES ('9876543210', 'Monica', 'Gomez', 25);
INSERT INTO clientes (cedula, nombre, apellido, edad) VALUES ('1234578901', 'Carlos', 'Lopez', 40);
INSERT INTO clientes (cedula, nombre, apellido, edad) VALUES ('7654321890', 'Monica', 'Ramirez', 28);
INSERT INTO clientes (cedula, nombre, apellido, edad) VALUES ('1234567897', 'Ana', 'Martinez', 35);
INSERT INTO clientes (cedula, nombre, apellido, edad) VALUES ('7890123456', 'Monica', 'Fernandez', 22);
INSERT INTO clientes (cedula, nombre, apellido, edad) VALUES ('1234560789', 'Luis', 'Sanchez', 45);
INSERT INTO clientes (cedula, nombre, apellido, edad) VALUES ('3456789012', 'Monica', 'Diaz', 33);
INSERT INTO clientes (cedula, nombre, apellido, edad) VALUES ('1234567893', 'Pedro', 'Castro', 29);
INSERT INTO clientes (cedula, nombre, apellido, edad) VALUES ('5678901234', 'Monica', 'Vargas', 27);


-- INSERT 10 REGISTROS A COMPRAS

insert into compras(id_compra, cedula, fecha_compra, monto)
values
(1, '1234567890', '2-10-2024',300),
(2, '9876543210', '2-2-2023',400),
(3, '1234578901', '2-4-2024',200),
(4, '7654321890', '2-5-2024',100),
(5, '1234567897', '2-7-2023',100),
(6, '7890123456', '2-6-2023',200),
(7, '1234560789', '21-5-2023',300),
(8, '3456789012', '22-7-2024',200),
(9, '1234567893', '2-8-2024',100),
(10, '5678901234', '2-5-2023',200)


