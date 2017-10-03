--INSERTANDO DATOS EN LA TABLA USUARIO
INSERT INTO USUARIO(NombUsuario,ClaveUsuario)
VALUES('JUAN','ANDRADE')
INSERT INTO USUARIO(NombUsuario,ClaveUsuario)
VALUES('JOSE ','QQUENAYA')
INSERT INTO USUARIO(NombUsuario,ClaveUsuario)
VALUES('ROMARIO ','RAMOS')

SELECT * FROM USUARIO

--INSERTANDO DATOS EN LA TABLA CONDOMINIO
INSERT INTO CONDOMINIO(CodCondominio,Descripcion,Localizacion)
VALUES('C001 ','Todo tipo','Lima')
INSERT INTO CONDOMINIO(CodCondominio,Descripcion,Localizacion)
VALUES('C002 ','Hola','Arequipa')
INSERT INTO CONDOMINIO(CodCondominio,Descripcion,Localizacion)
VALUES('C003 ','Como estas','Ancash')

--INSERTANDO DATOS EN LA TABLA ADMINISTRADOR

INSERT INTO ADMINISTRADOR(CodUsuario,CodAdmin,CodCondominio)
VALUES(1,'A001','C001')
INSERT INTO ADMINISTRADOR(CodUsuario,CodAdmin,CodCondominio)
VALUES(2,'A002','C002')
INSERT INTO ADMINISTRADOR(CodUsuario,CodAdmin,CodCondominio)
VALUES(3,'A003','C003')


--INSERTANDO DATOS EN LA TABLA PROPIETARIO
INSERT INTO PROPIETARIO(CodUsuario,CodProp,NombProp,ApeProp,DniProp,TelefProp)
VALUES(1,'P001','Fernando','Gonzales','7416584','951177738')
INSERT INTO PROPIETARIO(CodUsuario,CodProp,NombProp,ApeProp,DniProp,TelefProp)
VALUES(2,'P002','Jose','Gonzales','7416584','951177738')
INSERT INTO PROPIETARIO(CodUsuario,CodProp,NombProp,ApeProp,DniProp,TelefProp)
VALUES(3,'P003','Romario','Gonzales','7416584','951177738')


--INSERTANDO DATOS EN LA TABLA AUDITORIO
INSERT INTO AUDITORIO(CodProp,Ingreso,Descripcion)
VALUES('P001',2000,'Utiliza auditorio')
INSERT INTO AUDITORIO(CodProp,Ingreso,Descripcion)
VALUES('P003',3000,'Utiliza auditorio')
INSERT INTO AUDITORIO(CodProp,Ingreso,Descripcion)
VALUES('P003',4000,'Utiliza auditorio')

--------------
--INSERTANDO DATOS EN LA TABLA INMUEBLE
INSERT INTO INMUEBLE(CodInmueble,CodCondominio,CodProp,TipoInmueble,NombPropAct,NombPropAnt,FechaIng,Torre,NumPiso)
VALUES('I001','C001','P001','Departamento','Juan','Jose','2017-04-04','3',4)
INSERT INTO INMUEBLE(CodInmueble,CodCondominio,CodProp,TipoInmueble,NombPropAct,NombPropAnt,FechaIng,Torre,NumPiso)
VALUES('I002','C002','P002','Cochera','Ramos','Juan','2015-04-04','2',10)
INSERT INTO INMUEBLE(CodInmueble,CodCondominio,CodProp,TipoInmueble,NombPropAct,NombPropAnt,FechaIng,Torre,NumPiso)
VALUES('I003','C003','P003','Oficina','Julio','Liz','2014-04-04','1',5)

--INSERTANDO DATOS EN LA TABLA SERVICIOS_INMUEBLE
INSERT INTO SERVICIOS_INMUEBLE(CodInmueble,TipoServicio,Descripcion)
VALUES('I001','Agua','Utilizacion de agua')
INSERT INTO SERVICIOS_INMUEBLE(CodInmueble,TipoServicio,Descripcion)
VALUES('I002','LUZ','Utilizacion de luz')
INSERT INTO SERVICIOS_INMUEBLE(CodInmueble,TipoServicio,Descripcion)
VALUES('I003','Agua','Utilizacion de agua')


--INSERTANDO DATOS EN LA TABLA CUOTA
INSERT INTO CUOTA(CodCuota,CodProp,CodInmueble,Monto)
VALUES('M001','P001','I001',2000)
INSERT INTO CUOTA(CodCuota,CodProp,CodInmueble,Monto)
VALUES('M002','P002','I003',3000)
INSERT INTO CUOTA(CodCuota,CodProp,CodInmueble,Monto)
VALUES('M003','P003','I001',4000)


--INSERTANDO DATOS EN LA TABLA GASTO_CONDOMINIO
INSERT INTO GASTO_CONDOMINIO(CodCondominio,ServiciosPublicos,MantEquipo,Personal,ServTerceros,Insumo_Material)
VALUES('C001','luz','Puertas Lecadizas','Vigilancia','Jardineria','cajas')
INSERT INTO GASTO_CONDOMINIO(CodCondominio,ServiciosPublicos,MantEquipo,Personal,ServTerceros,Insumo_Material)
VALUES('C002','agua','Ascensores','Limpieza','Pintado','Pintura')
INSERT INTO GASTO_CONDOMINIO(CodCondominio,ServiciosPublicos,MantEquipo,Personal,ServTerceros,Insumo_Material)
VALUES('C003','telefono','Bombas de agua','Vigilancia','Limpieza','Herramientas')
