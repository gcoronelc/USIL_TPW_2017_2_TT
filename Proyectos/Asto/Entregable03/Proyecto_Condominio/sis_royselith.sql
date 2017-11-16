-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2017 a las 19:14:02
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

use sis_royselith;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemacondominio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler_auditorio`
--

CREATE TABLE `alquiler_auditorio` (
  `id_au` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `cuota` int(11) NOT NULL,
  `pago_extra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos_ingresos`
--

CREATE TABLE `gastos_ingresos` (
  `id_gi` int(11) NOT NULL,
  `id_agua` int(11) NOT NULL,
  `id_mant` int(11) NOT NULL,
  `id_au` int(11) NOT NULL,
  `ingresos` int(11) NOT NULL,
  `gastos` int(11) NOT NULL,
  `ganancias` int(11) NOT NULL,
  `fecha_reporte` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmueble`
--

CREATE TABLE `inmueble` (
  `idin` int(11) NOT NULL,
  `idtipoin` int(11) NOT NULL,
  `estado` char(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmueble_pro`
--

CREATE TABLE `inmueble_pro` (
  `idin_pro` int(11) NOT NULL,
  `idin` int(11) NOT NULL,
  `idpro` int(11) NOT NULL,
  `fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_agua`
--

CREATE TABLE `pago_agua` (
  `id_agua` int(11) NOT NULL,
  `idinpro` int(11) NOT NULL,
  `cant_in` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `fecha_ven` date NOT NULL,
  `estado` char(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_mant`
--

CREATE TABLE `pago_mant` (
  `id_mant` int(11) NOT NULL,
  `idin_pro` int(11) NOT NULL,
  `cant_inmuebles` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `fecha_ven` date NOT NULL,
  `estado` char(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `IDPERSONA` int(11) NOT NULL,
  `IDTPERSONA` int(11) NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `APELLIDO` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `DNI` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `TELEFONO` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `DIRECCION` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `EMAIL` varchar(60) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`IDPERSONA`, `IDTPERSONA`, `NOMBRE`, `APELLIDO`, `DNI`, `TELEFONO`, `DIRECCION`, `EMAIL`) VALUES
(1, 1, 'GUSTAVO', 'CORONEL', '45768934', '784356093', 'MI CASA', 'MI CORREO'),
(2, 1, 'CLAUDIA', 'TORRES', '78435678', '784356093', 'MI CASA', 'MI CORREO'),
(3, 2, 'KARLA', 'CASTILLO', '09436756', '784356093', 'MI CASA', 'MI CORREO'),
(4, 1, 'JULIO', 'GALVAN', '78436723', '784356093', 'MI CASA', 'MI CORREO'),
(5, 1, 'PEDRO', 'MOJINO', '86254814', '784356093', 'MI CASA', 'MI CORREO'),
(6, 3, 'MANUEL', 'ARBIETO', '69245874', '784356093', 'MI CASA', 'MI CORREO'),
(7, 1, 'ALEJANDRA', 'CHAPIAMA', '36954871', '784356093', 'MI CASA', 'MI CORREO'),
(8, 2, 'CARLOS', 'JAVA', '45879631', '784356093', 'MI CASA', 'MI CORREO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `idpro` int(11) NOT NULL,
  `nombres` char(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` char(50) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `telefono` int(11) NOT NULL,
  `estado_civil` char(100) COLLATE utf8_spanish_ci NOT NULL,
  `correo` char(100) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `estado` char(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `IDROL` int(11) NOT NULL,
  `NOMBRE` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `DESCRIPCION` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

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
-- Estructura de tabla para la tabla `tipo_inmueble`
--

CREATE TABLE `tipo_inmueble` (
  `idtipoin` int(11) NOT NULL,
  `descripcion` char(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpersona`
--

CREATE TABLE `tpersona` (
  `IDTPERSONA` int(11) NOT NULL,
  `NOMBRE` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tpersona`
--

INSERT INTO `tpersona` (`IDTPERSONA`, `NOMBRE`) VALUES
(1, 'PROPIETARIO'),
(2, 'USUARIO'),
(3, 'EX-PROPIETARIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IDPERSONA` int(11) NOT NULL,
  `IDROL` int(11) NOT NULL,
  `USUARIO` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `CLAVE` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ESTADO` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IDPERSONA`, `IDROL`, `USUARIO`, `CLAVE`, `ESTADO`) VALUES
(1, 1, 'royselith', '665f23e52949c4b259c348625d77acb630cf0cc7', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`IDPERSONA`),
  ADD KEY `PK_PERSONA` (`IDTPERSONA`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`IDROL`);

--
-- Indices de la tabla `tpersona`
--
ALTER TABLE `tpersona`
  ADD PRIMARY KEY (`IDTPERSONA`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IDPERSONA`),
  ADD KEY `FK_USUARIO_ROL` (`IDROL`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `IDPERSONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tpersona`
--
ALTER TABLE `tpersona`
  MODIFY `IDTPERSONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `PK_PERSONA` FOREIGN KEY (`IDTPERSONA`) REFERENCES `tpersona` (`IDTPERSONA`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_USUARIO_PERSONA` FOREIGN KEY (`IDPERSONA`) REFERENCES `persona` (`IDPERSONA`),
  ADD CONSTRAINT `FK_USUARIO_ROL` FOREIGN KEY (`IDROL`) REFERENCES `rol` (`IDROL`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
