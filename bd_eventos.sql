-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-07-2018 a las 05:30:20
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_eventos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_evento` int(11) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `fec_inicio` date NOT NULL,
  `hora_inicio` varchar(11) DEFAULT NULL,
  `fec_fin` date DEFAULT NULL,
  `hora_fin` varchar(20) DEFAULT NULL,
  `fk_usuario` int(11) NOT NULL,
  `duracion` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id_evento`, `titulo`, `fec_inicio`, `hora_inicio`, `fec_fin`, `hora_fin`, `fk_usuario`, `duracion`) VALUES
(42, 'Marketing', '2018-07-10', '07:00:00', '2018-07-10', '18:00:00', 19, 'false'),
(43, 'Webinar', '2018-07-20', '07:00:00', '2018-07-21', '22:00:00', 19, 'false'),
(44, 'Cita Novia', '2018-07-17', '10:30:00', '2018-07-17', '22:00:00', 19, 'false'),
(46, 'Marketing', '2018-07-27', '07:00', '2018-07-28', '10:00', 20, 'false'),
(47, 'Webinar', '2018-07-10', '', '0000-00-00', '', 20, 'true'),
(48, 'Prueba', '2018-08-07', '09:00', '2018-08-07', '10:00', 20, 'false'),
(54, 'Marketing', '2018-07-17', '07:00:00', '2018-07-18', '20:00:00', 21, 'false'),
(55, 'Webinar', '2018-07-12', '07:00:00', '2018-07-13', '20:00:00', 21, 'false'),
(56, 'Prueba', '2018-07-02', '07:00:00', '2018-07-03', '12:00:00', 21, 'false'),
(58, 'Cita Novia', '2018-07-25', '00:00:00', '0000-00-00', 'e', 21, 'true'),
(60, 'Prueba', '2018-07-27', '07:00:00', '0000-00-00', 'e', 19, 'false');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `fec_nacimiento` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `usuario`, `clave`, `fec_nacimiento`) VALUES
(19, 'Juan carlos', 'juank@hotmail.com', '$2y$10$G1PmXeyZbBuNMwT0F2GvM.KY.J42DCik3StlzXYKjcDUgnAw1wSQa', '2000-2-31'),
(20, 'Pablo jose', 'pablo@hotmail.com', '$2y$10$qvufYcDRu.T4n/P0ZeCkZeJHLfK45CiTb4Z9IDigAcL9e5tmJy/na', '2010-6-28'),
(21, 'Diana josefa', 'dieg@hotmail.com', '$2y$10$wwtMUDlZPRhoAUKRFq5gLen4ruatpdeqcgtt9mQuYI5pXIydlnys.', '1990-7-9');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `fk_usuario` (`fk_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
