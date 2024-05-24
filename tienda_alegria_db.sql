-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2024 a las 16:52:52
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
-- Base de datos: `tienda_alegria_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID_Cliente` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Fecha_Registro` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID_Cliente`, `Nombre`, `Apellido`, `Email`, `Ciudad`, `Fecha_Registro`) VALUES
(1, 'Ana', 'Martínez', 'ana.martinez@email.com', 'Medellín', '2024-05-10'),
(2, 'Carlos', 'Gómez', 'carlos.gomez@email.com', 'Bogotá', '2024-05-12'),
(3, 'Laura', 'Rodríguez', 'laura.rodriguez@email.com', 'Cali', '2024-05-14'),
(4, 'David', 'Muñoz', 'david.munoz@email.com', 'Cartagena', '2024-05-08'),
(5, 'Isabella', 'López', 'isabella.lopez@email.com', 'Medellín', '2024-05-11'),
(6, 'Santiago', 'García', 'santiago.garcia@email.com', 'Bogotá', '2024-05-09'),
(7, 'Valentina', 'Hernández', 'valentina.hernandez@email.com', 'Cali', '2024-05-13'),
(8, 'Alejandro', 'Ramírez', 'alejandro.ramirez@email.com', 'Cartagena', '2024-05-15'),
(9, 'Mariana', 'Flores', 'mariana.flores@email.com', 'Medellín', '2024-05-10'),
(10, 'Nicolás', 'Pérez', 'nicolas.perez@email.com', 'Bogotá', '2024-05-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_Producto` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `Precio_Unitario` decimal(10,2) NOT NULL,
  `Stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_Producto`, `Nombre`, `Descripcion`, `Precio_Unitario`, `Stock`) VALUES
(1, 'Camisa', 'Camisa de algodón talla M', 25.00, 10),
(2, 'Pantalón', 'Pantalón de jean talla 32', 35.00, 15),
(3, 'Zapatos', 'Zapatos deportivos talla 40', 50.00, 8),
(4, 'Mochila', 'Mochila escolar negra', 40.00, 12),
(5, 'Libro', 'Libro de programación en Python', 22.00, 20),
(6, 'Computadora', 'Computadora portátil 15 pulgadas', 800.00, 5),
(7, 'Tablet', 'Tablet 10 pulgadas', 250.00, 7),
(8, 'Smartphone', 'Smartphone Android 6.0', 300.00, 18),
(9, 'Televisor', 'Televisor LED 50 pulgadas', 550.00, 3),
(10, 'Refrigerador', 'Refrigerador 2 puertas', 400.00, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ID_Proveedor` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Contacto` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`ID_Proveedor`, `Nombre`, `Contacto`, `Telefono`, `Email`) VALUES
(1, 'Textiles Colombia', 'Juan López', '+57 310 222 3333', 'textilescolombia@email.com'),
(2, 'Manufacturas del Valle', 'María Pérez', '+57 312 444 5555', 'manufacturasdelvalle@email.com'),
(3, 'Importadora Digital', 'Carlos Ramírez', '+57 314 666 7777', 'importador@email.com'),
(4, 'Electrodomésticos LTDA', 'Ana Gómez', '+57 316 888 9999', 'electrodomesticosltda@email.com'),
(5, 'Librería Central', 'David Muñoz', '+57 318 000 1111', 'libreriacentral@email.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_productos`
--

CREATE TABLE `proveedores_productos` (
  `ID_Proveedor_Producto` int(11) NOT NULL,
  `ID_Proveedor` int(11) NOT NULL,
  `ID_Producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores_productos`
--

INSERT INTO `proveedores_productos` (`ID_Proveedor_Producto`, `ID_Proveedor`, `ID_Producto`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 2, 1),
(4, 2, 5),
(5, 3, 8),
(6, 3, 9),
(7, 4, 4),
(8, 5, 10),
(9, 1, 6),
(10, 2, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `ID_Vendedor` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Contacto` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`ID_Vendedor`, `Nombre`, `Contacto`, `Telefono`, `Email`) VALUES
(1, 'Juan Pérez', 'María Martínez', '+57 312 345 6789', 'correo1@correo.com'),
(2, 'Ana López', 'Pedro García', '+57 310 123 4567', 'correo2@correo.com'),
(3, 'Carlos Rodríguez', 'Isabel Gómez', '+57 311 789 0123', 'correo3@correo.com'),
(4, 'Sofía Morales', 'David Moreno', '+57 314 567 8901', 'correo4@correo.com'),
(5, 'Valentina Ortiz', 'Julián Ramírez', '+57 315 432 1011', 'correo5@correo.com'),
(6, 'Andrea Vargas', 'Paula Sánchez', '+57 316 243 5768', 'correo6@correo.com'),
(7, 'Diego Muñoz', 'Camila Herrera', '+57 317 154 6879', 'correo7@correo.com'),
(8, 'Isabella Gómez', 'Esteban López', '+57 318 865 4901', 'correo8@correo.com'),
(9, 'Nicolás Martínez', 'Mariana García', '+57 319 756 3212', 'correo9@correo.com'),
(10, 'Mariana Torres', 'Alejandro Rodríguez', '+57 320 645 2343', 'correo10@correo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `ID_Venta` int(11) NOT NULL,
  `Fecha_Venta` date NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `ID_Vendedor` int(11) NOT NULL,
  `Total_Venta` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`ID_Venta`, `Fecha_Venta`, `ID_Cliente`, `ID_Vendedor`, `Total_Venta`) VALUES
(1, '2024-05-12', 1, 2, 175.00),
(2, '2024-05-14', 3, 1, 130.00),
(3, '2024-05-15', 2, 2, 850.00),
(4, '2024-05-10', 5, 1, 22.00),
(5, '2024-05-13', 4, 2, 550.00),
(6, '2024-05-11', 1, 1, 300.00),
(7, '2024-05-09', 7, 2, 250.00),
(8, '2024-05-12', 6, 1, 400.00),
(9, '2024-05-14', 9, 2, 800.00),
(10, '2024-05-15', 10, 1, 550.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_productos`
--

CREATE TABLE `ventas_productos` (
  `ID_Venta_Producto` int(11) NOT NULL,
  `ID_Venta` int(11) NOT NULL,
  `ID_Producto` int(11) NOT NULL,
  `Cantidad_Vendida` int(11) NOT NULL,
  `Precio_Venta` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas_productos`
--

INSERT INTO `ventas_productos` (`ID_Venta_Producto`, `ID_Venta`, `ID_Producto`, `Cantidad_Vendida`, `Precio_Venta`) VALUES
(1, 1, 2, 2, 35.00),
(2, 1, 3, 1, 50.00),
(3, 2, 1, 1, 25.00),
(4, 2, 5, 2, 22.00),
(5, 3, 8, 1, 800.00),
(6, 3, 9, 1, 250.00),
(7, 4, 5, 1, 22.00),
(8, 5, 10, 1, 550.00),
(9, 6, 2, 2, 35.00),
(10, 6, 3, 1, 50.00),
(11, 7, 7, 1, 250.00),
(12, 8, 4, 1, 400.00),
(13, 9, 8, 1, 800.00),
(14, 9, 10, 1, 550.00),
(15, 10, 1, 1, 25.00),
(16, 10, 6, 1, 400.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_Cliente`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_Producto`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`ID_Proveedor`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indices de la tabla `proveedores_productos`
--
ALTER TABLE `proveedores_productos`
  ADD PRIMARY KEY (`ID_Proveedor_Producto`),
  ADD KEY `ID_Proveedor` (`ID_Proveedor`),
  ADD KEY `ID_Producto` (`ID_Producto`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`ID_Vendedor`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`ID_Venta`),
  ADD KEY `ID_Cliente` (`ID_Cliente`),
  ADD KEY `ID_Vendedor` (`ID_Vendedor`);

--
-- Indices de la tabla `ventas_productos`
--
ALTER TABLE `ventas_productos`
  ADD PRIMARY KEY (`ID_Venta_Producto`),
  ADD KEY `ID_Venta` (`ID_Venta`),
  ADD KEY `ID_Producto` (`ID_Producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `ID_Proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `proveedores_productos`
--
ALTER TABLE `proveedores_productos`
  MODIFY `ID_Proveedor_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `ID_Vendedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `ID_Venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ventas_productos`
--
ALTER TABLE `ventas_productos`
  MODIFY `ID_Venta_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `proveedores_productos`
--
ALTER TABLE `proveedores_productos`
  ADD CONSTRAINT `proveedores_productos_ibfk_1` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedores` (`ID_Proveedor`),
  ADD CONSTRAINT `proveedores_productos_ibfk_2` FOREIGN KEY (`ID_Producto`) REFERENCES `productos` (`ID_Producto`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`ID_Vendedor`) REFERENCES `vendedores` (`ID_Vendedor`);

--
-- Filtros para la tabla `ventas_productos`
--
ALTER TABLE `ventas_productos`
  ADD CONSTRAINT `ventas_productos_ibfk_1` FOREIGN KEY (`ID_Venta`) REFERENCES `ventas` (`ID_Venta`),
  ADD CONSTRAINT `ventas_productos_ibfk_2` FOREIGN KEY (`ID_Producto`) REFERENCES `productos` (`ID_Producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
