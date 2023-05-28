-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2023 a las 01:32:14
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mascotar1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add metodo pago', 7, 'add_metodopago'),
(26, 'Can change metodo pago', 7, 'change_metodopago'),
(27, 'Can delete metodo pago', 7, 'delete_metodopago'),
(28, 'Can view metodo pago', 7, 'view_metodopago'),
(29, 'Can add tipo movimiento', 8, 'add_tipomovimiento'),
(30, 'Can change tipo movimiento', 8, 'change_tipomovimiento'),
(31, 'Can delete tipo movimiento', 8, 'delete_tipomovimiento'),
(32, 'Can view tipo movimiento', 8, 'view_tipomovimiento'),
(33, 'Can add valor estado orden', 9, 'add_valorestadoorden'),
(34, 'Can change valor estado orden', 9, 'change_valorestadoorden'),
(35, 'Can delete valor estado orden', 9, 'delete_valorestadoorden'),
(36, 'Can view valor estado orden', 9, 'view_valorestadoorden'),
(37, 'Can add mensaje', 10, 'add_mensaje'),
(38, 'Can change mensaje', 10, 'change_mensaje'),
(39, 'Can delete mensaje', 10, 'delete_mensaje'),
(40, 'Can view mensaje', 10, 'view_mensaje'),
(41, 'Can add departamento', 11, 'add_departamento'),
(42, 'Can change departamento', 11, 'change_departamento'),
(43, 'Can delete departamento', 11, 'delete_departamento'),
(44, 'Can view departamento', 11, 'view_departamento'),
(45, 'Can add estado', 12, 'add_estado'),
(46, 'Can change estado', 12, 'change_estado'),
(47, 'Can delete estado', 12, 'delete_estado'),
(48, 'Can view estado', 12, 'view_estado'),
(49, 'Can add carrito', 13, 'add_carrito'),
(50, 'Can change carrito', 13, 'change_carrito'),
(51, 'Can delete carrito', 13, 'delete_carrito'),
(52, 'Can view carrito', 13, 'view_carrito'),
(53, 'Can add orejas', 14, 'add_orejas'),
(54, 'Can change orejas', 14, 'change_orejas'),
(55, 'Can delete orejas', 14, 'delete_orejas'),
(56, 'Can view orejas', 14, 'view_orejas'),
(57, 'Can add cola', 15, 'add_cola'),
(58, 'Can change cola', 15, 'change_cola'),
(59, 'Can delete cola', 15, 'delete_cola'),
(60, 'Can view cola', 15, 'view_cola'),
(61, 'Can add compra', 16, 'add_compra'),
(62, 'Can change compra', 16, 'change_compra'),
(63, 'Can delete compra', 16, 'delete_compra'),
(64, 'Can view compra', 16, 'view_compra'),
(65, 'Can add estado orden', 17, 'add_estadoorden'),
(66, 'Can change estado orden', 17, 'change_estadoorden'),
(67, 'Can delete estado orden', 17, 'delete_estadoorden'),
(68, 'Can view estado orden', 17, 'view_estadoorden'),
(69, 'Can add proveedor', 18, 'add_proveedor'),
(70, 'Can change proveedor', 18, 'change_proveedor'),
(71, 'Can delete proveedor', 18, 'delete_proveedor'),
(72, 'Can view proveedor', 18, 'view_proveedor'),
(73, 'Can add sexo', 19, 'add_sexo'),
(74, 'Can change sexo', 19, 'change_sexo'),
(75, 'Can delete sexo', 19, 'delete_sexo'),
(76, 'Can view sexo', 19, 'view_sexo'),
(77, 'Can add mascota', 20, 'add_mascota'),
(78, 'Can change mascota', 20, 'change_mascota'),
(79, 'Can delete mascota', 20, 'delete_mascota'),
(80, 'Can view mascota', 20, 'view_mascota'),
(81, 'Can add especie', 21, 'add_especie'),
(82, 'Can change especie', 21, 'change_especie'),
(83, 'Can delete especie', 21, 'delete_especie'),
(84, 'Can view especie', 21, 'view_especie'),
(85, 'Can add producto', 22, 'add_producto'),
(86, 'Can change producto', 22, 'change_producto'),
(87, 'Can delete producto', 22, 'delete_producto'),
(88, 'Can view producto', 22, 'view_producto'),
(89, 'Can add detalle compra', 23, 'add_detallecompra'),
(90, 'Can change detalle compra', 23, 'change_detallecompra'),
(91, 'Can delete detalle compra', 23, 'delete_detallecompra'),
(92, 'Can view detalle compra', 23, 'view_detallecompra'),
(93, 'Can add raza', 24, 'add_raza'),
(94, 'Can change raza', 24, 'change_raza'),
(95, 'Can delete raza', 24, 'delete_raza'),
(96, 'Can view raza', 24, 'view_raza'),
(97, 'Can add inventario', 25, 'add_inventario'),
(98, 'Can change inventario', 25, 'change_inventario'),
(99, 'Can delete inventario', 25, 'delete_inventario'),
(100, 'Can view inventario', 25, 'view_inventario'),
(101, 'Can add detalle orden', 26, 'add_detalleorden'),
(102, 'Can change detalle orden', 26, 'change_detalleorden'),
(103, 'Can delete detalle orden', 26, 'delete_detalleorden'),
(104, 'Can view detalle orden', 26, 'view_detalleorden'),
(105, 'Can add provincia', 27, 'add_provincia'),
(106, 'Can change provincia', 27, 'change_provincia'),
(107, 'Can delete provincia', 27, 'delete_provincia'),
(108, 'Can view provincia', 27, 'view_provincia'),
(109, 'Can add edad', 28, 'add_edad'),
(110, 'Can change edad', 28, 'change_edad'),
(111, 'Can delete edad', 28, 'delete_edad'),
(112, 'Can view edad', 28, 'view_edad'),
(113, 'Can add usuario', 29, 'add_usuario'),
(114, 'Can change usuario', 29, 'change_usuario'),
(115, 'Can delete usuario', 29, 'delete_usuario'),
(116, 'Can view usuario', 29, 'view_usuario'),
(117, 'Can add orden', 30, 'add_orden'),
(118, 'Can change orden', 30, 'change_orden'),
(119, 'Can delete orden', 30, 'delete_orden'),
(120, 'Can view orden', 30, 'view_orden');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$rSvh4C2GAZZWfeLhlilir5$UetLj7uP67Allg9yuYqt7Anktlc3aAW4nOb5f4NrIVg=', '2023-05-28 23:10:06.665443', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2023-05-28 14:38:17.580164'),
(2, 'pbkdf2_sha256$600000$zYbr1FpyglfyMtvxiATnKM$EBQjSsDp6gV3FgWo5T7RBlKPpwFin/E3QjWCQuUI/eY=', '2023-05-28 23:11:54.689925', 0, 'fabio', '', '', '', 0, 1, '2023-05-28 14:39:25.983175');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-05-28 21:51:19.124497', '1', 'Alimento balanceado KONGO', 1, '[{\"added\": {}}]', 22, 1),
(2, '2023-05-28 21:53:37.908762', '2', 'Alimento balanceado GATI', 1, '[{\"added\": {}}]', 22, 1),
(3, '2023-05-28 21:53:52.910171', '2', 'Alimento balanceado GATI', 2, '[]', 22, 1),
(4, '2023-05-28 21:55:13.092147', '3', 'Collar SULTAN', 1, '[{\"added\": {}}]', 22, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(13, 'tasks', 'carrito'),
(15, 'tasks', 'cola'),
(16, 'tasks', 'compra'),
(11, 'tasks', 'departamento'),
(23, 'tasks', 'detallecompra'),
(26, 'tasks', 'detalleorden'),
(28, 'tasks', 'edad'),
(21, 'tasks', 'especie'),
(12, 'tasks', 'estado'),
(17, 'tasks', 'estadoorden'),
(25, 'tasks', 'inventario'),
(20, 'tasks', 'mascota'),
(10, 'tasks', 'mensaje'),
(7, 'tasks', 'metodopago'),
(30, 'tasks', 'orden'),
(14, 'tasks', 'orejas'),
(22, 'tasks', 'producto'),
(18, 'tasks', 'proveedor'),
(27, 'tasks', 'provincia'),
(24, 'tasks', 'raza'),
(19, 'tasks', 'sexo'),
(8, 'tasks', 'tipomovimiento'),
(29, 'tasks', 'usuario'),
(9, 'tasks', 'valorestadoorden');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-28 14:31:26.177753'),
(2, 'auth', '0001_initial', '2023-05-28 14:31:26.481202'),
(3, 'admin', '0001_initial', '2023-05-28 14:31:26.566113'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-28 14:31:26.570909'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-28 14:31:26.576461'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-28 14:31:26.609193'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-28 14:31:26.644308'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-05-28 14:31:26.651812'),
(9, 'auth', '0004_alter_user_username_opts', '2023-05-28 14:31:26.657814'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-05-28 14:31:26.683037'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-05-28 14:31:26.686046'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-28 14:31:26.690407'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-05-28 14:31:26.698301'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-28 14:31:26.707672'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-05-28 14:31:26.716595'),
(16, 'auth', '0011_update_proxy_permissions', '2023-05-28 14:31:26.722345'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-28 14:31:26.730059'),
(18, 'sessions', '0001_initial', '2023-05-28 14:31:26.750285'),
(19, 'tasks', '0001_initial', '2023-05-28 14:34:35.170127'),
(20, 'tasks', '0002_cola_compra_departamento_detallecompra_detalleorden_and_more', '2023-05-28 17:57:44.114514');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8sndq3zhv9kctx17qdpqnsu7cnsa8zi9', '.eJxVjE0OwiAYRO_C2hBAKeDSfc9Avh-QqoGktCvj3W2TLnSW897MW0RYlxLXnuY4sbgKI06_HQI9U90BP6Dem6RWl3lCuSvyoF2OjdPrdrh_BwV62dY4WJU8YUhnbRV45wIrp03IRvtMiU222vmAeQuyBgIivEA2yms7WPH5AvACOJg:1q3PYI:MYrKScIx-Czd7f_oGZK1VPTN6b3O-ohOBwpuKYbVfVo', '2023-06-11 23:11:54.692860');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_carrito`
--

CREATE TABLE `tasks_carrito` (
  `id` int(11) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `idProducto_id` int(11) NOT NULL,
  `idUsuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_cola`
--

CREATE TABLE `tasks_cola` (
  `id` int(11) NOT NULL,
  `cola` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_compra`
--

CREATE TABLE `tasks_compra` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `idProveedor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_departamento`
--

CREATE TABLE `tasks_departamento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_detallecompra`
--

CREATE TABLE `tasks_detallecompra` (
  `id` int(11) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `precio` decimal(10,2) NOT NULL,
  `idCompra_id` int(11) NOT NULL,
  `idProducto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_detalleorden`
--

CREATE TABLE `tasks_detalleorden` (
  `id` int(11) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `precio` decimal(10,2) NOT NULL,
  `idEstado_id` int(11) NOT NULL,
  `idOrden_id` int(11) NOT NULL,
  `idProducto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_edad`
--

CREATE TABLE `tasks_edad` (
  `id` int(11) NOT NULL,
  `edad` int(10) UNSIGNED NOT NULL CHECK (`edad` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_especie`
--

CREATE TABLE `tasks_especie` (
  `id` int(11) NOT NULL,
  `especie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_estado`
--

CREATE TABLE `tasks_estado` (
  `id` int(11) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_estadoorden`
--

CREATE TABLE `tasks_estadoorden` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `idEstado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_inventario`
--

CREATE TABLE `tasks_inventario` (
  `id` int(11) NOT NULL,
  `concepto` varchar(100) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `stock` int(10) UNSIGNED NOT NULL CHECK (`stock` >= 0),
  `idDetalleCompra_id` int(11) NOT NULL,
  `idDetalleOrden_id` int(11) NOT NULL,
  `idProducto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_mascota`
--

CREATE TABLE `tasks_mascota` (
  `id` int(11) NOT NULL,
  `linkImagen` varchar(200) NOT NULL,
  `descripcion` longtext NOT NULL,
  `idCola_id` int(11) NOT NULL,
  `idDepartamento_id` int(11) NOT NULL,
  `idEdad_id` int(11) NOT NULL,
  `idEspecie_id` int(11) NOT NULL,
  `idEstado_id` int(11) NOT NULL,
  `idOrejas_id` int(11) NOT NULL,
  `idProvincia_id` int(11) NOT NULL,
  `idRaza_id` int(11) NOT NULL,
  `idSexo_id` int(11) NOT NULL,
  `idUsuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_mensaje`
--

CREATE TABLE `tasks_mensaje` (
  `id` int(11) NOT NULL,
  `asunto` varchar(100) NOT NULL,
  `texto` longtext NOT NULL,
  `idUsuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_metodopago`
--

CREATE TABLE `tasks_metodopago` (
  `id` int(11) NOT NULL,
  `MetodosDePago` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_orden`
--

CREATE TABLE `tasks_orden` (
  `id` int(11) NOT NULL,
  `direccionEnvio` varchar(200) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL,
  `idDepartamento_id` int(11) NOT NULL,
  `idEstado_id` int(11) NOT NULL,
  `idMetodoPago_id` int(11) NOT NULL,
  `idProvincia_id` int(11) NOT NULL,
  `idUsuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_orejas`
--

CREATE TABLE `tasks_orejas` (
  `id` int(11) NOT NULL,
  `orejas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_producto`
--

CREATE TABLE `tasks_producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tasks_producto`
--

INSERT INTO `tasks_producto` (`id`, `nombre`, `precio`, `descripcion`, `imagen`) VALUES
(1, 'Alimento balanceado KONGO', '1500.00', 'Aliemento balanceado para perros hasta 1 año de edad', 'https://perrosygatosfood.com.ar/wp/wp-content/uploads/2019/09/Imagenes-carro-digital-9.png'),
(2, 'Alimento balanceado GATI', '2400.00', 'Alimento para gatos (Cualquier edad)', 'https://th.bing.com/th/id/R.658769180f6ac66e47fc13ed6e1c0535?rik=boWZmOZv1kSBdA&pid=ImgRaw&r=0'),
(3, 'Collar SULTAN', '3200.00', 'Collar de perros marca SULTAN', 'https://th.bing.com/th/id/OIP.hToVm_5-5089RNcbim9QNgHaHa?pid=ImgDet&rs=1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_proveedor`
--

CREATE TABLE `tasks_proveedor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_provincia`
--

CREATE TABLE `tasks_provincia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_raza`
--

CREATE TABLE `tasks_raza` (
  `id` int(11) NOT NULL,
  `raza` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_sexo`
--

CREATE TABLE `tasks_sexo` (
  `id` int(11) NOT NULL,
  `sexo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_tipomovimiento`
--

CREATE TABLE `tasks_tipomovimiento` (
  `id` int(11) NOT NULL,
  `movimiento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_usuario`
--

CREATE TABLE `tasks_usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `idDepartamento_id` int(11) NOT NULL,
  `idProvincia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks_valorestadoorden`
--

CREATE TABLE `tasks_valorestadoorden` (
  `id` int(11) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `tasks_carrito`
--
ALTER TABLE `tasks_carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_carrito_idProducto_id_4c00e60d_fk_tasks_producto_id` (`idProducto_id`),
  ADD KEY `tasks_carrito_idUsuario_id_ac115d9e_fk_tasks_usuario_id` (`idUsuario_id`);

--
-- Indices de la tabla `tasks_cola`
--
ALTER TABLE `tasks_cola`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks_compra`
--
ALTER TABLE `tasks_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_compra_idProveedor_id_a47501c2_fk_tasks_proveedor_id` (`idProveedor_id`);

--
-- Indices de la tabla `tasks_departamento`
--
ALTER TABLE `tasks_departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks_detallecompra`
--
ALTER TABLE `tasks_detallecompra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_detallecompra_idProducto_id_7ee12331_fk_tasks_producto_id` (`idProducto_id`),
  ADD KEY `tasks_detallecompra_idCompra_id_1b35c029_fk_tasks_compra_id` (`idCompra_id`);

--
-- Indices de la tabla `tasks_detalleorden`
--
ALTER TABLE `tasks_detalleorden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_detalleorden_idEstado_id_f6c66411_fk_tasks_estado_id` (`idEstado_id`),
  ADD KEY `tasks_detalleorden_idOrden_id_ef5bbc6e_fk_tasks_orden_id` (`idOrden_id`),
  ADD KEY `tasks_detalleorden_idProducto_id_f09904ef_fk_tasks_producto_id` (`idProducto_id`);

--
-- Indices de la tabla `tasks_edad`
--
ALTER TABLE `tasks_edad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks_especie`
--
ALTER TABLE `tasks_especie`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks_estado`
--
ALTER TABLE `tasks_estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks_estadoorden`
--
ALTER TABLE `tasks_estadoorden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_estadoorden_idEstado_id_139f6836_fk_tasks_estado_id` (`idEstado_id`);

--
-- Indices de la tabla `tasks_inventario`
--
ALTER TABLE `tasks_inventario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_inventario_idDetalleCompra_id_25358e01_fk_tasks_det` (`idDetalleCompra_id`),
  ADD KEY `tasks_inventario_idDetalleOrden_id_31064dc9_fk_tasks_det` (`idDetalleOrden_id`),
  ADD KEY `tasks_inventario_idProducto_id_d04a0ba5_fk_tasks_producto_id` (`idProducto_id`);

--
-- Indices de la tabla `tasks_mascota`
--
ALTER TABLE `tasks_mascota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_mascota_idCola_id_d96bd65c_fk_tasks_cola_id` (`idCola_id`),
  ADD KEY `tasks_mascota_idDepartamento_id_30cae8bd_fk_tasks_dep` (`idDepartamento_id`),
  ADD KEY `tasks_mascota_idEdad_id_cbcc0684_fk_tasks_edad_id` (`idEdad_id`),
  ADD KEY `tasks_mascota_idEspecie_id_3fcf8a26_fk_tasks_especie_id` (`idEspecie_id`),
  ADD KEY `tasks_mascota_idEstado_id_16e13044_fk_tasks_estado_id` (`idEstado_id`),
  ADD KEY `tasks_mascota_idOrejas_id_e6d31de9_fk_tasks_orejas_id` (`idOrejas_id`),
  ADD KEY `tasks_mascota_idProvincia_id_43b0f966_fk_tasks_provincia_id` (`idProvincia_id`),
  ADD KEY `tasks_mascota_idRaza_id_22bc74d1_fk_tasks_raza_id` (`idRaza_id`),
  ADD KEY `tasks_mascota_idSexo_id_6f4ef2f7_fk_tasks_sexo_id` (`idSexo_id`),
  ADD KEY `tasks_mascota_idUsuario_id_e915c55a_fk_tasks_usuario_id` (`idUsuario_id`);

--
-- Indices de la tabla `tasks_mensaje`
--
ALTER TABLE `tasks_mensaje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_mensaje_idUsuario_id_e5055580_fk_tasks_usuario_id` (`idUsuario_id`);

--
-- Indices de la tabla `tasks_metodopago`
--
ALTER TABLE `tasks_metodopago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks_orden`
--
ALTER TABLE `tasks_orden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_orden_idDepartamento_id_396a8525_fk_tasks_departamento_id` (`idDepartamento_id`),
  ADD KEY `tasks_orden_idEstado_id_fbceaa87_fk_tasks_estado_id` (`idEstado_id`),
  ADD KEY `tasks_orden_idMetodoPago_id_6ee441ed_fk_tasks_metodopago_id` (`idMetodoPago_id`),
  ADD KEY `tasks_orden_idProvincia_id_55bd8dc0_fk_tasks_provincia_id` (`idProvincia_id`),
  ADD KEY `tasks_orden_idUsuario_id_8026514b_fk_tasks_usuario_id` (`idUsuario_id`);

--
-- Indices de la tabla `tasks_orejas`
--
ALTER TABLE `tasks_orejas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks_producto`
--
ALTER TABLE `tasks_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks_proveedor`
--
ALTER TABLE `tasks_proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks_provincia`
--
ALTER TABLE `tasks_provincia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks_raza`
--
ALTER TABLE `tasks_raza`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks_sexo`
--
ALTER TABLE `tasks_sexo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks_tipomovimiento`
--
ALTER TABLE `tasks_tipomovimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks_usuario`
--
ALTER TABLE `tasks_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `tasks_usuario_idDepartamento_id_4a634964_fk_tasks_dep` (`idDepartamento_id`),
  ADD KEY `tasks_usuario_idProvincia_id_59576327_fk_tasks_provincia_id` (`idProvincia_id`);

--
-- Indices de la tabla `tasks_valorestadoorden`
--
ALTER TABLE `tasks_valorestadoorden`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tasks_carrito`
--
ALTER TABLE `tasks_carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_cola`
--
ALTER TABLE `tasks_cola`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_compra`
--
ALTER TABLE `tasks_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_departamento`
--
ALTER TABLE `tasks_departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_detallecompra`
--
ALTER TABLE `tasks_detallecompra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_detalleorden`
--
ALTER TABLE `tasks_detalleorden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_edad`
--
ALTER TABLE `tasks_edad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_especie`
--
ALTER TABLE `tasks_especie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_estado`
--
ALTER TABLE `tasks_estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_estadoorden`
--
ALTER TABLE `tasks_estadoorden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_inventario`
--
ALTER TABLE `tasks_inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_mascota`
--
ALTER TABLE `tasks_mascota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_mensaje`
--
ALTER TABLE `tasks_mensaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_metodopago`
--
ALTER TABLE `tasks_metodopago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_orden`
--
ALTER TABLE `tasks_orden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_orejas`
--
ALTER TABLE `tasks_orejas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_producto`
--
ALTER TABLE `tasks_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tasks_proveedor`
--
ALTER TABLE `tasks_proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_provincia`
--
ALTER TABLE `tasks_provincia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_raza`
--
ALTER TABLE `tasks_raza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_sexo`
--
ALTER TABLE `tasks_sexo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_tipomovimiento`
--
ALTER TABLE `tasks_tipomovimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_usuario`
--
ALTER TABLE `tasks_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks_valorestadoorden`
--
ALTER TABLE `tasks_valorestadoorden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `tasks_carrito`
--
ALTER TABLE `tasks_carrito`
  ADD CONSTRAINT `tasks_carrito_idProducto_id_4c00e60d_fk_tasks_producto_id` FOREIGN KEY (`idProducto_id`) REFERENCES `tasks_producto` (`id`),
  ADD CONSTRAINT `tasks_carrito_idUsuario_id_ac115d9e_fk_tasks_usuario_id` FOREIGN KEY (`idUsuario_id`) REFERENCES `tasks_usuario` (`id`);

--
-- Filtros para la tabla `tasks_compra`
--
ALTER TABLE `tasks_compra`
  ADD CONSTRAINT `tasks_compra_idProveedor_id_a47501c2_fk_tasks_proveedor_id` FOREIGN KEY (`idProveedor_id`) REFERENCES `tasks_proveedor` (`id`);

--
-- Filtros para la tabla `tasks_detallecompra`
--
ALTER TABLE `tasks_detallecompra`
  ADD CONSTRAINT `tasks_detallecompra_idCompra_id_1b35c029_fk_tasks_compra_id` FOREIGN KEY (`idCompra_id`) REFERENCES `tasks_compra` (`id`),
  ADD CONSTRAINT `tasks_detallecompra_idProducto_id_7ee12331_fk_tasks_producto_id` FOREIGN KEY (`idProducto_id`) REFERENCES `tasks_producto` (`id`);

--
-- Filtros para la tabla `tasks_detalleorden`
--
ALTER TABLE `tasks_detalleorden`
  ADD CONSTRAINT `tasks_detalleorden_idEstado_id_f6c66411_fk_tasks_estado_id` FOREIGN KEY (`idEstado_id`) REFERENCES `tasks_estado` (`id`),
  ADD CONSTRAINT `tasks_detalleorden_idOrden_id_ef5bbc6e_fk_tasks_orden_id` FOREIGN KEY (`idOrden_id`) REFERENCES `tasks_orden` (`id`),
  ADD CONSTRAINT `tasks_detalleorden_idProducto_id_f09904ef_fk_tasks_producto_id` FOREIGN KEY (`idProducto_id`) REFERENCES `tasks_producto` (`id`);

--
-- Filtros para la tabla `tasks_estadoorden`
--
ALTER TABLE `tasks_estadoorden`
  ADD CONSTRAINT `tasks_estadoorden_idEstado_id_139f6836_fk_tasks_estado_id` FOREIGN KEY (`idEstado_id`) REFERENCES `tasks_estado` (`id`);

--
-- Filtros para la tabla `tasks_inventario`
--
ALTER TABLE `tasks_inventario`
  ADD CONSTRAINT `tasks_inventario_idDetalleCompra_id_25358e01_fk_tasks_det` FOREIGN KEY (`idDetalleCompra_id`) REFERENCES `tasks_detallecompra` (`id`),
  ADD CONSTRAINT `tasks_inventario_idDetalleOrden_id_31064dc9_fk_tasks_det` FOREIGN KEY (`idDetalleOrden_id`) REFERENCES `tasks_detalleorden` (`id`),
  ADD CONSTRAINT `tasks_inventario_idProducto_id_d04a0ba5_fk_tasks_producto_id` FOREIGN KEY (`idProducto_id`) REFERENCES `tasks_producto` (`id`);

--
-- Filtros para la tabla `tasks_mascota`
--
ALTER TABLE `tasks_mascota`
  ADD CONSTRAINT `tasks_mascota_idCola_id_d96bd65c_fk_tasks_cola_id` FOREIGN KEY (`idCola_id`) REFERENCES `tasks_cola` (`id`),
  ADD CONSTRAINT `tasks_mascota_idDepartamento_id_30cae8bd_fk_tasks_dep` FOREIGN KEY (`idDepartamento_id`) REFERENCES `tasks_departamento` (`id`),
  ADD CONSTRAINT `tasks_mascota_idEdad_id_cbcc0684_fk_tasks_edad_id` FOREIGN KEY (`idEdad_id`) REFERENCES `tasks_edad` (`id`),
  ADD CONSTRAINT `tasks_mascota_idEspecie_id_3fcf8a26_fk_tasks_especie_id` FOREIGN KEY (`idEspecie_id`) REFERENCES `tasks_especie` (`id`),
  ADD CONSTRAINT `tasks_mascota_idEstado_id_16e13044_fk_tasks_estado_id` FOREIGN KEY (`idEstado_id`) REFERENCES `tasks_estado` (`id`),
  ADD CONSTRAINT `tasks_mascota_idOrejas_id_e6d31de9_fk_tasks_orejas_id` FOREIGN KEY (`idOrejas_id`) REFERENCES `tasks_orejas` (`id`),
  ADD CONSTRAINT `tasks_mascota_idProvincia_id_43b0f966_fk_tasks_provincia_id` FOREIGN KEY (`idProvincia_id`) REFERENCES `tasks_provincia` (`id`),
  ADD CONSTRAINT `tasks_mascota_idRaza_id_22bc74d1_fk_tasks_raza_id` FOREIGN KEY (`idRaza_id`) REFERENCES `tasks_raza` (`id`),
  ADD CONSTRAINT `tasks_mascota_idSexo_id_6f4ef2f7_fk_tasks_sexo_id` FOREIGN KEY (`idSexo_id`) REFERENCES `tasks_sexo` (`id`),
  ADD CONSTRAINT `tasks_mascota_idUsuario_id_e915c55a_fk_tasks_usuario_id` FOREIGN KEY (`idUsuario_id`) REFERENCES `tasks_usuario` (`id`);

--
-- Filtros para la tabla `tasks_mensaje`
--
ALTER TABLE `tasks_mensaje`
  ADD CONSTRAINT `tasks_mensaje_idUsuario_id_e5055580_fk_tasks_usuario_id` FOREIGN KEY (`idUsuario_id`) REFERENCES `tasks_usuario` (`id`);

--
-- Filtros para la tabla `tasks_orden`
--
ALTER TABLE `tasks_orden`
  ADD CONSTRAINT `tasks_orden_idDepartamento_id_396a8525_fk_tasks_departamento_id` FOREIGN KEY (`idDepartamento_id`) REFERENCES `tasks_departamento` (`id`),
  ADD CONSTRAINT `tasks_orden_idEstado_id_fbceaa87_fk_tasks_estado_id` FOREIGN KEY (`idEstado_id`) REFERENCES `tasks_estado` (`id`),
  ADD CONSTRAINT `tasks_orden_idMetodoPago_id_6ee441ed_fk_tasks_metodopago_id` FOREIGN KEY (`idMetodoPago_id`) REFERENCES `tasks_metodopago` (`id`),
  ADD CONSTRAINT `tasks_orden_idProvincia_id_55bd8dc0_fk_tasks_provincia_id` FOREIGN KEY (`idProvincia_id`) REFERENCES `tasks_provincia` (`id`),
  ADD CONSTRAINT `tasks_orden_idUsuario_id_8026514b_fk_tasks_usuario_id` FOREIGN KEY (`idUsuario_id`) REFERENCES `tasks_usuario` (`id`);

--
-- Filtros para la tabla `tasks_usuario`
--
ALTER TABLE `tasks_usuario`
  ADD CONSTRAINT `tasks_usuario_idDepartamento_id_4a634964_fk_tasks_dep` FOREIGN KEY (`idDepartamento_id`) REFERENCES `tasks_departamento` (`id`),
  ADD CONSTRAINT `tasks_usuario_idProvincia_id_59576327_fk_tasks_provincia_id` FOREIGN KEY (`idProvincia_id`) REFERENCES `tasks_provincia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
