create table producto(
	codigo int not null,
	nombre varchar(50) not null,
	stock int not null,

	constraint producto_pk primary key (codigo)
)


create table proveedores(
	codigo int not null,
	nombre varchar(50) not null,
	telefono char(10) not null,

	constraint proveedores_pk primary key (codigo)
)


create table productos_por_proveedor(
	pp_codigo_producto int not null,
	pp_codigo_proveedor int not null,
	precio money not null,

	constraint producto_fk foreign key(pp_codigo_producto) references producto(codigo),
	constraint proveedor_fk foreign key(pp_codigo_proveedor) references proveedores(codigo),

	constraint productos_por_proveedor_pk primary key(pp_codigo_producto,pp_codigo_proveedor)
)


insert into producto(codigo, nombre, stock)
values
(100,'Doritos',100),
(200,'Kchitos',200),
(300,'Papas',300),
(400,'Takis',0)

select * from producto


insert into proveedores(codigo,nombre,telefono)
values
(1,'Snacks SA', '1234567890'),
(2,'DistriSnacks', '1234567899')

select * from proveedores


insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio )
values
(300,1,0.48)
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio )
values
(300,1,0.49),
(100,1,0.50),
(200,1,0.41),
(400,2,0.50)


select * from productos_por_proveedor

SELECT prod.codigo, prod.nombre, prov.nombre, pp.precio
FROM producto prod
JOIN productos_por_proveedor pp ON prod.codigo = pp.pp_codigo_producto
JOIN proveedores prov ON prov.codigo = pp.pp_codigo_proveedor
where prod.codigo = 300

