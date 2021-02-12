-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2021 a las 15:42:49
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `stocks`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alicorp`
--

CREATE TABLE `alicorp` (
  `id_valor` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `hora` varchar(60) NOT NULL,
  `fecha` varchar(60) NOT NULL,
  `acronimo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alicorp`
--

INSERT INTO `alicorp` (`id_valor`, `nombre`, `precio`, `hora`, `fecha`, `acronimo`) VALUES
(1, 'alicorp', 12, 'prueva', 'prueva', 'prueva'),
(2, 'Alicorp C.O', 8.35, 'Thu Feb 11 2021 22:43:35 GMT-0500 (hora estándar de Perú)', 'Thu Feb 11 2021 22:43:35 GMT-0500 (hora estándar de Perú)', 'ALLI'),
(3, 'Alicorp C.O', 8.4, 'Thu Feb 11 2021 22:45:48 GMT-0500 (hora estándar de Perú)', 'Thu Feb 11 2021 22:45:48 GMT-0500 (hora estándar de Perú)', 'ALLI'),
(4, 'Alicorp C.O', 8.5, 'Thu Feb 11 2021 22:46:30 GMT-0500 (hora estándar de Perú)', 'Thu Feb 11 2021 22:46:30 GMT-0500 (hora estándar de Perú)', 'ALLI'),
(5, 'Alicorp C.O', 8.8, 'Thu Feb 11 2021 22:47:30 GMT-0500 (hora estándar de Perú)', 'Thu Feb 11 2021 22:47:30 GMT-0500 (hora estándar de Perú)', 'ALLI'),
(6, 'Alicorp C.O', 8.8, 'Thu Feb 11 2021 22:56:41 GMT-0500 (hora estándar de Perú)', 'Thu Feb 11 2021 22:56:41 GMT-0500 (hora estándar de Perú)', 'ALLI'),
(7, 'Alicorp C.O', 8.8, 'Thu Feb 11 2021 23:06:31 GMT-0500 (hora estándar de Perú)', 'Thu Feb 11 2021 23:06:31 GMT-0500 (hora estándar de Perú)', 'ALLI');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alicorp`
--
ALTER TABLE `alicorp`
  ADD PRIMARY KEY (`id_valor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alicorp`
--
ALTER TABLE `alicorp`
  MODIFY `id_valor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
