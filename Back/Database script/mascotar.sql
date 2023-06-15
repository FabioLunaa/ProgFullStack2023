-- MySQL Script generated by MySQL Workbench
-- Wed Nov  9 13:47:24 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema mascotar
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mascotar` ;

-- -----------------------------------------------------
-- Schema mascotar
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mascotar` DEFAULT CHARACTER SET utf8mb4 ;
USE `mascotar` ;

-- -----------------------------------------------------
-- Table `mascotar`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`producto` (
  `id` INT(11) NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `precio` FLOAT NOT NULL,
  `descripcion` VARCHAR(60) NOT NULL,
  `linkImagen` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Table `mascotar`.`departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`departamento` (
  `id` INT(11) NOT NULL,
  `nombre` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mascotar`.`provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`provincia` (
  `id` INT(11) NOT NULL,
  `nombre` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mascotar`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`usuario` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(15) NOT NULL UNIQUE,
  `contraseña` VARCHAR(30) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(25) NOT NULL,
  `apellido` VARCHAR(25) NOT NULL,
  `telefono` INT(11) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `idProvincia` INT(11) NOT NULL,
  `idDepartamento` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_departamento`
    FOREIGN KEY (`idDepartamento`)
    REFERENCES `mascotar`.`departamento` (`id`),
  CONSTRAINT `fk_provincia`
    FOREIGN KEY (`idProvincia`)
    REFERENCES `mascotar`.`provincia` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE INDEX `fk_provincia` ON `mascotar`.`usuario` (`idProvincia` ASC) VISIBLE;

CREATE INDEX `fk_departamento` ON `mascotar`.`usuario` (`idDepartamento` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `mascotar`.`carrito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`carrito` (
  `id` INT(11) NOT NULL,
  `idUsuario` INT(11) NOT NULL,
  `idProducto` INT(11) NOT NULL,
  `cantidad` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_productoCarrito`
    FOREIGN KEY (`idProducto`)
    REFERENCES `mascotar`.`producto` (`id`),
  CONSTRAINT `fk_usuarioCarrito`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `mascotar`.`usuario` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE INDEX `fk_usuarioCarrito` ON `mascotar`.`carrito` (`idUsuario` ASC) VISIBLE;

CREATE INDEX `fk_productoCarrito` ON `mascotar`.`carrito` (`idProducto` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mascotar`.`cola`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`cola` (
  `id` INT(11) NOT NULL,
  `cola` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mascotar`.`colorprincipal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`colorprincipal` (
  `id` INT(11) NOT NULL,
  `color` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mascotar`.`colorsecundario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`colorsecundario` (
  `id` INT(11) NOT NULL,
  `color` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Table `mascotar`.`edad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`edad` (
  `id` INT(11) NOT NULL,
  `edad` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mascotar`.`especie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`especie` (
  `id` INT(11) NOT NULL,
  `especie` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mascotar`.`estadoMascota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`estadoMascota` (
  `id` INT(11) NOT NULL,
  `estado` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mascotar`.`orejas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`orejas` (
  `id` INT(11) NOT NULL,
  `orejas` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mascotar`.`raza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`raza` (
  `id` INT(11) NOT NULL,
  `raza` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mascotar`.`sexo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`sexo` (
  `id` INT(11) NOT NULL,
  `sexo` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Table `mascotar`.`mascota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`mascota` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` INT(11) NOT NULL,
  `idEstado` INT(11) NOT NULL,
  `idProvincia` INT(11) NOT NULL,
  `idDepartamento` INT(11) NOT NULL,
  `idEspecie` INT(11) NOT NULL,
  `idRaza` INT(11) NOT NULL,
  `idSexo` INT(11) NOT NULL,
  `idEdad` INT(11) NOT NULL,
  `idColorPrincipal` INT(11) NOT NULL,
  `idColorSecundario` INT(11) NULL DEFAULT NULL,
  `idOrejas` INT(11) NOT NULL,
  `idCola` INT(11) NOT NULL,
  `linkImagen` VARCHAR(100) NOT NULL,
  `descripcion` VARCHAR(256) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_cola`
    FOREIGN KEY (`idCola`)
    REFERENCES `mascotar`.`cola` (`id`),
  CONSTRAINT `fk_colorPrincipal`
    FOREIGN KEY (`idColorPrincipal`)
    REFERENCES `mascotar`.`colorprincipal` (`id`),
  CONSTRAINT `fk_colorSecundario`
    FOREIGN KEY (`idColorSecundario`)
    REFERENCES `mascotar`.`colorsecundario` (`id`),
  CONSTRAINT `fk_departamentoMascota`
    FOREIGN KEY (`idDepartamento`)
    REFERENCES `mascotar`.`departamento` (`id`),
  CONSTRAINT `fk_edad`
    FOREIGN KEY (`idEdad`)
    REFERENCES `mascotar`.`edad` (`id`),
  CONSTRAINT `fk_especie`
    FOREIGN KEY (`idEspecie`)
    REFERENCES `mascotar`.`especie` (`id`),
  CONSTRAINT `fk_estado`
    FOREIGN KEY (`idEstado`)
    REFERENCES `mascotar`.`estadoMascota` (`id`),
  CONSTRAINT `fk_orejas`
    FOREIGN KEY (`idOrejas`)
    REFERENCES `mascotar`.`orejas` (`id`),
  CONSTRAINT `fk_provinciaMascota`
    FOREIGN KEY (`idProvincia`)
    REFERENCES `mascotar`.`provincia` (`id`),
  CONSTRAINT `fk_raza`
    FOREIGN KEY (`idRaza`)
    REFERENCES `mascotar`.`raza` (`id`),
  CONSTRAINT `fk_sexo`
    FOREIGN KEY (`idSexo`)
    REFERENCES `mascotar`.`sexo` (`id`),
  CONSTRAINT `fk_usuarioMascota`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `mascotar`.`usuario` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE INDEX `fk_usuarioMascota` ON `mascotar`.`mascota` (`idUsuario` ASC) VISIBLE;

CREATE INDEX `fk_estadoMascota` ON `mascotar`.`mascota` (`idEstado` ASC) VISIBLE;

CREATE INDEX `fk_provinciaMascota` ON `mascotar`.`mascota` (`idProvincia` ASC) VISIBLE;

CREATE INDEX `fk_departamentoMascota` ON `mascotar`.`mascota` (`idDepartamento` ASC) VISIBLE;

CREATE INDEX `fk_especie` ON `mascotar`.`mascota` (`idEspecie` ASC) VISIBLE;

CREATE INDEX `fk_raza` ON `mascotar`.`mascota` (`idRaza` ASC) VISIBLE;

CREATE INDEX `fk_sexo` ON `mascotar`.`mascota` (`idSexo` ASC) VISIBLE;

CREATE INDEX `fk_edad` ON `mascotar`.`mascota` (`idEdad` ASC) VISIBLE;

CREATE INDEX `fk_colorPrincipal` ON `mascotar`.`mascota` (`idColorPrincipal` ASC) VISIBLE;

CREATE INDEX `fk_colorSecundario` ON `mascotar`.`mascota` (`idColorSecundario` ASC) VISIBLE;

CREATE INDEX `fk_orejas` ON `mascotar`.`mascota` (`idOrejas` ASC) VISIBLE;

CREATE INDEX `fk_cola` ON `mascotar`.`mascota` (`idCola` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mascotar`.`metodopago`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`metodopago` (
  `id` INT(11) NOT NULL,
  `metodoDePago` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Table `mascotar`.`valorEstadoOrden`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`valorEstadoOrden` (
  `id` INT(11) NOT NULL,
  `estado` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Table `mascotar`.`estadoOrden`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`estadoOrden` (
  `id` INT(11) NOT NULL,
  `idEstado` INT(11) NOT NULL,
  `fecha` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_estadoEO`
    FOREIGN KEY (`idEstado`)
    REFERENCES `mascotar`.`valorEstadoOrden` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE INDEX `fk_estadoEO` ON `mascotar`.`estadoOrden` (`idEstado` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `mascotar`.`orden`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`orden` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` INT(11) NOT NULL,
  `idEstado` INT(11) NOT NULL,
  `idMetodoPago` INT(11) NOT NULL,
  `idProvincia` INT(11) NOT NULL,
  `idDepartamento` INT(11) NOT NULL,
  `direccionEnvio` VARCHAR(45) NOT NULL,
  `total` FLOAT NOT NULL,
  `fecha` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_departamentoOrden`
    FOREIGN KEY (`idDepartamento`)
    REFERENCES `mascotar`.`departamento` (`id`),
  CONSTRAINT `fk_metodoPago`
    FOREIGN KEY (`idMetodoPago`)
    REFERENCES `mascotar`.`metodopago` (`id`),
  CONSTRAINT `fk_provinciaOrden`
    FOREIGN KEY (`idProvincia`)
    REFERENCES `mascotar`.`provincia` (`id`),
  CONSTRAINT `fk_usuarioOrden`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `mascotar`.`usuario` (`id`),
  CONSTRAINT `fk_estadoOrden-O`
    FOREIGN KEY (`idEstado`)
    REFERENCES `mascotar`.`valorEstadoOrden` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE INDEX `fk_usuarioOrden` ON `mascotar`.`orden` (`idUsuario` ASC) VISIBLE;

CREATE INDEX `fk_metodoPago` ON `mascotar`.`orden` (`idMetodoPago` ASC) VISIBLE;

CREATE INDEX `fk_provinciaOrden` ON `mascotar`.`orden` (`idProvincia` ASC) VISIBLE;

CREATE INDEX `fk_departamentoOrden` ON `mascotar`.`orden` (`idDepartamento` ASC) VISIBLE;

CREATE INDEX `fk_estadoOrden-O` ON `mascotar`.`orden` (`idEstado` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mascotar`.`detalleorden`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`detalleorden` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `idOrden` INT(11) NOT NULL,
  `idProducto` INT(11) NOT NULL,
  `idEstado` INT(11) NOT NULL,
  `cantidad` INT(11) NOT NULL,
  `precio` FLOAT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_orden`
    FOREIGN KEY (`idOrden`)
    REFERENCES `mascotar`.`orden` (`id`),
  CONSTRAINT `fk_estadoOrden`
    FOREIGN KEY (`idEstado`)
    REFERENCES `mascotar`.`estadoOrden` (`id`),  
  CONSTRAINT `fk_productoDO`
    FOREIGN KEY (`idProducto`)
    REFERENCES `mascotar`.`producto` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE INDEX `fk_orden` ON `mascotar`.`detalleorden` (`idOrden` ASC) VISIBLE;

CREATE INDEX `fk_productoDO` ON `mascotar`.`detalleorden` (`idProducto` ASC) VISIBLE;

CREATE INDEX `fk_estadoOrden` ON `mascotar`.`detalleorden` (`idEstado` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `mascotar`.`proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`proveedor` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(25) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `telefono` INT(11) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Table `mascotar`.`compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`compra` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `idProveedor` INT(11) NOT NULL,
  `fecha` DATE NULL DEFAULT NULL,
  `monto` FLOAT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_proveedor`
    FOREIGN KEY (`idProveedor`)
    REFERENCES `mascotar`.`proveedor` (`id`))

ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE INDEX `fk_proveedor` ON `mascotar`.`compra` (`idProveedor` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `mascotar`.`detallecompra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`detallecompra` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `idCompra` INT(11) NOT NULL,
  `idProducto` INT(11) NOT NULL,
  `cantidad` INT(11) NOT NULL,
  `precio` FLOAT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_compra`
    FOREIGN KEY (`idCompra`)
    REFERENCES `mascotar`.`compra` (`id`),
  CONSTRAINT `fk_producto`
    FOREIGN KEY (`idProducto`)
    REFERENCES `mascotar`.`producto` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE INDEX `fk_compra` ON `mascotar`.`detallecompra` (`idCompra` ASC) VISIBLE;

CREATE INDEX `fk_productoDC` ON `mascotar`.`detallecompra` (`idProducto` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `mascotar`.`tipoMovimieto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`tipoMovimiento` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `movimiento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Table `mascotar`.`inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`inventario` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `idDetalleOrden` INT(11),
  `idDetalleCompra` INT(11),
  `idProducto` INT(11) NOT NULL,
  `idTipo` INT(11) NOT NULL,
  `concepto` VARCHAR(45) NOT NULL,
  `cantidad` INT(11) NOT NULL,
  `stock` INT(11) NOT NULL,
  CONSTRAINT CHK_inventario CHECK ((idDetalleOrden != NULL AND idDetalleCompra <=> NULL) OR (idDetalleCompra != NULL AND idDetalleOrden <=> NULL)),
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_detalleorden`
    FOREIGN KEY (`idDetalleOrden`)
    REFERENCES `mascotar`.`detalleorden` (`id`),
  CONSTRAINT `fk_detallecompra`
    FOREIGN KEY (`idDetalleCompra`)
    REFERENCES `mascotar`.`detallecompra` (`id`),
  CONSTRAINT `fk_productoInventario`
    FOREIGN KEY (`idProducto`)
    REFERENCES `mascotar`.`producto` (`id`),
  CONSTRAINT `fk_tipoInventario`
    FOREIGN KEY (`idTipo`)
    REFERENCES `mascotar`.`tipomovimiento` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE INDEX `fk_detalleorden` ON `mascotar`.`inventario` (`idDetalleOrden` ASC) VISIBLE;

CREATE INDEX `fk_detallecompra` ON `mascotar`.`inventario` (`idDetalleCompra` ASC) VISIBLE;

CREATE INDEX `fk_productoInventario` ON `mascotar`.`inventario` (`idProducto` ASC) VISIBLE;

CREATE INDEX `fk_tipoInventario` ON `mascotar`.`inventario` (`idTipo` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `mascotar`.`mensaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`mensaje` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` INT(11) NOT NULL,
  `asunto` VARCHAR(40) NULL DEFAULT NULL,
  `texto` VARCHAR(256) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_usuarioMensaje`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `mascotar`.`usuario` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE INDEX `fk_usuarioMensaje` ON `mascotar`.`mensaje` (`idUsuario` ASC) VISIBLE;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

/*

-- -----------------------------------------------------
-- Table `mascotar`.`estadoRegistro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`estadoRegistro` (
  `id` INT(11) NOT NULL,
  `nombre` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Table `mascotar`.`movimientosBD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mascotar`.`movimientosBD` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `fecha` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `idEstadoRegistro` INT(11) NOT NULL,
  `idUsuario` INT(11),
  `username` VARCHAR(15),
  `contraseña` VARCHAR(30),
  `email` VARCHAR(45),
  `nombre` VARCHAR(25),
  `apellido` VARCHAR(25),
  `telefono` INT(11),
  `direccion` VARCHAR(45),
  `idProvincia` INT(11),
  `idDepartamento` INT(11),
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_estadoRegistro`
    FOREIGN KEY (`idEstadoRegistro`)
    REFERENCES `mascotar`.`estadoRegistro` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE INDEX `fk_estadoRegistro` ON `mascotar`.`movimientosBD` (`idEstadoRegistro` ASC) VISIBLE;

*/

/*
-- -----------------------------------------------------
-- Valores tabla estadoRegistro
-- -----------------------------------------------------

INSERT INTO estadoRegistro (id, nombre) 
VALUES (1, "Creado"), (2, "Consultado"), (3, "Modificado"), (4, "Eliminado");

-- insertar provincias --
insert into provincia (id, nombre)
 values (1, 'Buenos Aires'), (2, 'Córdoba'), (3, 'Santa fe'), (4, 'Salta'), (5, 'Corrientes');
 
 -- insertar departamentos --
insert into departamento (id, nombre)
 values (1, 'Avellaneda'), (2, 'Capital'), (3, 'Rosario');

 -- insertar usuarios--
insert into usuario (username, contraseña, email, nombre, apellido, telefono, direccion, idProvincia, idDepartamento)
 values ('juanpepez', '22113efdd', 'juanpepez@gmai.com', 'Juan', 'Pepez', 223347732, 'Cordoba', 1, 1), 
 ('mariapanza', '22113ds', 'mariapanza@gmai.com', 'Maria', 'Panza', 954736264, 'Buenos Aires', 4, 2),
 ('pedromaida', 'cjd432', 'pedromaida@gmai.com', 'Pedro', 'Maidana', 43294837, 'Pinamar', 5, 2);
 
 -- seleccionar todos los registros--
 select * from usuario;
 
 -- seleccionar campos espesificos--
 select username, nombre from usuario;
 
 -- condicion de la consulta--
 select *from usuario where id = 1;
 
 -- actualizar registros --
 update usuario set username = 'sofi' where username = 'mariapanza';
 
 -- inner join --
 select u.nombre, u.apellido, u.direccion, m.descripcion, m.idRaza 
 from usuario as u
 inner join mascota as m
 on u.idProvincia = m.id;
 
 -- left join --
 select u.nombre, u.apellido, u.direccion, m.descripcion, m.idRaza 
 from usuario as u
 left join mascota as m
 on u.idProvincia = m.id;
 
 -- right join --
 select u.nombre, u.apellido, u.direccion, m.descripcion, m.idRaza 
 from usuario as u
 right join mascota as m
 on u.idProvincia = m.id;
 
 -- insertar mascotas --
 
 insert into mascota (idUsuario, idEstado, idProvincia, idDepartamento, idEspecie, idRaza, idSexo, idEdad, idColorPrincipal, idColorSecundario, idOrejas, idCola, linkImagen, descripcion)
 values (1, 3, 1, 1, 6, 1, 2, 2, 1, 5, 6, 2, 'https://ar.images.search', 'Perro'),
 (2, 3, 2, 2, 6, 1, 2, 2, 1, 5, 6, 2, 'https://ar.images.search', 'Gato1'),
 (2, 3, 3, 2, 6, 1, 2, 2, 1, 5, 6, 2, 'https://ar.images.search', 'Perro2'),
 (3, 3, 4, 2, 6, 1, 2, 2, 1, 5, 6, 2, 'https://ar.images.search', 'Perro'); 
 
 select * from mascota;
 select * from mascota where idUsuario = 1;
*/
