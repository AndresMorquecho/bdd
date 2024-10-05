create table ciudad(
	id int not null,
	nombre varchar(45) not null,

	constraint ciudad_pk primary key(id)
);

create table municipio(
	id int not null,
	nombre varchar(45),
	ciudad_id int not null,

	constraint municipio_pk primary key(id),
	constraint municipio_ciudad_fk foreign key(ciudad_id) references ciudad(id)
);

create table proyecto(
	id int,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,

	constraint proyecto_pk primary key(id)
	
);

create table proyecto_municipio(
	
	proyecto_id int not null,
	municipio_id int not null,

	constraint municipio_fk foreign key(municipio_id) references municipio(id),
	constraint proyecto_fk foreign key(proyecto_id) references proyecto(id),

	constraint proyecto_municipio_pk primary key(proyecto_id,municipio_id)
);



insert into ciudad values   (1,'Quito'),
							(2,'Ambato'),
							(3,'Guayaquil'),
							(4,'Machala'),
							(5,'Manta'),
							(6,'Loja'),
							(7,'Otavalo'),
							(8,'Cuenca'),
							(9,'Latacunga'),
							(10,'Tena');


insert into municipio values (1,'GAD MUNICIPAL QUITO',1),
							 (2,'GAD MUNICIPAL DE CUENCA',8),
							 (3,'GAD MUNICIPALIDAD DE AMBATO',2),
							 (4,'MUNICIPALIDAD DE MACAHALA ',4),
							 (5,'MUNIUCIPIO DE GUAYAQUIL',3),
							 (6,'MUNICIPIO DE OTAVALO',7),
							 (7,'MUNICIPIO DE LOJA',6),
							 (8,'MUNICIPIO DE MANTA',5),
							 (9,'MUNICIPIO DE LATACUNGA',9),
							 (10,'MUNICIPIO DE TENA',10);


insert into proyecto values (1,'Proyectos de Gestión Ambiental',9543.327,'10/02/2022','10/02/2023'),
							(2,'Proyectos en Fomento y Desarrollo Productivo',26553.264,'25/06/2022','10/08/2022'),
							(3,'Proyectos en Cambio Climático',1292.194,'01/02/2021','10/12/2023');
							

insert into proyecto_municipio values (1,5),
									  (3,5),
									  (1,2),
									  (2,1),
									  (1,4),
									  (2,9),
									  (1,10),
									  (3,6),
									  (1,3),
									  (2,7);


--Consulta 1:
--Debes seleccionar el nombre del municipio y el nombre del proyecto

select * from municipio
select * from proyecto_municipio


select muni.nombre, pro.proyecto from municipio muni
join proyecto pro on muni.id = pro.id 
join proyecto_municipio pro_muni on pro_muni.municipio_id = muni.id

--Subconsulta 1:
-- Debes seleccionar el nombre del proyecto

select proyecto.proyecto from proyecto
join proyecto_municipio ON proyecto_municipio.proyecto_id = proyecto.id
where proyecto_municipio.proyecto_id 
in(select proyecto_municipio.proyecto_id from proyecto_municipio where proyecto_municipio.municipio_id = 1 )

--Función de agregación 1:
--Debes seleccionar el nombre del municipio y contar la cantidad de "proyecto_id" en la tabla "proyecto_municipio"

select muni.nombre, count(pm.proyecto_id) as "Suma cantidad proyecto_id" from municipio muni
join proyecto_municipio pm on muni.id = pm.municipio_id group by muni.nombre



--Consulta 2:
--Debes seleccionar el nombre del municipio y el nombre del proyecto

select * from municipio
select * from proyecto_municipio


select muni.nombre, pro.proyecto from municipio muni
join proyecto pro on muni.id = pro.id 
join proyecto_municipio pro_muni on pro_muni.municipio_id = muni.id
where muni.nombre like '%GAD%'


--Función de agregación 2:
--Debes seleccionar el nombre del municipio y obtener el minimo valor de "proyecto_id" en la tabla "proyecto_municipio"

select muni.nombre, min(pm.proyecto_id) as "valores minimos | proyecto_id" from municipio muni
join proyecto_municipio pm on muni.id = pm.municipio_id group by muni.nombre

--Consulta 3:
--Debes seleccionar el nombre del municipio y el nombre de la ciudad.
-- Se realiza una unión entra las tablas "municipio" y "ciudad" utilizando la condición adecuada

select * from municipio
select * from proyecto_municipio
select * from ciudad

select muni.nombre, ciudad.nombre from municipio muni
join proyecto pro on muni.id = pro.id 
join proyecto_municipio pro_muni on pro_muni.municipio_id = muni.id
join ciudad on ciudad.id = muni.ciudad_id


--Subconsulta 3:
-- Selecciona el proyecto de la tabla "proyecto" donde el ide está presente en la subconsulta
-- que obtiene los proyecto_id de la tabla "proyecto_municipio" donde municipio_id es igual a 2

select municipio.nombre from municipio
join proyecto_municipio on municipio.id = proyecto_municipio.municipio_id
where proyecto_municipio.proyecto_id in(select proyecto_municipio.proyecto_id  FROM proyecto_municipio  where proyecto_municipio.municipio_id =2 )


-- Funcion agregación 3
-- Selecciona el nombre del municipio y se obtiene el valor máximo de proyecto_id en la
--tabla "proyecto_municipio" .Se realiza unión entre las tablas "municipio" y "proyecto_municipio"
-- y se agrupa por el nombre del municipio

SELECT municipio.nombre, MAX(proyecto_municipio.proyecto_id) AS max_proyecto_id
FROM municipio
JOIN proyecto_municipio ON municipio.id = proyecto_municipio.municipio_id
GROUP BY municipio.nombre;
