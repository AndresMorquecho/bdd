create table habitaciones (
	habitacion_numero int not null,
	precio_por_noche float not null,
	piso int not null,
	max_personas int,


	constraint habitaciones_pk primary key(habitacion_numero)
);

create table huespedes(
	id int,
	nombres varchar(45) not null,
	apellidos varchar(45) not null,
	telefono char(10),	
	correo varchar(45),
	direccion varchar(45),
	ciudad varchar(45),
	pais varchar(45),

	constraint huespedes_pk primary key(id)
);

create table reservas(
	inicio_fecha date,
	fin_fecha date,
	hab_num int not null,
	id_husped int not null,

	constraint habitaciones_fk foreign key(hab_num) references habitaciones(habitacion_numero),
	constraint huespedes_fk foreign key(id_husped) references huespedes(id),

	constraint reservas_habitaciones_por_huespedes_pk primary key(hab_num,id_husped)
	
)

 insert into habitaciones values (1,40.0,4,4),
 								 (2,20.0,4,2),
								 (3,40.0,4,4),
								 (4,40.0,3,4),
								 (5,20.0,3,2),
								 (6,20.0,3,2),
								 (7,20.0,2,2),
								 (8,20.0,2,2),
								 (9,20.0,2,2),
								 (10,15.0,1,1),
								 (11,15.0,1,1),
								 (12,15.0,1,1);
								 
insert into huespedes values    (1,'Ricardo','Montero',0980658774,'Ricmontero@gmail.com'),
								(2,'Sofía','Martinez',09887563205,'Sofimar@gmail.com'),
								(3,'Yamilteh','Guami',0998763298,'YAMGUAM@gmail.com'),
								(4,'Esther','Contreras',0995783602,'Esthcontro@gmail.com'),
								(5,'Wiliam','Mantilla',09858796320,'wmANTILLA@gmail.com'),
								(6,'Carmen','Noguera',0995876321,'Cnoguera@gmail.com'),
								(7,'Anika','Jimenez',0978965432,'AniJimenez@gmail.com'),
								(8,'Belen','Orejuela',0996365748,'BOrejuela@gmail.com'),
								(9,'Diana','Monroy',0987963214,'DianaMroy@gmail.com'),
								(10,'Bryan','Moncada',0986325741,'BrMoncada@gmail.com');
								
insert into reservas values ('11/05/2023','12/05/2023',2,10),
						    ('11/05/2023','12/05/2023',2,9),
							('22/06/2023','23/06/2023',1,1),
							('22/06/2023','23/06/2023',1,2),
							('22/06/2023','23/06/2023',1,3),
							('22/06/2023','23/06/2023',1,4),
							('01/01/2023','02/01/2023',12,5),
							('11/08/2023','12/08/2023',11,6),
							('11/05/2023','12/05/2023',10,7),
							('11/05/2023','12/05/2023',9,8);
							
-- C O N S U L T A S  --------  S Q L 
			
--Consulta 1:
--Debes seleccionar el número de habitaciones, los nombres y apellidos de los huéspedes.

select habs.habitacion_numero, huesp.nombres, huesp.apellidos from huespedes huesp 
join reservas ON reservas.id_husped = huesp.id
join habitaciones habs ON habs.habitacion_numero = reservas.hab_num


--Sub consulta1:
-- Debes selercionar los nombre y  apellidos de los huéspedes

select huesp.nombres, huesp.apellidos from huespedes huesp
join reservas on huesp.id = reservas.id_husped
where huesp.id in(select huesp.id from reservas where reservas.hab_num = 2 )


-- Función de agregación 1:
--Debes seleccionar el número de habitación y contar la cantidad de "Huesped_id" en la tabla "reservas"

select habs.habitacion_numero, count(reservas.id_husped) as "Cantidad de Huéspedes huesped_id" from habitaciones habs 
join reservas on habs.habitacion_numero = reservas.hab_num group by  habs.habitacion_numero


--Consulta 2:
-- Debes seleccionar el numero de habitación, piso, nombres y apellidos de los huespedes

select habs.habitacion_numero, habs.piso , huesp.nombres, huesp.apellidos from huespedes huesp 
join reservas ON reservas.id_husped = huesp.id
join habitaciones habs ON habs.habitacion_numero = reservas.hab_num
where habs.piso = 4


--Sub consulta2:
-- Debes selercionar los nombre y  apellidos de los huéspedes

select huesp.nombres, huesp.apellidos from huespedes huesp
join reservas on huesp.id = reservas.id_husped
where huesp.id in(select huesp.id from reservas where reservas.hab_num = 3)


-- Función de agregación 2:
--Debes seleccionar el número de habitación y obtener el promedio de "Huesped_id" en la tabla "reservas"

select habs.habitacion_numero, round(avg(reservas.id_husped),2)  as "Promedio de Huéspedes huesped_id" from habitaciones habs 
join reservas on habs.habitacion_numero = reservas.hab_num group by  habs.habitacion_numero



--Consulta 3:
-- Debes seleccionar el numero de habitación, nombres y apellidos de los huespedes
select habs.habitacion_numero, huesp.nombres, huesp.apellidos from huespedes huesp 
join reservas ON reservas.id_husped = huesp.id
join habitaciones habs ON habs.habitacion_numero = reservas.hab_num


--Sub consulta3 :
-- Debes selercionar los nombre y  apellidos de los huéspedes

select huesp.nombres, huesp.apellidos from huespedes huesp
join reservas on huesp.id = reservas.id_husped
where huesp.id in(select huesp.id from reservas where reservas.hab_num = 4)

-- Función de agregación 3:
--Debes seleccionar el número de habitación y obtener la suma de "precio_por_noche" en la tabla "Habitaciones"

select habs.habitacion_numero, sum(habs.precio_por_noche)  as "Suma de precio por noche" 
from habitaciones habs 
group by  habs.habitacion_numero


	