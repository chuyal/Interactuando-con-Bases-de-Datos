-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2018 a las 04:15:59
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nextu_agenda_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `Id` int(11) NOT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `Titulo` varchar(20) NOT NULL,
  `FechaInicio` date NOT NULL,
  `HoraInicio` time DEFAULT NULL,
  `FechaFinalizacion` date DEFAULT NULL,
  `HoraFinalizacion` time DEFAULT NULL,
  `DiaCompleto` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`Id`, `IdUsuario`, `Titulo`, `FechaInicio`, `HoraInicio`, `FechaFinalizacion`, `HoraFinalizacion`, `DiaCompleto`) VALUES
(1, 1, 'ir al gym', '2018-08-01', '07:00:00', '2018-08-08', '12:00:00', 0),
(2, 1, 'ir al cine', '2018-08-30', '00:00:00', '0000-00-00', '00:00:00', 0),
(3, 1, 'dormir', '2018-08-11', '07:00:00', '2018-08-12', '12:00:00', 0),
(4, 1, 'nadar', '2018-08-20', '00:00:00', '0000-00-00', '00:00:00', 0),
(5, 1, 'nadar', '2018-08-20', '00:00:00', '0000-00-00', '00:00:00', 0),
(6, 1, 'nadar', '2018-08-05', '07:00:00', '2018-08-05', '12:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id`, `Nombre`, `FechaNacimiento`, `Username`, `Password`) VALUES
(1, 'jesus arizmendi', '2000-01-12', 'chuy@gmail.com', '$2y$10$uhvHgKHYKTdaOiM3uKdM2uNBF48NIl9takezEQn8jh0Km95Y8me7m'),
(2, 'jose armendariz', '1990-01-15', 'pepe@gmail.com', '$2y$10$clB2cADtn0r46xicChnSw.sOmKMDAUxf8Nsm8qM.Kl8I1TRB1Kmfq'),
(3, 'juan armendarini', '1980-01-06', 'juan@gmail.com', '$2y$10$SbZXQgeu0pYxNAfDxDQvMOu.tDoOK/cQHF7khUcF9yHehUI.kWbIy');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
