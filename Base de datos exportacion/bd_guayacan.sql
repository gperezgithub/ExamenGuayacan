-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2023 a las 23:36:06
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
-- Base de datos: `bd_guayacan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `Id_cliente` int(20) NOT NULL,
  `Numero_Asociado` varchar(20) NOT NULL,
  `Nombre1` varchar(20) NOT NULL,
  `Nombre2` varchar(20) DEFAULT NULL,
  `Nombre3` varchar(20) DEFAULT NULL,
  `Apellido1` varchar(20) NOT NULL,
  `Apellido2` varchar(20) DEFAULT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `DPI` varchar(13) NOT NULL,
  `Rtu` varchar(8) NOT NULL,
  `Numero_Cuenta` varchar(20) DEFAULT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Referencia_Direccion` varchar(50) NOT NULL,
  `Telefono1` varchar(8) NOT NULL,
  `Telefono2` varchar(8) DEFAULT NULL,
  `Correo_Electronico` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_clientes`
--

INSERT INTO `tb_clientes` (`Id_cliente`, `Numero_Asociado`, `Nombre1`, `Nombre2`, `Nombre3`, `Apellido1`, `Apellido2`, `Fecha_Nacimiento`, `DPI`, `Rtu`, `Numero_Cuenta`, `Direccion`, `Referencia_Direccion`, `Telefono1`, `Telefono2`, `Correo_Electronico`) VALUES
(2, '456548', 'Carmen', 'Cecilia', '', 'cardona', 'perez', '1994-06-22', '1234567891234', '54135157', '', 'colonia brisas', 'a la par boutique', '45654579', '', 'mg@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_empleados`
--

CREATE TABLE `tb_empleados` (
  `Id_empleado` int(20) NOT NULL,
  `Nombre1` varchar(20) NOT NULL,
  `Nombre2` varchar(20) DEFAULT NULL,
  `Nombre3` varchar(20) DEFAULT NULL,
  `Apellido1` varchar(20) NOT NULL,
  `Apellido2` varchar(20) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Departamento` varchar(30) NOT NULL,
  `Inicio_Labores` date NOT NULL,
  `Sueldo` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_productos`
--

CREATE TABLE `tb_productos` (
  `Id_producto` int(20) NOT NULL,
  `Tipo_Producto` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_productosclientes`
--

CREATE TABLE `tb_productosclientes` (
  `Id_productoCliente` int(20) NOT NULL,
  `Id_cliente` int(20) NOT NULL,
  `Id_empleado` int(20) NOT NULL,
  `Id_producto` int(20) NOT NULL,
  `Fecha_Inicio` date NOT NULL,
  `Fecha_Final` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `Id_usuario` int(20) NOT NULL,
  `Id_empleado` int(20) NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Contraseña` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`Id_cliente`);

--
-- Indices de la tabla `tb_empleados`
--
ALTER TABLE `tb_empleados`
  ADD PRIMARY KEY (`Id_empleado`);

--
-- Indices de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  ADD PRIMARY KEY (`Id_producto`);

--
-- Indices de la tabla `tb_productosclientes`
--
ALTER TABLE `tb_productosclientes`
  ADD PRIMARY KEY (`Id_productoCliente`),
  ADD KEY `Id_cliente` (`Id_cliente`),
  ADD KEY `Id_producto` (`Id_producto`),
  ADD KEY `Id_empleado` (`Id_empleado`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`Id_usuario`),
  ADD KEY `Id_empleado` (`Id_empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `Id_cliente` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tb_empleados`
--
ALTER TABLE `tb_empleados`
  MODIFY `Id_empleado` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  MODIFY `Id_producto` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_productosclientes`
--
ALTER TABLE `tb_productosclientes`
  MODIFY `Id_productoCliente` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `Id_usuario` int(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_empleados`
--
ALTER TABLE `tb_empleados`
  ADD CONSTRAINT `tb_empleados_ibfk_1` FOREIGN KEY (`Id_empleado`) REFERENCES `tb_usuarios` (`Id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  ADD CONSTRAINT `tb_productos_ibfk_1` FOREIGN KEY (`Id_producto`) REFERENCES `tb_productosclientes` (`Id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
