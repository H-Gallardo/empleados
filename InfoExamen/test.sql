-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-01-2021 a las 15:48:55
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `id_provincia` int(11) NOT NULL,
  `provincia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`id_provincia`, `provincia`) VALUES
(1, 'CABA'),
(2, 'Buenos Aires'),
(3, 'Cordoba'),
(4, 'Mendoza'),
(5, 'San Juan'),
(6, 'San Luis'),
(7, 'Santa Fe'),
(8, 'La Pampa'),
(9, 'Corrientes'),
(10, 'Entre Rios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

INSERT INTO `provincia` (`id_provincia`, `provincia`) VALUES
(1, 'CABA'),
(2, 'Buenos Aires'),
(3, 'Cordoba'),
(4, 'Mendoza'),
(5, 'San Juan'),
(6, 'San Luis'),
(7, 'Santa Fe'),
(8, 'La Pampa'),
(9, 'Corrientes'),
(10, 'Entre Rios');

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id_tipo_documento`, `tipo_documento`) VALUES
(1, 'DNI'),
(2, 'PASAPORTE');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id_provincia`),
  ADD KEY `id_provincia` (`id_provincia`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id_tipo_documento`),
  ADD UNIQUE KEY `id_tipo_documento_3` (`id_tipo_documento`),
  ADD KEY `id_tipo_documento` (`id_tipo_documento`),
  ADD KEY `id_tipo_documento_2` (`id_tipo_documento`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
