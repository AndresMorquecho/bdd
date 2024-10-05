create table usuarios(
	id int not null,
	nombre varchar(25),
	apellido varchar(25),
	fecha_nacimiento date,

	CONSTRAINT usuarios_pk primary key (id)
	
)

insert into usuarios values (1,'Marilyn','Sagñay','05/11/2023'),
							(2,'Romel','Chamba','06/11/2023'),
							(3,'Mario','Guzñay','05/11/2023'),
							(4,'Johann','Domo','07/11/2023'),
							(5,'Monserrate','Vera','05/11/2023'),
							(6,'Lucio','Vargas','05/11/2023'),
							(7,'Martín','Arizaga','05/11/2023'),
							(8,'Fricson','Erazo','05/11/2023'),
							(9,'Jairo','Obando','05/11/2023'),
							(10,'Berni','Tomalá','05/11/2023');
							

select * from usuarios

create table grupo(
	id int not null,
	nombre varchar(25),
	descripcion varchar(75),
	fecha_creaciond date,

	 constraint grupo_pk primary key(id) 
)



insert into grupo values (1,'Maternal 1','Grupo de maternal matutino','08/03/2020'),
						 (2,'Maternal 2','Grupo de maternal vepertino','08/03/2020'),
						 (3,'Maternal 3','Grupo de maternal nocturno','08/03/2020'),
						 (4,'Incial 1 ','Grupo de inicial matutino','15/03/2021'),
						 (5,'Incial 2','Grupo de  inicial vespertino','15/03/2021'),
						 (6,'Incial 3','Grupo de  inicial  nocturno','15/03/2021'),
						 (7,'Incial intensivo','Grupo de inicial días sabados','15/03/2021'),
						 (8,'Maternal intensivo 1','Grupo de maternal matutino días sabados','15/03/2022'),
						 (9,'Maternal intensivo 2','Grupo de maternal vespertino días sabados','15/03/2022'),
						 (10,'Maternal intensivo 3','Grupo de maternal nocturno días sabados','15/03/2022');


select * from grupo	

create table usuario_grupo(
	us_id int not null,
	gr_id int not null,

	constraint usuario_fk foreign key(us_id) references usuarios(id),
	constraint grupo_fk foreign key(gr_id) references grupo(id),
	constraint usuario_por_grupo primary key(us_id,gr_id)
)

insert into usuario_grupo values (1,8),
								 (2,3),
								 (3,8),
								 (4,9),
								 (5,1),
								 (6,2),
								 (7,8),
								 (8,8),
								 (9,10),
								 (10,1);
select * from usuario_grupo
								 
-- CONSULTAS SQL:

select * from usuarios
select * from grupo	
select * from usuario_grupo

-- CONSULTA 1 : 

--Seleccionar los nombre de los usuario y los nombres de los grupos

select us.nombre, gp.nombre from usuario_grupo up
join grupo gp on up.gr_id = gp.id
join usuarios us on up.us_id = us.id

-- Subconsulta:

--Debes selecionar el nombre de los usaurios
--Utiliza la tabla "Usuarios"
-- Utiliza una subconsulta para obtener los "us_id" de la tabla "usuario_grupo"
-- donde "gr_id" sea igual 1
-- utiliza la condicion "id in(select *** from *** where *** = 1)"

select usuarios.nombre from usuarios
join usuario_grupo usu_gp on usuarios.id = usu_gp.us_id
where usu_gp.us_id in (select usu_gp.us_id from usuario_grupo usu_gp where usu_gp.gr_id = 1 )

-- Función de agreagación:

-- Debes seleccionar el nombre del grupo y contar la cidad de us_id en la tabla usuario_grupo

select * from usuario_grupo

select gp.nombre, count(up.us_id) as "Candatidad de us_id" from usuario_grupo up
join grupo gp on up.gr_id = gp.id
group by gp.nombre


--- CONSULTA 2

--Debes seleccionar los nombre de los usuario y los nombres de los grupos
select us.nombre, gp.nombre from usuario_grupo up
join grupo gp on up.gr_id = gp.id
join usuarios us on up.us_id = us.id
where gp.nombre like '%intensivos%'

-- Subconsulta 2 :

--Debes selecionar el nombre de los usaurios
--Utiliza la tabla "Usuarios"
-- Utiliza una subconsulta para obtener los "us_id" de la tabla "usuario_grupo"
-- donde "gr_id" sea igual 2
-- utiliza la condicion "id in(select *** from *** where *** = 2)"

select usuarios.nombre from usuarios
join usuario_grupo usu_gp on usuarios.id = usu_gp.us_id
where usu_gp.us_id in (select usu_gp.us_id from usuario_grupo usu_gp where usu_gp.gr_id = 2 )


-- Función de agreagación 2 :

-- Debes seleccionar el nombre del grupo y obtener el máximo valor de "us_id" en la tabla "usuario_grupo"
select * from usuario_grupo

select gp.nombre, max(up.us_id) as "valor maximo de us_id", min(up.us_id)  as "valor minimo de us_id "from usuario_grupo up
join grupo gp on up.gr_id = gp.id
group by gp.nombre


-- Consulta 3
-- Debes seleccionar los nombres de los usuarios y las fechas de creación del los grupos

select us.nombre, gp.fecha_creacion from usuario_grupo up
join grupo gp on up.gr_id = gp.id
join usuarios us on up.us_id = us.id
where gp.fecha_creacion between '2020-03-08' and '2023-03-08'



-- Subconsulta 3 :

--Debes selecionar el nombre de los usaurios
--Utiliza la tabla "Usuarios"
-- Utiliza una subconsulta para obtener los "us_id" de la tabla "usuario_grupo"
-- donde "gr_id" sea igual 3
-- utiliza la condicion "id in(select *** from *** where *** = 3)"

select usuarios.nombre from usuarios
join usuario_grupo usu_gp on usuarios.id = usu_gp.us_id
where usu_gp.us_id in (select usu_gp.us_id from usuario_grupo usu_gp where usu_gp.gr_id = 3);


-- Función de agreagación 3 :

-- Debes seleccionar la descripción del grupo y contar la cantidad de "us_id" en la tabla "usuario_grupo"

select gp.descripcion, count(up.us_id) as "Cantidad de us_id" from usuario_grupo up
join grupo gp on up.gr_id = gp.id
group by gp.descripcion
