create database condominio;

use condominio


create table administrador(
id_admin char(5),
nombre_admin varchar(50),
apell_admin varchar(50),
direccion_admin varchar(50),
telefono varchar(20),
email varchar(30),
id_propie char(5),
primary key (id_admin),
FOREIGN KEY fk_administrador_propietario(id_propie) REFERENCES propietario(id_propie));

insert into administrador values('A0001','Carmen','Sánchez García','av. Arica','952140112','Carmen_admin@gmail.com');
insert into administrador values('A0002','Elíaz','Gonzáles Díaz','Av. los Caminos','999950342','Eliaz_admin@gmail.com');
insert into administrador values('A0003','Ema','Huamán Reyes','Av. Canada','946722252','ema_admin@gmail.com');

create table propietario(
id_propie char(5),
dni_propie int,
nombre_propie varchar(50),
ape_propie varchar(50),
direccion_propie varchar(50),
telefono varchar(20),
cant_inmuebles int,
email varchar(30),
id_admin char(5),
id_pago char(5),
primary key (id_propie),
FOREIGN KEY fk_propietario_pago(id_pago) REFERENCES pago(id_pago),
FOREIGN KEY fk_propietario_administrador(id_admin) REFERENCES administrador(id_admin));


insert into propietario values('P0001','Enrique','Torres Castillo','Av. Garzón','933263712','enrique_prop@gmail.com');
insert into propietario values('P0002','Erasmo','Mamani Chávez','Av. Los Alisos','946510400','erasmo_prop@gmail.com');
insert into propietario values('P0003','Leticia','Ramos Mendoza','Av. Canada','966820072','leticia_prop@gmail.com');
insert into propietario values('P0004','Nidia','Espinoza Vásquez','Av. Canada','984284152','nidia_prop@gmail.com');

create table ingreso(
id_ingreso char(5),
tipo_ingreso varchar(50),
cantidad numeric(8,2),
gastos numeric(8,2),
ingresos numeric(8,2),
descrip_ingreso varchar(100),
fecha_ingre date,
id_pago char(5),
primary key(id_ingreso),
FOREIGN KEY fk_ingreso_pago(id_pago) REFERENCES pago(id_pago));


create table pago(
id_pago char(5),
fe_cha_pago date,
id_inmueble char(5),
cantidad numeric(8,2),
detalle varchar(100),
id_propie char(5),
primary key (id_pago ),
FOREIGN KEY fk_pago_propietario(id_propie) REFERENCES propietario(id_propie),
FOREIGN KEY fk_pago_Inmueble(id_inmueble) REFERENCES Inmueble(id_inmueble));


insert into pago values('I0001','23/08/16','C0003',1800);
insert into pago values('I0002','22/08/16','C0002',1800);
insert into pago values('I0002','13/08/16','C0005',1800);

create table Servicio(
id_servicio char(5),
nombre_servicio varchar(30),
descripcion varchar(100),
id_inmueble char(5),
primary key (id_servicio),
FOREIGN KEY fk_Servicio_Inmueble(id_Inmueble) REFERENCES Inmueble(id_inmueble));


insert into Servicio values('S0001','Alquiler de departamento','agua y luz y otros...');



create table Inmueble(
id_Inmueble char(5),
num_inmueble int,
tipo_inmueble varchar(100),
id_propie char(5),
id_admin char(5),
costo numeric(8,2),
primary key(id_Inmueble),
FOREIGN KEY fk_Inmueble_administrador(id_admin) REFERENCES administrador(id_admin),
FOREIGN KEY fk_Inmueble_propietario(id_propie) REFERENCES propietario(id_propie),
FOREIGN KEY fk_Inmueble_servicio(id_servicio) REFERENCES servicio(id_servicio));




insert into Inmueble values('D0001',101,'Oficina',1500);
insert into Inmueble values('D0002',101,'departamento con 80 metros cuadrados',1300);
insert into Inmueble values('D0003',101,'Cochera de 150 metros cuadrados',1700);



