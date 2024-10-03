select * from productos


select * from productos where productos.nombre like '%m%'

-- De los 10 insert ingresar al menos 3 productos donde su nombre 
-- contanga la letra m 


-- y al menos 1 donde su descirpccion sea null ademas 
-- ingresar al menos 1 venta donde la cantidad sea 5


create table ventas(
	id_venta int,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,

CONSTRAINT venta_pk primary key(id_venta),

CONSTRAINT venta_productos_fk FOREIGN key(codigo_producto)
references productos(codigo)
)

insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values
(1, 5, '2-10-2024',5 ),
(2, 7, '2-10-2023',7 ),
(3, 14, '2-10-2024',5 ),

(4, 1, '2-01-2024',5 ),
(5, 2, '2-9-2023',5 ),
(6, 3, '2-4-2023',5 ),
(7, 4, '2-2-2022',5 ),
(8, 5, '2-12-2024',5 ),
(9, 6, '2-2-2022',5 ),
(10, 7, '2-1-2022',5 )
























