select * from videojuegos

-- relacion uno a muchos entre videojuegos y plataformas, donde la tabla plataforma tiene los siguiente atributos: 
-- id plataforma(), nombre_plataforma, codigo_videojuegofk.



create table plataformas(

	id_plataforma INTEGER,
	nombre_plataforma varchar(50) not null,
	codigo_videojuego  INTEGER,

	CONSTRAINT plataformas_pk primary key(id_plataforma),
	constraint plataformas_videoJuegos_fk FOREIGN key(codigo_videojuego)
	references videojuegos(codigo)

)


-- de los 10 insert: ingresa algunos videojuegos cuya descripción contenga guerra otros donde su nombre inicio con C Y D al
-- infresar un videojuego con el nombre God of war


SELECT * from videojuegos where descripcion = 'Guerra'

SELECT * from videojuegos where nombre like 'C%' or nombre like  'D%' 

insert into videojuegos(codigo, nombre,descripcion, valoracion)
values
(222,'Conscript', 'Guerra', 10 ),
(333,'Commandos', 'Guerra', 10 ),
(444,'RiotZone', 'Guerra',  10 );


select * from plataformas

insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values
(1, 'X BOX', 222),
(2, 'Play station 2', 333),
(3, 'Play station 3', 444),
(4,'Play station 5', 70215),
(5, 'Smartphone Android', 1456),

(6, 'X BOX SERIES S', 63240),
(7, 'Pc', 63549),
(8, 'Nintendo Switch', 1),
(9,'Play station', 2),
(10, 'Smartphone Iphone', 3);




