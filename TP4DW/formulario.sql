-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 02-07-2023 a las 22:15:40
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `formulario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_datos`
--

CREATE TABLE `tabla_datos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `telefono` int(40) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tabla_datos`
--

INSERT INTO `tabla_datos` (`id`, `nombre`, `apellido`, `email`, `telefono`, `direccion`, `ciudad`, `pais`) VALUES
(1, 'mateo', 'martir', 'correo@correo.com', 123342, 'murcio 43', 'medoza', 'argentina'),
(2, 'gabriel', 'mrotoli', 'corre@correo.com', 12334236, 'clavel 43', 'salta', 'argentina'),
(3, 'julio', 'aguirre', 'julio@correo.com', 123456236, 'margaital 43', 'tucuman', 'argentina'),
(4, 'julia', 'aguirre', 'julia@correo.com', 123422109, 'margaital 48', 'tucuman', 'argentina'),
(5, 'marta', 'gomez', 'gomez@correo.com', 223234221, 'rosal 484', 'formosa', 'argentina'),
(6, 'mari', 'sanchez', 'mari@correo.com', 123342, 'guada 484', 'chaco', 'argentina'),
(7, 'biru', 'bizurra', 'bizurra@correo.com', 2345423, 'calle 4345', 'parana', 'argentina'),
(8, 'carlo', 'Ramirez Barrios', 'carlo@correo.com', 379254678, 'rivada 453', 'neuquen', 'argentina'),
(9, 'luca', 'valvo', 'valvo@correo.com', 37892343, 'junin 543', 'jujuy', 'Argentina');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tabla_datos`
--
ALTER TABLE `tabla_datos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tabla_datos`
--
ALTER TABLE `tabla_datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
