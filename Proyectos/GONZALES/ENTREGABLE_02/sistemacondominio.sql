-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-10-2017 a las 05:07:31
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";




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
-- Estructura de tabla para la tabla `tipo_inmueble`
--

CREATE TABLE `tipo_inmueble` (
  `idtipoin` int(11) NOT NULL,
  `descripcion` char(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
