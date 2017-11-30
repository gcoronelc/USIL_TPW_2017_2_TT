-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2017 a las 17:00:23
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `condosoft`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditorio`
--

CREATE TABLE `auditorio` (
  `IDAUDITORIO` int(11) NOT NULL,
  `PERSONA` varchar(50) NOT NULL,
  `FECHA` date NOT NULL,
  `PAGOA` varchar(50) NOT NULL,
  `PAGOL` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auditorio`
--

INSERT INTO `auditorio` (`IDAUDITORIO`, `PERSONA`, `FECHA`, `PAGOA`, `PAGOL`) VALUES
(09, 'GUSTAVO', '2017-11-02', 'S/250.00', 'S/100.00'),
(10, 'EDISON', '2017-01-12', 'S/300.00', 'S/200.00'),
(11, 'FIORELLA', '2016-01-11', 'S/150.00', 'S/300.00'),
(12, 'CLAUDIA', '2016-02-11', 'S/200.00', 'S/400.00');

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `IDGASTO` int(11) NOT NULL,
  `MOTIVO` varchar(50) NOT NULL,
  `IMPORTE` varchar(50) NOT NULL,
  `FECHA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`IDGASTO`, `MOTIVO`, `IMPORTE`, `FECHA`) VALUES
(01, 'Mantenimiento', 's/40.00', '2017-11-18'),
(02, 'Servicios', 's/.40.00', '2017-10-16'),
(03, 'Equipos', 's/.40.00', '2017-11-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `IDINGRESOS` int(11) NOT NULL,
  `MOTIVO` varchar(50) NOT NULL,
  `IMPORTE` varchar(50) NOT NULL,
  `REMITENTE` varchar(50) NOT NULL,
  `FECHA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`IDINGRESOS`, `MOTIVO`, `IMPORTE`, `REMITENTE`, `FECHA`) VALUES
(1, 'auditorio', 's/50', 'Jose quizpe', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmueble`
--

CREATE TABLE `inmueble` (
  `IDINMUEBLE` int(11) NOT NULL,
  `PISO` varchar(50) NOT NULL,
  `DESCRIPCION` varchar(200) NOT NULL,
  `IDPERSONA` varchar(100) NOT NULL,
  `IDTINMUEBLE` varchar(50) NOT NULL,
  `IDTORRE` varchar(50) NOT NULL,
  `ACTIVO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inmueble`
--

INSERT INTO `inmueble` (`IDINMUEBLE`, `PISO`, `DESCRIPCION`, `IDPERSONA`, `IDTINMUEBLE`, `IDTORRE`, `ACTIVO`) VALUES
(1, 'PISO 1', 'DEPA01', 'EDISON HUACSO', '2', 'TORRE A', 'DISPONIBLE'),
(2, 'PISO 2', 'OFICINA204', 'JAIR ARCOS', '4', 'TORRE B', 'OCUPADO'),
(3, 'PISO 3', 'AUDI01', 'JAIR ARCOS', '4', 'TORRE B', 'DISPONIBLE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE `movimiento` (
  `IDMOVIMIENTO` int(11) NOT NULL,
  `IDINMUEBLE` int(11) NOT NULL,
  `IDOBLIGACION` int(11) DEFAULT NULL,
  `IDTMOVIMIENTO` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `IMPORTE` decimal(12,2) NOT NULL,
  `DESCRIPCION` varchar(200) NOT NULL,
  `AUDIDPERSONA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obligacion`
--

CREATE TABLE `obligacion` (
  `IDOBLIGACION` int(11) NOT NULL,
  `IDTOBLIGACION` int(11) NOT NULL,
  `IDINMUEBLE` int(11) NOT NULL,
  `ANIO` int(11) DEFAULT NULL,
  `MES` int(11) DEFAULT NULL,
  `FVENCE` date DEFAULT NULL,
  `IMPORTE` int(11) DEFAULT NULL,
  `FECHA` date NOT NULL,
  `AUDIDPERSONA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `obligacion`
--

INSERT INTO `obligacion` (`IDOBLIGACION`, `IDTOBLIGACION`, `IDINMUEBLE`, `ANIO`, `MES`, `FVENCE`, `IMPORTE`, `FECHA`, `AUDIDPERSONA`) VALUES
(1, 2, 1, 2018, 2, '2018-02-28', 60, '2017-11-28', 5),
(2, 2, 6, 2018, 2, '2018-02-28', 100, '2017-11-28', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `IDPERSONA` int(11) NOT NULL,
  `IDTPERSONA` varchar(50) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDO` varchar(50) NOT NULL,
  `DNI` int(11) NOT NULL,
  `TELEFONO` int(11) NOT NULL,
  `DIRECCION` varchar(100) NOT NULL,
  `EMAIL` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`IDPERSONA`, `IDTPERSONA`, `NOMBRE`, `APELLIDO`, `DNI`, `TELEFONO`, `DIRECCION`, `EMAIL`) VALUES
(1, 'PROPIETARIO', 'Claudia Jimenes', 'Torres Quispe', 45435678, 678356093, 'Ate-vitarte zona j ', 'claudia@gmail.com'),
(2, 'CONDOMINIO', 'Gustavo', 'Gustavo', 12335678, 456356093, 'Ate-vitarte zona j ', 'gustavo@gmail.com'),
(3, 'DIRECTIVO', 'Jair', 'Arcos', 87635678, 098756093, 'Ate-vitarte zona j ', 'arcos@gmail.com'),
(4, 'ADMINISTRADOR', 'Edison', 'Huacso', 12345678, 936334997, 'ucv 204 b lote 3 zona r', 'edison@gmail.com');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibo`
--

CREATE TABLE `recibo` (
  `IDRECIBO` int(11) NOT NULL,
  `IDTOBLIGACION` int(11) NOT NULL,
  `ANIO` int(11) NOT NULL,
  `MES` int(11) NOT NULL,
  `FVENCE` date DEFAULT NULL,
  `IMPORTE` int(11) DEFAULT NULL,
  `DESCRIPCION` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `IDROL` int(11) NOT NULL,
  `NOMBRE` varchar(40) NOT NULL,
  `DESCRIPCION` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`IDROL`, `NOMBRE`, `DESCRIPCION`) VALUES
(1, 'Propietario', 'Consulta datos de sus propiedades.'),
(2, 'Administrador', 'Realiza tareas administrativas.'),
(3, 'Directivo', 'Desarrolla tareas de administración.'),
(4, 'Secreataria', 'Consulta datos de cualquier propiedad.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tinmueble`
--

CREATE TABLE `tinmueble` (
  `IDTINMUEBLE` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `MANTENIMIENTO` decimal(10,2) NOT NULL,
  `AGUA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tinmueble`
--

INSERT INTO `tinmueble` (`IDTINMUEBLE`, `NOMBRE`, `MANTENIMIENTO`, `AGUA`) VALUES
(1, 'CONDOMINIO', '0.00', 1),
(2, 'DEPARTAMENTO', '60.00', 1),
(3, 'COCHERA', '30.00', 0),
(4, 'OFICINA', '100.00', 1),
(5, 'AUDITORIO', '0.00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmovimiento`
--

CREATE TABLE `tmovimiento` (
  `IDTMOVIMIENTO` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `ACCION` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tobligacion`
--

CREATE TABLE `tobligacion` (
  `IDTOBLIGACION` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tobligacion`
--

INSERT INTO `tobligacion` (`IDTOBLIGACION`, `NOMBRE`) VALUES
(1, 'AGUA'),
(2, 'MANTENIMIENTO'),
(3, 'OTROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torre`
--

CREATE TABLE `torre` (
  `IDTORRE` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `torre`
--

INSERT INTO `torre` (`IDTORRE`, `NOMBRE`) VALUES
(1, 'TORRE A'),
(2, 'TORRE B'),
(3, 'TORRE C'),
(4, 'TORRE VIRTUAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpersona`
--

CREATE TABLE `tpersona` (
  `IDTPERSONA` int(11) NOT NULL,
  `NOMBRE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tpersona`
--

INSERT INTO `tpersona` (`IDTPERSONA`, `NOMBRE`) VALUES
(1, 'INMUEBLE'),
(2, 'PROPIETARIO'),
(3, 'DIRECTIVO'),
(4, 'CONDOMINIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IDPERSONA` int(11) NOT NULL,
  `IDROL` int(11) NOT NULL,
  `USUARIO` varchar(20) NOT NULL,
  `CLAVE` varchar(50) NOT NULL,
  `ESTADO` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IDPERSONA`, `IDROL`, `USUARIO`, `CLAVE`, `ESTADO`) VALUES
(3, 3, 'edison', '568095ee7b98b0afceb32540a1ca5540eaa72666', 1),
(4, 4, 'karla', '0a256b03b037ab5d3e559f13905b682edcc3ddaf', 1),
(5, 2, 'jair', 'beac5f8171fcde5e2ec734cc5d25d03e7362e8de', 1),
(9, 3, 'claudia', 'ab5e2bca84933118bbc9d48ffaccce3bac4eeb64', 1);


-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_obligacion`
--
CREATE TABLE `v_obligacion` (
`id` int(11)
,`inmueble` int(11)
,`torre` varchar(50)
,`piso` varchar(50)
,`descripcion` varchar(200)
,`obligacion` int(11)
,`nomobligacion` varchar(50)
,`anio` int(11)
,`mes` int(11)
,`vencimiento` date
,`importe` int(11)
,`pagada` varchar(4)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `v_obligacion`
--
DROP TABLE IF EXISTS `v_obligacion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_obligacion`  AS  select `o`.`IDOBLIGACION` AS `id`,`i`.`IDINMUEBLE` AS `inmueble`,`i`.`IDTORRE` AS `torre`,`i`.`PISO` AS `piso`,`i`.`DESCRIPCION` AS `descripcion`,`t`.`IDTOBLIGACION` AS `obligacion`,`t`.`NOMBRE` AS `nomobligacion`,`o`.`ANIO` AS `anio`,`o`.`MES` AS `mes`,`o`.`FVENCE` AS `vencimiento`,`o`.`IMPORTE` AS `importe`,'none' AS `pagada` from ((`inmueble` `i` join `obligacion` `o` on((`i`.`IDINMUEBLE` = `o`.`IDINMUEBLE`))) join `tobligacion` `t` on((`o`.`IDTOBLIGACION` = `t`.`IDTOBLIGACION`))) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auditorio`
--
ALTER TABLE `auditorio`
  ADD PRIMARY KEY (`IDAUDITORIO`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`IDGASTO`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`IDINGRESOS`);

--
-- Indices de la tabla `inmueble`
--
ALTER TABLE `inmueble`
  ADD PRIMARY KEY (`IDINMUEBLE`);

--
-- Indices de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD PRIMARY KEY (`IDMOVIMIENTO`);

--
-- Indices de la tabla `obligacion`
--
ALTER TABLE `obligacion`
  ADD PRIMARY KEY (`IDOBLIGACION`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`IDPERSONA`);

--
-- Indices de la tabla `recibo`
--
ALTER TABLE `recibo`
  ADD PRIMARY KEY (`IDRECIBO`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`IDROL`);

--
-- Indices de la tabla `tinmueble`
--
ALTER TABLE `tinmueble`
  ADD PRIMARY KEY (`IDTINMUEBLE`);

--
-- Indices de la tabla `tmovimiento`
--
ALTER TABLE `tmovimiento`
  ADD PRIMARY KEY (`IDTMOVIMIENTO`);

--
-- Indices de la tabla `tobligacion`
--
ALTER TABLE `tobligacion`
  ADD PRIMARY KEY (`IDTOBLIGACION`);

--
-- Indices de la tabla `torre`
--
ALTER TABLE `torre`
  ADD PRIMARY KEY (`IDTORRE`);

--
-- Indices de la tabla `tpersona`
--
ALTER TABLE `tpersona`
  ADD PRIMARY KEY (`IDTPERSONA`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IDPERSONA`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditorio`
--
ALTER TABLE `auditorio`
  MODIFY `IDAUDITORIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `IDGASTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `IDINGRESOS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `inmueble`
--
ALTER TABLE `inmueble`
  MODIFY `IDINMUEBLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  MODIFY `IDMOVIMIENTO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `obligacion`
--
ALTER TABLE `obligacion`
  MODIFY `IDOBLIGACION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `IDPERSONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `recibo`
--
ALTER TABLE `recibo`
  MODIFY `IDRECIBO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tpersona`
--
ALTER TABLE `tpersona`
  MODIFY `IDTPERSONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
