-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-12-2022 a las 01:41:03
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ingresos_gastos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

DROP TABLE IF EXISTS `gastos`;
CREATE TABLE IF NOT EXISTS `gastos` (
  `cod_gasto` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `monto` double NOT NULL,
  `fecha` date NOT NULL,
  `usuario` int(11) NOT NULL,
  PRIMARY KEY (`cod_gasto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`cod_gasto`, `area`, `descripcion`, `monto`, `fecha`, `usuario`) VALUES
(1, 'finanzas', '1 finanzas gastos', 100, '2020-12-05', 1),
(2, 'finanzas', '2 finanzas gastos', 400, '2020-12-05', 1),
(4, 'marketing', '1 gasto marketing', 200, '2020-12-06', 0),
(5, 'recursos', '1 gastos recursos humanos', 500, '2020-12-06', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

DROP TABLE IF EXISTS `ingresos`;
CREATE TABLE IF NOT EXISTS `ingresos` (
  `cod_ingreso` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `monto` double NOT NULL,
  `fecha` date NOT NULL,
  `usuario` int(11) NOT NULL,
  PRIMARY KEY (`cod_ingreso`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`cod_ingreso`, `area`, `descripcion`, `monto`, `fecha`, `usuario`) VALUES
(1, 'finanzas', '1 finanzas ingresos', 100, '2020-12-05', 1),
(2, 'finanzas', '2 finanzas ingresos', 600, '2020-12-05', 1),
(4, 'marketing', '1 ingreso marketing modificado', 200, '2020-12-06', 0),
(5, 'recursos', '1 ingreso recursos humanos', 1200, '2020-12-06', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `cod_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `propietario` varchar(100) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`cod_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`cod_usuario`, `propietario`, `empresa`, `email`, `password`) VALUES
(3, 'JOEL CESAR TICONIPA HUALLPA', 'JCTH', 'jc@gmail.com', '12345678'),
(4, 'HERNAN MAMANI MAMANI', 'HMM', 'hmm@gmail.com', '12345678'),
(5, 'JONATHAN FLORES CHIRINOS', 'JFC', 'jf@gmail.com', '12345678');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
