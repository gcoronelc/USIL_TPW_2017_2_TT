
INSERT INTO usuario (id_usuario, nombres, ape_pat, ape_mat, dni)
 VALUES ('U001', 'Julio Cesar', 'Arbieto', 'Chavez', '72086428'),
        ('U002', 'Cynthya', 'Estrada', 'Huarhua', '74125896'),
        ('U003', 'Jose', 'Perez', 'Perez', '12345678'),
        ('U004', 'Juan', 'Deza', 'Deza', '78965412');

INSERT INTO propietario (id_propietario, id_usuario, fec_ini, fec_fin, detalle)
VALUES ('P001', 'U001', '2017-09-19', '2017-09-30', 'Propietario de Inmueble 01'),
       ('P002', 'U002', '2017-09-03', '2017-09-30', 'Propietario inmueble 02');

INSERT INTO administrador (id_administrador, id_usuario, descripcion)
VALUES ('A001', 'U003', 'Administrador 01'),
       ('A002', 'U004', 'Administrador 02');

INSERT INTO detalle_usuario (id_usuario, usuario, clave, estado)
VALUES ('U001', 'julio.arbieto', 'propietario', 1),
       ('U002', 'cynthya.estrada', 'estrada', 1),
       ('U003', 'jose.perez', 'perez', 1),
       ('U004', 'juan.deza', 'deza', 1);

INSERT INTO modulo (id_modulo, nomModulo, estado)
VALUES (1, 'Consultar usuarios', 1),
       (2, 'Consulta de Pagos', 1),
       (3, 'Registro de Propietarios', 1),
       (4, 'Registro de Eventos', 1),
       (5, 'Registro de Pagos', 1),
       (6, 'Consulta de Inmuebles', 1);

INSERT INTO permiso (id_modulo, id_usuario, estado)
VALUES (2, 'U001', 1),
       (2, 'U002', 1),
       (1, 'U003', 1),
       (2, 'U003', 1),
       (3, 'U003', 1),
       (4, 'U003', 1),
       (5, 'U003', 1),
       (6, 'U003', 1),
       (3, 'U004', 1),
       (4, 'U004', 1),
       (5, 'U004', 1);


INSERT INTO evento (id_evento, id_propietario, nombre, descripcion, estado)
VALUES ('E001', 'P001', 'CUMPLEAÑOS', 'CUMPLEAÑOS DEL PROPIETARIOS DEL INMUEBLE 04', 1),
       ('E002', 'P002', 'FIESTA', 'FIESTA ORGANIZADA POR EL PROPIETARIOS DEL INMUEBLE 05', 1);

INSERT INTO edificio (id_edificio, nombre, nro_pisos, descripcion, estado)
VALUES ('ED01', 'AURORA', 12, 'EDIFICIO AURORA DE 12 PISOS, CON UNA VISTA ESPECTACULAR', 1),
       ('ED02', 'TORRE BLANCA', 13, 'TORRE BLANCA, UN EDIFICIO TRANQUILO Y BIEN ORDENADI', 1);

INSERT INTO detalle_inmueble (id_detalle, tipo_inmueble)
VALUES ('DI001', 'Departamento'),
       ('DI002', 'Cochera'),
       ('DI003', 'Oficina');

INSERT INTO inmueble (id_inmueble, id_detalle, id_propietario, id_edificio, nombre, nro_piso, descripcion, estado)
VALUES ('I001', 'DI001', 'P001', 'ED01', 'Departamento 201', '2', 'Despartamento, en perfecto estado', 1),
       ('I002', 'DI002', 'P001', 'ED01', 'Cochera de alta seguridad', '1', 'cochera de alta seguridad, para 10 camionetas', 1),
       ('I003', 'DI001', 'P002', 'ED02', 'Deperatmento 201', '2', 'Mini departamento, de maxima seguridad', 1),
       ('I004', 'DI002', 'P002', 'ED02', 'Cochera 5', '1', 'Cochera 5, 7 metros cuadrados', 1);

INSERT INTO pago (id_pago, id_propietario, id_inmueble, estado)
VALUES ('PA001', 'P001', 'I001', 1),
       ('PA002', 'P001', 'I002', 1),
       ('PA003', 'P002', 'I003', 1),
       ('PA004', 'P002', 'I004', 1),
       ('PA005', 'P001', 'I001', 1),
       ('PA006', 'P002', 'I003', 1);

INSERT INTO ingreso (id_ingreso, id_pago, tipo, monto, descripcion, fecha, estado)
VALUES ('IN001', 'PA001', 'Efectivo', 2000, 'PAGO MENSULA DE CONDOMINIO', '2017-09-21 07:43:28', 1),
       ('IN002', 'PA002', 'EFECTIVO', 500, 'PAGO MENSUAL DE COCHERA', '2017-09-22 03:18:12', 1),
       ('IN003', 'PA003', 'EFECTIVO', 1500, 'PAGO MENSUAL DE DEPARTAMENTO', '2017-09-21 03:10:20', 1),
       ('IN004', 'PA004', 'EFECTIVO', 600, 'PAGO MENSUAL DE COCHERA', '2017-09-14 06:00:00', 1);

INSERT INTO detalle_gastos (id_detGatos, nombre)
VALUES ('DG001', 'Servicios Públicos'),
       ('DG002', 'Mantenimiento de Equipos'),
       ('DG003', 'Personal'),
       ('DG004', 'Servicios de Terceros'),
       ('DG005', 'Insumos y Materiales');

INSERT INTO gasto (id_gasto, id_detGatos, id_pago, tipo, monto, descripcion, fecha, estado)
VALUES ('G001', 'DG001', 'PA005', 'CREADITO', 50, 'AGUA', '2017-09-26 08:00:23', 1),
       ('G002', 'DG001', 'PA006', 'EFECTIVO', 80, 'LUZ', '2017-09-06 09:19:25', 1);
