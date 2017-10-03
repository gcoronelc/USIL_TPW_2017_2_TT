


create table usuario(
cod_usuario int auto_increment,
nomb_usuario varchar(50),
clave varchar(50),
privilegio int,
primary key(cod_usuario)
);


insert into usuario(nomb_usuario,clave,privilegio)
values('Jorge','jorgito',1);
insert into usuario(nomb_usuario,clave,privilegio)
values('Luis','lucho',1);
insert into usuario(nomb_usuario,clave,privilegio)
values('Felix','avefenix',1);


create table administrador(
cod_admin int auto_increment,
cod_usuario int,
nombre varchar(50),
apellido varchar(50),
dni int,
telefono int,
primary key(cod_admin),
foreign key fk_administrador_usuario(cod_usuario) references usuario(cod_usuario)
);


insert into administrador(cod_usuario,nombre,apellido,dni,telefono)
values(1,'Felix','Bustamante',78451296,5461223);
insert into administrador(cod_usuario,nombre,apellido,dni,telefono)
values(2,'Jorge','Braulio',45963217,5051274);




create table propietarios(
cod_prop int auto_increment,
cod_usuario int,
nomb_prop varchar(50),
ape_prop varchar(50),
dni_prop varchar(10),
tel_prop varchar(11),
estado int,
primary key(cod_prop),
foreign key fk_propietarios_usuario(cod_usuario) references usuario(cod_usuario)
);



insert into propietarios(cod_usuario,nomb_prop,ape_prop,dni_prop,tel_prop,estado)
values(1,'Jorge','Davila Sanchez',78954612,5446589,'1');
insert into propietarios(cod_prop,nomb_prop,ape_prop,dni_prop,tel_prop,estado)
values(2,'Luis','Sanchez Padilla',48957412,5891274,'1');
insert into propietarios(cod_prop,nomb_prop,ape_prop,dni_prop,tel_prop,estado)
values(3,'Felix','Escobar Jimenez',48963512,5057812,'1');



create table tipoinmueble(
cod_tipoinmueble int auto_increment,
nombre varchar(50),
primary key(cod_tipoinmueble)
);


insert into tipoinmueble(nombre)
values('oficina');
insert into tipoinmueble(nombre)
values('cochera');
insert into tipoinmueble(nombre)
values('departamento');




create table inmuebles(
cod_inmueble int auto_increment,
cod_tipoinmueble int,
nom_torre char(5),
num_piso char(5),
fechadecompra date,
primary key(cod_inmueble),
foreign key fk_inmuebles_tipoinmueble(cod_tipoinmueble) references tipoinmueble(cod_tipoinmueble)
);



insert into inmuebles(cod_tipoinmueble,nom_torre,num_piso,fechadecompra)
values(01,'mirasol',3,'2014-05-15');
insert into inmuebles(cod_tipoinmueble,nom_torre,num_piso,fechadecompra)
values(02,'solimar',5,'2015-04-05');
insert into inmuebles(cod_tipoinmueble,nom_torre,num_piso,fechadecompra)
values(03,'vellavista',2,'2016-07-17');


create table detalleinmueble(
cod_det int auto_increment,
cod_prop int,
cod_inmueble int,
primary key(cod_det),
foreign key fk_detalleinmueble_propietarios(cod_prop) references propietarios(cod_prop),
foreign key fk_detalleinmueble_inmuebles(cod_inmueble) references inmuebles(cod_inmueble)
);


insert into detalleinmueble(cod_prop,cod_inmueble)
values(1,1);
insert into detalleinmueble(cod_prop,cod_inmueble)
values(2,2);
insert into detalleinmueble(cod_prop,cod_inmueble)
values(1,3);


create table pago (
cod_pago integer auto_increment,
cod_usuario int ,
cod_cuota int ,
cod_inmueble int,
fec_canc date not null, 
estado numeric(1,0) not null check (estado in (1,0)), 
primary key (cod_pago),
foreign key (cod_inmueble) references inmueble(cod_inmueble)
);




create table mantenimiento(
cod_mant int auto_increment,
cod_tipoinmueble int,
monto int,
fechadepago date,
primary key(cod_mant),
foreign key fk_mantenimiento_tipoinmueble(cod_tipoinmueble) references tipoinmueble(cod_tipoinmueble)
);



insert into mantenimiento(cod_tipoinmueble,monto,fechadepago)
values(1,200,'2014-02-06');
insert into mantenimiento(cod_tipoinmueble,monto,fechadepago)
values(2,400,'2015-07-10');




create table personal(
cod_personal int auto_increment,
nomb_personal varchar(50),
ape_personal varchar(50),
dni_personal varchar(12),
puesto varchar(20),
fechaIngreso date,
estadoTrabajo varchar(20),
primary key(cod_personal)
);



insert into personal(nomb_personal,ape_personal,dni_personal,puesto,fechaIngreso,estadoTrabajo)
values('Faustino','Marquez Rodriguez','84591575','Limpieza','20-11-2014','Activo');
insert into personal(nomb_personal,ape_personal,dni_personal,puesto,fechaIngreso,estadoTrabajo)
values('Justiniano','Quispe Morales','48651293','Vigilante','10-06-2015','Activo');
insert into personal(nomb_personal,ape_personal,dni_personal,puesto,fechaIngreso,estadoTrabajo)
values('Clotilde','Chavez Garrido','45197632','Limpieza','10-05-2016','Activo');
insert into personal(nomb_personal,ape_personal,dni_personal,puesto,fechaIngreso,estadoTrabajo)
values('Casimiro','Vellavista Flores','76451893','Vigilante','15-04-2015','Vacaciones');






