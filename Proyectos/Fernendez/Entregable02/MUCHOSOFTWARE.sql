-- Creación de la Base de Datos
DROP DATABASE   MUCHO_SOFTWARE;

CREATE DATABASE MUCHO_SOFTWARE;

-- Seleccionar la Base de Datos
USE MUCHO_SOFTWARE;

-- Creación de los Objetos de la Base de Datos

GO
CREATE TABLE USUARIO(
CodAdmin CHAR(4),
CodProp CHAR(4),
NombUsuario VARCHAR(50),
ClaveUsuario VARCHAR(20),
FOREIGN KEY (CodAdmin) REFERENCES ADMINISTRADOR (CodAdmin),
FOREIGN KEY (CodProp) REFERENCES PROPIETARIO (CodProp))	
GO

CREATE TABLE MODULO
(
	moducodigo       INTEGER NOT NULL,
	modunombre       VARCHAR(50) NULL,
	moduestado       VARCHAR(15) NOT NULL 
						           DEFAULT 'ACTIVO' 
		                   CHECK ( moduestado IN ('ACTIVO', 'ANULADO', 'CANCELADO') ),
	CONSTRAINT PK_Modulo PRIMARY KEY (moducodigo))
	GO

CREATE TABLE PERMISO
(
	CodProp       CHAR(4) NOT NULL,
	CodAdmin       CHAR(4) NOT NULL,
	moducodigo       INTEGER NOT NULL,
	permestado       VARCHAR(15) NOT NULL 
	                     DEFAULT 'ACTIVO' 
						           CHECK ( permestado IN ('ACTIVO', 'ANULADO', 'CANCELADO') ),
      PRIMARY KEY (CodProp,CodAdmin,moducodigo),
	FOREIGN KEY (moducodigo) REFERENCES MODULO (moducodigo),
	FOREIGN KEY  (CodAdmin) REFERENCES ADMINISTRADOR (CodAdmin),
	FOREIGN KEY  (CodProp) REFERENCES PROPIETARIO (CodProp))
	GO

CREATE TABLE ADMINISTRADOR(
CodAdmin CHAR(4),
CodCondominio CHAR(4),
PRIMARY KEY (CodAdmin),
FOREIGN KEY (CodCondominio) REFERENCES CONDOMINIO (CodCondominio))
GO

CREATE TABLE CONDOMINIO(
CodCondominio CHAR(4),
Descripcion VARCHAR(100),
Localizacion VARCHAR(100)
PRIMARY KEY (CodCondominio))
GO
CREATE TABLE PROPIETARIO(
CodProp CHAR(4),
NombProp VARCHAR(100),
ApeProp VARCHAR(100),
DniProp CHAR(7),
TelefProp INTEGER,
PRIMARY KEY (CodProp))

GO

CREATE TABLE INMUEBLE(
CodInmueble CHAR(4),
CodCondominio CHAR(4),
CodProp CHAR(4),
TipoInmueble VARCHAR(100),
NombPropAct Varchar(100),
NombPropAnt VARCHAR(100),
FechaIng DATE,
Torre VARCHAR(50),
NumPiso INTEGER,
PRIMARY KEY (CodInmueble),
FOREIGN KEY (CodProp) REFERENCES PROPIETARIO (CodProp),
FOREIGN KEY (CodCondominio) REFERENCES CONDOMINIO (CodCondominio))
GO

CREATE TABLE AUDITORIO(
CodProp CHAR(4),
Ingreso INT,
Descripcion VARCHAR(100),
FOREIGN KEY (CodProp) REFERENCES PROPIETARIO (CodProp))
GO

CREATE TABLE CUOTA(
CodCuota  CHAR(4),
CodProp CHAR(4),
CodInmueble CHAR(4),
Monto INT,
PRIMARY KEY (CodCuota),
FOREIGN KEY (CodProp) REFERENCES PROPIETARIO (CodProp),
FOREIGN KEY (CodInmueble) REFERENCES INMUEBLE (CodInmueble))
GO

CREATE TABLE SERVICIOS_INMUEBLE(
CodInmueble CHAR(4),
TipoServicio VARCHAR(100),
Descripcion VARCHAR(100),
FOREIGN KEY (CodInmueble) REFERENCES INMUEBLE (CodInmueble))
GO

CREATE TABLE GASTO_CONDOMINIO(
CodCondominio CHAR(4),
ServiciosPublicos VARCHAR(100),
MantEquipo VARCHAR(100),
Personal VARCHAR(100),
ServTerceros VARCHAR(100),
Insumo_Material VARCHAR(100),
FOREIGN KEY (CodCondominio) REFERENCES CONDOMINIO (CodCondominio))



