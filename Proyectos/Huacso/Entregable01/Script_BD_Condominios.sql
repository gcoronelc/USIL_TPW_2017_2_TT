CREATE  DATABASE BDCONDOMINIO
GO

USE BDCONDOMINIO
GO

--drop database BDCONDOMINIO

CREATE TABLE Condominio(
idCondominio int Primary Key,
nombre varchar(100),
direccion varchar(100),
distrito varchar(100),
descripcion varchar(100)
);
GO

CREATE TABLE Inmueble(
idImnueble int Primary Key,
idCondominio int,
idEventos int,
torre varchar(50),
piso varchar(50),
)
GO

CREATE TABLE Departamento(
idDepartamento int Primary Key,
idInmueble int,
nombre varchar(100),
descripcion varchar(100)
);
GO

CREATE TABLE Propietarios(
IdPropietario int Primary Key,
idInmueble int,
ape_prop varchar(100),
nom_prop varchar(100),
dni char(8),
departamento varchar(100),
fecha_inicio date,
fecha_fin date,

);
GO

CREATE TABLE Pagos(
idPagos int Primary Key,
cuota money,
fecha date,
formaPago varchar(100),
);
GO

CREATE TABLE Eventos(
idEventos int Primary Key,
idPagos int,
nombre varchar(50),
descripcion varchar(100),
);
GO

CREATE TABLE Administrador(
idAdmin int Primary Key,
idCondominio int,
idUsuario int,
)
GO

CREATE TABLE Usuario(
idUsuario int Primary Key,
nombre varchar(50),
apellido varchar(50),
nom_usuario varchar(100),
clave varchar(50),
);
GO


ALTER TABLE Administrador
ADD FOREIGN KEY (idCondominio) REFERENCES Condominio(idCondominio);

ALTER TABLE Administrador
ADD FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario);

ALTER TABLE Inmueble
ADD FOREIGN KEY (idEventos) REFERENCES Eventos(idEventos);

ALTER TABLE Eventos
ADD FOREIGN KEY (idPagos) REFERENCES Pagos(idPagos);

ALTER TABLE Departamento
ADD FOREIGN KEY (idInmueble) REFERENCES Inmueble(idImnueble);

ALTER TABLE Propietarios
ADD FOREIGN KEY (idInmueble) REFERENCES Inmueble(idImnueble);

ALTER TABLE Inmueble 
ADD FOREIGN KEY (idCondominio) REFERENCES Condominio(idCondominio);

ALTER AUTHORIZATION ON DATABASE::BDCONDOMINIO TO SA 