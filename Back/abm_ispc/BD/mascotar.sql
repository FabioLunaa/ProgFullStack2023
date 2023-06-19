-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2023 a las 14:31:06
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
-- Base de datos: `mascotar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(3) NOT NULL,
  `idUsuario` int(3) NOT NULL,
  `idProducto` int(3) NOT NULL,
  `cantidadd` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cola`
--

CREATE TABLE `cola` (
  `id` int(3) NOT NULL,
  `cola` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colorprincipal`
--

CREATE TABLE `colorprincipal` (
  `id` int(3) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colorsecundario`
--

CREATE TABLE `colorsecundario` (
  `id` int(3) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `idProveedor` int(3) NOT NULL,
  `fecha` date DEFAULT NULL,
  `monto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallecompra`
--

CREATE TABLE `detallecompra` (
  `id` int(11) NOT NULL,
  `idCompra` int(3) NOT NULL,
  `idProducto` int(3) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleorden`
--

CREATE TABLE `detalleorden` (
  `id` int(11) NOT NULL,
  `idOrden` int(3) NOT NULL,
  `idProducto` int(3) NOT NULL,
  `idEstado` int(3) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edad`
--

CREATE TABLE `edad` (
  `id` int(3) NOT NULL,
  `edad` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especie`
--

CREATE TABLE `especie` (
  `id` int(3) NOT NULL,
  `especie` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadomascota`
--

CREATE TABLE `estadomascota` (
  `id` int(3) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoorden`
--

CREATE TABLE `estadoorden` (
  `id` int(3) NOT NULL,
  `idEstado` int(3) NOT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `idDetalleOrden` int(3) DEFAULT NULL,
  `idDetalleCompra` int(3) DEFAULT NULL,
  `idProducto` int(3) NOT NULL,
  `idTipo` int(3) NOT NULL,
  `concepto` varchar(45) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `stock` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `id` int(11) NOT NULL,
  `idUsuario` int(3) NOT NULL,
  `idEstado` int(3) NOT NULL,
  `idProvincia` int(3) NOT NULL,
  `idDepartamento` int(3) NOT NULL,
  `idEspecie` int(3) NOT NULL,
  `idRaza` int(3) NOT NULL,
  `idSexo` int(3) NOT NULL,
  `idEdad` int(3) NOT NULL,
  `idColorPrincipal` int(3) NOT NULL,
  `idColorSecundario` int(3) DEFAULT NULL,
  `idOrejas` int(3) NOT NULL,
  `idCola` int(3) NOT NULL,
  `linkImagen` varchar(100) NOT NULL,
  `descripcion` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id` int(11) NOT NULL,
  `idUsuario` int(3) NOT NULL,
  `asunto` varchar(40) DEFAULT NULL,
  `texto` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodopago`
--

CREATE TABLE `metodopago` (
  `id` int(3) NOT NULL,
  `metodoDePago` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `id` int(11) NOT NULL,
  `idUsuario` int(3) NOT NULL,
  `idEstado` int(3) NOT NULL,
  `idMetodoPago` int(3) NOT NULL,
  `idProvincia` int(3) NOT NULL,
  `idDepartamento` int(3) NOT NULL,
  `direccionEnvio` varchar(45) NOT NULL,
  `total` float NOT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orejas`
--

CREATE TABLE `orejas` (
  `id` int(3) NOT NULL,
  `orejas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` float NOT NULL,
  `descripcion` varchar(60) NOT NULL,
  `linkImagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefono` int(3) NOT NULL,
  `direccion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `raza`
--

CREATE TABLE `raza` (
  `id` int(3) NOT NULL,
  `raza` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `id` int(3) NOT NULL,
  `sexo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomovimiento`
--

CREATE TABLE `tipomovimiento` (
  `id` int(11) NOT NULL,
  `movimiento` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `contraseña` varchar(30) NOT NULL,
  `email` varchar(45) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `telefono` int(3) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `idProvincia` int(3) NOT NULL,
  `idDepartamento` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valorestadoorden`
--

CREATE TABLE `valorestadoorden` (
  `id` int(3) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_productoCarrito` (`idProducto`),
  ADD KEY `fk_usuarioCarrito` (`idUsuario`);

--
-- Indices de la tabla `cola`
--
ALTER TABLE `cola`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colorprincipal`
--
ALTER TABLE `colorprincipal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colorsecundario`
--
ALTER TABLE `colorsecundario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_proveedor` (`idProveedor`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detallecompra`
--
ALTER TABLE `detallecompra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_compra` (`idCompra`),
  ADD KEY `fk_producto` (`idProducto`);

--
-- Indices de la tabla `detalleorden`
--
ALTER TABLE `detalleorden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orden` (`idOrden`),
  ADD KEY `fk_estadoOrden` (`idEstado`),
  ADD KEY `fk_productoDO` (`idProducto`);

--
-- Indices de la tabla `edad`
--
ALTER TABLE `edad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especie`
--
ALTER TABLE `especie`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadomascota`
--
ALTER TABLE `estadomascota`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadoorden`
--
ALTER TABLE `estadoorden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_estadoEO` (`idEstado`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detalleorden` (`idDetalleOrden`),
  ADD KEY `fk_detallecompra` (`idDetalleCompra`),
  ADD KEY `fk_productoInventario` (`idProducto`),
  ADD KEY `fk_tipoInventario` (`idTipo`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cola` (`idCola`),
  ADD KEY `fk_colorPrincipal` (`idColorPrincipal`),
  ADD KEY `fk_colorSecundario` (`idColorSecundario`),
  ADD KEY `fk_departamentoMascota` (`idDepartamento`),
  ADD KEY `fk_edad` (`idEdad`),
  ADD KEY `fk_especie` (`idEspecie`),
  ADD KEY `fk_estado` (`idEstado`),
  ADD KEY `fk_orejas` (`idOrejas`),
  ADD KEY `fk_provinciaMascota` (`idProvincia`),
  ADD KEY `fk_raza` (`idRaza`),
  ADD KEY `fk_sexo` (`idSexo`),
  ADD KEY `fk_usuarioMascota` (`idUsuario`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuarioMensaje` (`idUsuario`);

--
-- Indices de la tabla `metodopago`
--
ALTER TABLE `metodopago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_departamentoOrden` (`idDepartamento`),
  ADD KEY `fk_metodoPago` (`idMetodoPago`),
  ADD KEY `fk_provinciaOrden` (`idProvincia`),
  ADD KEY `fk_usuarioOrden` (`idUsuario`),
  ADD KEY `fk_estadoOrden-O` (`idEstado`);

--
-- Indices de la tabla `orejas`
--
ALTER TABLE `orejas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `raza`
--
ALTER TABLE `raza`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipomovimiento`
--
ALTER TABLE `tipomovimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fk_departamento` (`idDepartamento`),
  ADD KEY `fk_provincia` (`idProvincia`);

--
-- Indices de la tabla `valorestadoorden`
--
ALTER TABLE `valorestadoorden`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallecompra`
--
ALTER TABLE `detallecompra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalleorden`
--
ALTER TABLE `detalleorden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mascota`
--
ALTER TABLE `mascota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipomovimiento`
--
ALTER TABLE `tipomovimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `fk_productoCarrito` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `fk_usuarioCarrito` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `fk_proveedor` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`id`);

--
-- Filtros para la tabla `detallecompra`
--
ALTER TABLE `detallecompra`
  ADD CONSTRAINT `fk_compra` FOREIGN KEY (`idCompra`) REFERENCES `compra` (`id`),
  ADD CONSTRAINT `fk_producto` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `detalleorden`
--
ALTER TABLE `detalleorden`
  ADD CONSTRAINT `fk_estadoOrden` FOREIGN KEY (`idEstado`) REFERENCES `estadoorden` (`id`),
  ADD CONSTRAINT `fk_orden` FOREIGN KEY (`idOrden`) REFERENCES `orden` (`id`),
  ADD CONSTRAINT `fk_productoDO` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `estadoorden`
--
ALTER TABLE `estadoorden`
  ADD CONSTRAINT `fk_estadoEO` FOREIGN KEY (`idEstado`) REFERENCES `valorestadoorden` (`id`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `fk_detallecompra` FOREIGN KEY (`idDetalleCompra`) REFERENCES `detallecompra` (`id`),
  ADD CONSTRAINT `fk_detalleorden` FOREIGN KEY (`idDetalleOrden`) REFERENCES `detalleorden` (`id`),
  ADD CONSTRAINT `fk_productoInventario` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `fk_tipoInventario` FOREIGN KEY (`idTipo`) REFERENCES `tipomovimiento` (`id`);

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `fk_cola` FOREIGN KEY (`idCola`) REFERENCES `cola` (`id`),
  ADD CONSTRAINT `fk_colorPrincipal` FOREIGN KEY (`idColorPrincipal`) REFERENCES `colorprincipal` (`id`),
  ADD CONSTRAINT `fk_colorSecundario` FOREIGN KEY (`idColorSecundario`) REFERENCES `colorsecundario` (`id`),
  ADD CONSTRAINT `fk_departamentoMascota` FOREIGN KEY (`idDepartamento`) REFERENCES `departamento` (`id`),
  ADD CONSTRAINT `fk_edad` FOREIGN KEY (`idEdad`) REFERENCES `edad` (`id`),
  ADD CONSTRAINT `fk_especie` FOREIGN KEY (`idEspecie`) REFERENCES `especie` (`id`),
  ADD CONSTRAINT `fk_estado` FOREIGN KEY (`idEstado`) REFERENCES `estadomascota` (`id`),
  ADD CONSTRAINT `fk_orejas` FOREIGN KEY (`idOrejas`) REFERENCES `orejas` (`id`),
  ADD CONSTRAINT `fk_provinciaMascota` FOREIGN KEY (`idProvincia`) REFERENCES `provincia` (`id`),
  ADD CONSTRAINT `fk_raza` FOREIGN KEY (`idRaza`) REFERENCES `raza` (`id`),
  ADD CONSTRAINT `fk_sexo` FOREIGN KEY (`idSexo`) REFERENCES `sexo` (`id`),
  ADD CONSTRAINT `fk_usuarioMascota` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `fk_usuarioMensaje` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `fk_departamentoOrden` FOREIGN KEY (`idDepartamento`) REFERENCES `departamento` (`id`),
  ADD CONSTRAINT `fk_estadoOrden-O` FOREIGN KEY (`idEstado`) REFERENCES `valorestadoorden` (`id`),
  ADD CONSTRAINT `fk_metodoPago` FOREIGN KEY (`idMetodoPago`) REFERENCES `metodopago` (`id`),
  ADD CONSTRAINT `fk_provinciaOrden` FOREIGN KEY (`idProvincia`) REFERENCES `provincia` (`id`),
  ADD CONSTRAINT `fk_usuarioOrden` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_departamento` FOREIGN KEY (`idDepartamento`) REFERENCES `departamento` (`id`),
  ADD CONSTRAINT `fk_provincia` FOREIGN KEY (`idProvincia`) REFERENCES `provincia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
