-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2024 a las 15:30:02
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examenmarinela`

CREATE DATABASE IF NOT EXISTS `examenmarinela` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `examenmarinela`;

DELIMITER $$
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `sp_CrearFactura`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CrearFactura` (IN `_NOMBRE` VARCHAR(100), IN `_TOTAL` VARCHAR(100))   BEGIN
INSERT INTO FACTURA(NOMBRE, TOTAL)
VALUES (_NOMBRE, _TOTAL);
END$$

DROP PROCEDURE IF EXISTS `sp_EliminarFactura`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_EliminarFactura` (IN `_ID` INT)   BEGIN
DELETE FROM FACTURA 
WHERE ID = _ID;
END$$

DROP PROCEDURE IF EXISTS `sp_ListarFactura`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ListarFactura` ()   BEGIN
SELECT * FROM FACTURA; 
END$$

DROP PROCEDURE IF EXISTS `sp_ModificarFactura`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ModificarFactura` (IN `_ID` INT, IN `_NOMBRE` VARCHAR(100), IN `_TOTAL` INT(50))   BEGIN 
UPDATE FACTURA SET NOMBRE = _NOMBRE, TOTAL = _TOTAL
WHERE ID =_ID;
END$$

DROP PROCEDURE IF EXISTS `sp_MostrarFactura`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MostrarFactura` (IN `_ID` INT)   BEGIN
SELECT ID, NOMBRE, TOTAL FROM FACTURA
WHERE ID = _ID;
END$$

DELIMITER ;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

DROP TABLE IF EXISTS `factura`;
CREATE TABLE `factura` (
  `idfactura` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncar tablas antes de insertar `factura`
--

TRUNCATE TABLE `factura`;
--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`idfactura`, `nombre`, `total`) VALUES
(1, 'jose angel', '540000'),
(2, 'dina luz', '10000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idfactura`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `idfactura` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
