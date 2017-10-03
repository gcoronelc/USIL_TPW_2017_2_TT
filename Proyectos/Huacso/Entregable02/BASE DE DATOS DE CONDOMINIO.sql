CREATE DATABASE BDCONDOMINIO
go

USE BDCONDOMINIO
go

 CREATE TABLE Usuario(
 idusuario int primary key (idusuario),
 usuario varchar(50),
 clave varchar(50))
 go

 CREATE TABLE Administrador(
 idadm int  primary key (idadm),
 idusuario int,
 nombre varchar(50),
 apellido varchar(50),
 dni int,
 direccion varchar(50),
 celular int
 )
 go

  CREATE TABLE Propietario(
 idpro int Primary key (idpro),
 idusuario int,
 nombre varchar(50),
 apellido varchar(50),
 dni int,
 direccion varchar(50),
 celular int,
 correo varchar(50),
 estado int
 )
 go

 CREATE TABLE TipoInmueble(
 idtipoInmueble int primary key(idtipoInmueble),
 nombre varchar(20)
 )
 go

 CREATE TABLE Inmueble(
 idinmueble int primary key (idinmueble),
 idtipoInmueble int,
 torre varchar(50),
 piso int,
 fechaAdquisicion date,
)
go

CREATE TABLE Mantenimiento
(
 idmantenimiento int primary key(idmantenimiento),
 idtipoInmueble int,
 cuota int,
 fechapago date
 )
 go

 CREATE TABLE DetalleInmueble(
  iddetalleinmu int primary key (iddetalleinmu),
  idpro int,
  idinmueble int
  )
  go

 CREATE TABLE AlquilerAuditorio(
 idalquiler int primary key (idalquiler),
 idpro int,
 fecReservaInicio date,
 fecReservaFin date,
 fechaPago date,
 costo int
 )
 go

 CREATE TABLE CuentaPropietario
(
idcuentaPro int primary key(idcuentaPro),
idpro int,
total int
)

CREATE TABLE GastosIngresos
(
idgasIn int PRIMARY KEY(idgasIn),
idmantenimiento int,
idalquiler int,
ingresos numeric(8,2),
gastos numeric(8,2),
ganancia numeric(8,2)
)
go


CREATE TABLE Inquilino
(
idinquilino int PRIMARY KEY(idinquilino),
iddetalleinmu int,
nombre varchar(50),
apellido varchar(50),
dni int,
correo varchar(50),
celular int
)
go

CREATE TABLE Agua(
 idagua int auto_increment,
 iddetalleinmu int PRIMARY KEY(idagua),
 fecha date,
 total int,
 cuota int
 )
 go
 
 CREATE TABLE Luz(
 idluz int primary key(idluz),
 idinmueble int,
 fecha date,
 total int
 )
 go


ALTER TABLE Administrador
ADD FOREIGN KEY (idusuario) REFERENCES Usuario(idusuario);


ALTER TABLE Propietario
ADD FOREIGN KEY (idusuario) REFERENCES Usuario(idusuario);
 
ALTER TABLE Inmueble
ADD FOREIGN KEY (idtipoInmueble) REFERENCES TipoInmueble(idtipoInmueble);

ALTER TABLE DetalleInmueble
ADD FOREIGN KEY (idpro) REFERENCES Propietario(idpro);

ALTER TABLE DetalleInmueble
ADD FOREIGN KEY (idinmueble) REFERENCES Inmueble(idinmueble);

ALTER TABLE Agua
ADD FOREIGN KEY (iddetalleinmu) REFERENCES DetalleInmueble(iddetalleinmu);

ALTER TABLE Mantenimiento
ADD FOREIGN KEY (idtipoInmueble) REFERENCES TipoInmueble(idtipoInmueble);

ALTER TABLE AlquilerAuditorio
ADD FOREIGN KEY (idpro) REFERENCES Propietario(idpro);

ALTER TABLE Luz
ADD FOREIGN KEY (idinmueble) REFERENCES Inmueble(idinmueble);

ALTER TABLE CuentaPropietario
ADD FOREIGN KEY (idpro) REFERENCES Propietario(idpro);

ALTER TABLE GastosIngresos
ADD FOREIGN KEY (idalquiler) REFERENCES AlquilerAuditorio(idalquiler);

ALTER TABLE GastosIngresos
ADD FOREIGN KEY (idmantenimiento) REFERENCES Mantenimiento(idmantenimiento);

ALTER TABLE Inquilino
ADD FOREIGN KEY (iddetalleinmu) REFERENCES DetalleInmueble(iddetalleinmu);
