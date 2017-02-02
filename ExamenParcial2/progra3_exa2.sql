-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-02-2017 a las 02:52:50
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `progra3_exa2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `author`
--

CREATE TABLE `author` (
  `id_author` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `author`
--

INSERT INTO `author` (`id_author`, `name`) VALUES
(1, 'Paulo Cohelo'),
(2, 'James Dashner');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authorcontact`
--

CREATE TABLE `authorcontact` (
  `id_author_contact` int(11) NOT NULL,
  `id_author` int(11) NOT NULL,
  `contact` text NOT NULL,
  `type` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `authorcontact`
--

INSERT INTO `authorcontact` (`id_author_contact`, `id_author`, `contact`, `type`) VALUES
(1, 1, 'paulocohelo@hotmail.com', 'drama'),
(2, 2, 'jamesdashner@hotmail.com', 'ciencia ficcion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `book`
--

CREATE TABLE `book` (
  `id_book` int(11) NOT NULL,
  `id_author` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `name` text NOT NULL,
  `date` date NOT NULL,
  `price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `book`
--

INSERT INTO `book` (`id_book`, `id_author`, `id_type`, `name`, `date`, `price`) VALUES
(1, 1, 1, 'El Cuervo', '2017-02-02', 1000),
(2, 2, 2, 'Maze Runner', '2017-02-21', 1200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `booktype`
--

CREATE TABLE `booktype` (
  `id_type` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `booktype`
--

INSERT INTO `booktype` (`id_type`, `type`) VALUES
(1, 'drama'),
(2, 'ciencia ficcion ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id_author`);

--
-- Indices de la tabla `authorcontact`
--
ALTER TABLE `authorcontact`
  ADD PRIMARY KEY (`id_author_contact`);

--
-- Indices de la tabla `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id_book`);

--
-- Indices de la tabla `booktype`
--
ALTER TABLE `booktype`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `author`
--
ALTER TABLE `author`
  MODIFY `id_author` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `authorcontact`
--
ALTER TABLE `authorcontact`
  MODIFY `id_author_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `book`
--
ALTER TABLE `book`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `booktype`
--
ALTER TABLE `booktype`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
