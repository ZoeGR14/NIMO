drop database if exists NimoBase;
create database NimoBase;
use NimoBase;

create table usuario(
usuar varchar(50) primary key not null,
tipo_us int,
telefono varchar(12),
gen varchar(15),
f_nac varchar(50),
apPat_us varchar(50),
apMat_us varchar(50),
nom_us varchar(50),
pass_us varchar(50),
mail_us varchar(50)
);

/* Tipos de Usuario
	1 - Cliente
    2 - Veterinario Validado
    3 - Veterinario NO Validado
    4 - Administrador
    5 - Gestor de Veterinarios 
    6 - Invitado */

create table foro(
id_foro varchar(25) primary key not null,
contenido_foro varchar(2000)
);

create table foro_usu(
usuar varchar(50),
id_foro varchar(25),
foreign key (usuar) references usuario(usuar) on delete cascade on update cascade,
foreign key (id_foro) references foro(id_foro) on delete cascade on update cascade
);

/* Estados de una nota
1. Normal
2. En Papelera
*/

create table nota(
id_nota int primary key auto_increment not null,
contenido_nota varchar(3000),
fecha_nota timestamp default current_timestamp,
estado int
);

create table nota_usu(
id_nota int auto_increment not null,
usuar varchar(50),
foreign key (usuar) references usuario(usuar) on delete cascade on update cascade,
foreign key (id_nota) references nota(id_nota) on delete cascade on update cascade
);

create table veterinario(
cedula int primary key not null,
clinica_vet varchar(450),
usuar varchar(50),
foreign key (usuar) references usuario(usuar) on delete cascade on update cascade
);

create table mascota(
id_masc int primary key auto_increment,
nombre_masc varchar(50),
raza varchar(60),
tipoRaza varchar(60),
nac_masc varchar(20),
gustos varchar(160),
disgustos varchar(160),
sexo varchar(10),
peso int,
imagen longblob,
tipo_animal varchar(20),
alergias varchar(10),
color varchar(20),
estado varchar(20)
);

create table masc_usu(
id_masc int,
usuar varchar(50),
foreign key (usuar) references usuario(usuar) on update cascade on delete cascade,
foreign key (id_masc) references mascota(id_masc) on update cascade on delete cascade
);

create table adopcion(
id_adopc int primary key auto_increment not null,
salud varchar(1000),
historia varchar(1000),
ubicacion varchar(450)
);

create table adopc_masc(
id_adopc int,
id_masc int,
foreign key (id_adopc) references adopcion(id_adopc) on update cascade on delete cascade,
foreign key (id_masc) references mascota(id_masc) on update cascade on delete cascade
);

create table adoptar(
id_adopt int primary key auto_increment not null,
p1 varchar(110),
p2 varchar(110),
p3 varchar(110),
p4 varchar(110),
p5 varchar(110),
p6 varchar(110),
p7 varchar(110),
p8 varchar(110),
p9 varchar(110)
);

# drop tables if exists adoptar, adopt_masc;

create table adopt_masc(
id_adopt int auto_increment not null,
id_masc int,
usuar varchar(50),
foreign key (usuar) references usuario(usuar) on delete cascade on update cascade,
foreign key (id_adopt) references adoptar(id_adopt) on update cascade on delete cascade,
foreign key (id_masc) references mascota(id_masc) on update cascade on delete cascade
);

create table citas(
id_cita int primary key auto_increment not null,
fecha_cita varchar(20),
usuar varchar(50),
id_masc int,
cedula int,
foreign key (usuar) references usuario(usuar) on delete cascade on update cascade,
foreign key (id_masc) references mascota(id_masc) on update cascade on delete cascade,
foreign key (cedula) references veterinario(cedula) on update cascade on delete cascade
);

create table comentarios(
id_coment int primary key auto_increment not null,
comentario varchar(3000),
tipo_coment int
);

/* Tipos de Comentarios 
   1 -  Comentario de invitado (no desplegable en soporte)
   2 - Comentario de usuario (desplegable en soporte)*/

create table usu_coment(
id_coment int auto_increment not null,
usuar varchar(50),
foreign key (id_coment) references comentarios(id_coment) on delete cascade on update cascade,
foreign key (usuar) references usuario(usuar) on delete cascade on update cascade
);

create table veterinario_cliente(
usuar varchar(50),
cedula int,
foreign key (usuar) references usuario(usuar) on delete cascade on update cascade,
foreign key (cedula) references veterinario(cedula) on update cascade on delete cascade
);

create table comunidad(
id_comu int primary key auto_increment not null,
usuar varchar(50),
comunidad_name varchar (50),
descripcion_comu varchar(2000)
);


select * from usuario;
select * from veterinario;
select * from veterinario_cliente;
select * from nota;
select * from nota_usu;
select * from mascota;
select * from masc_usu;
select * from comentarios;
select * from usu_coment;
select * from veterinario_cliente;
select * from adopcion;
select * from adopc_masc;
select * from adoptar;
select * from adopt_masc;

/*SELECT * FROM mascota INNER JOIN adopc_masc ON mascota.id_masc = adopc_masc.id_masc WHERE mascota.estado = 'adopcion';
SELECT * FROM masc_usu INNER JOIN adopc_masc  ON masc_usu.id_masc = adopc_masc.id_masc WHERE usuar != "willis";
SELECT * FROM mascota INNER JOIN adopc_masc ON mascota.id_masc = adopc_masc.id_masc INNER JOIN adopcion ON adopcion.id_adopc = adopc_masc.id_adopc INNER JOIN masc_usu ON mascota.id_masc = masc_usu.id_masc WHERE mascota.estado = 'adopcion' AND masc_usu.usuar != "willis";

SELECT * FROM mascota INNER JOIN masc_usu ON mascota.id_masc = masc_usu.id_masc INNER JOIN adopcion ON adopc_masc.id_adopc= adopcion.id_adopc WHERE mascota.estado = 'adopcion';*/

SELECT * FROM mascota INNER JOIN adopt_masc ON mascota.id_masc = adopt_masc.id_masc INNER JOIN adoptar ON adoptar.id_adopt = adopt_masc.id_adopt INNER JOIN usuario ON adopt_masc.usuar = usuario.usuar INNER JOIN masc_usu ON mascota.id_masc = masc_usu.id_masc WHERE adopt_masc.usuar = "+usuario+";
SELECT * FROM mascota INNER JOIN adopt_masc ON mascota.id_masc = adopt_masc.id_masc INNER JOIN adoptar ON adoptar.id_adopt = adopt_masc.id_adopt INNER JOIN usuario ON adopt_masc.usuar = usuario.usuar INNER JOIN masc_usu ON mascota.id_masc = masc_usu.id_masc WHERE masc_usu.usuar = "willis";
SELECT * FROM adoptar where id_adopt="1";
