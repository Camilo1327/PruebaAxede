-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-08-2024 a las 22:10:48
-- Versión del servidor: 9.0.1
-- Versión de PHP: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbPrueba`
--
CREATE DATABASE IF NOT EXISTS `dbPrueba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `dbPrueba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(25, 'Can add sede', 7, 'add_sede'),
(26, 'Can change sede', 7, 'change_sede'),
(27, 'Can delete sede', 7, 'delete_sede'),
(28, 'Can view sede', 7, 'view_sede'),
(29, 'Can add temporada', 8, 'add_temporada'),
(30, 'Can change temporada', 8, 'change_temporada'),
(31, 'Can delete temporada', 8, 'delete_temporada'),
(32, 'Can view temporada', 8, 'view_temporada'),
(33, 'Can add habitacion', 9, 'add_habitacion'),
(34, 'Can change habitacion', 9, 'change_habitacion'),
(35, 'Can delete habitacion', 9, 'delete_habitacion'),
(36, 'Can view habitacion', 9, 'view_habitacion'),
(37, 'Can add reserva', 10, 'add_reserva'),
(38, 'Can change reserva', 10, 'change_reserva'),
(39, 'Can delete reserva', 10, 'delete_reserva'),
(40, 'Can view reserva', 10, 'view_reserva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'reservas', 'habitacion'),
(10, 'reservas', 'reserva'),
(7, 'reservas', 'sede'),
(8, 'reservas', 'temporada'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-08-16 22:21:00.503258'),
(2, 'auth', '0001_initial', '2024-08-16 22:21:00.619572'),
(3, 'admin', '0001_initial', '2024-08-16 22:21:00.648683'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-08-16 22:21:00.652896'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-08-16 22:21:00.655662'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-08-16 22:21:00.677571'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-08-16 22:21:00.698986'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-08-16 22:21:00.707340'),
(9, 'auth', '0004_alter_user_username_opts', '2024-08-16 22:21:00.710367'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-08-16 22:21:00.722778'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-08-16 22:21:00.723342'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-08-16 22:21:00.726536'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-08-16 22:21:00.741287'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-08-16 22:21:00.756506'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-08-16 22:21:00.763225'),
(16, 'auth', '0011_update_proxy_permissions', '2024-08-16 22:21:00.767421'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-08-16 22:21:00.781752'),
(18, 'reservas', '0001_initial', '2024-08-16 22:21:00.803081'),
(19, 'sessions', '0001_initial', '2024-08-16 22:21:00.809009'),
(20, 'reservas', '0002_reserva', '2024-08-16 23:30:47.464782');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_habitacion`
--

CREATE TABLE `reservas_habitacion` (
  `IdHabitacion` int NOT NULL,
  `TipoHabitacion` varchar(10) NOT NULL,
  `CupoMax` int NOT NULL,
  `Ocupado` varchar(3) NOT NULL,
  `TarifaTAlta` varchar(10) NOT NULL,
  `TarifaTBaja` varchar(10) NOT NULL,
  `Sede_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `reservas_habitacion`
--

INSERT INTO `reservas_habitacion` (`IdHabitacion`, `TipoHabitacion`, `CupoMax`, `Ocupado`, `TarifaTAlta`, `TarifaTBaja`, `Sede_id`) VALUES
(1, 'premium', 6, 'no', '220000', '170000', 1),
(2, 'premium', 6, 'no', '220000', '170000', 1),
(3, 'premium', 6, 'no', '220000', '170000', 1),
(4, 'premium', 6, 'no', '220000', '170000', 1),
(5, 'premium', 6, 'no', '220000', '170000', 1),
(6, 'premium', 6, 'no', '220000', '170000', 1),
(7, 'premium', 6, 'no', '220000', '170000', 1),
(8, 'premium', 6, 'no', '220000', '170000', 1),
(9, 'premium', 6, 'no', '220000', '170000', 1),
(10, 'premium', 6, 'no', '220000', '170000', 1),
(11, 'premium', 6, 'no', '220000', '170000', 1),
(12, 'premium', 6, 'no', '220000', '170000', 1),
(13, 'premium', 6, 'no', '220000', '170000', 1),
(14, 'premium', 6, 'no', '220000', '170000', 1),
(15, 'premium', 6, 'no', '220000', '170000', 1),
(16, 'premium', 6, 'no', '220000', '170000', 1),
(17, 'premium', 6, 'no', '220000', '170000', 1),
(18, 'premium', 6, 'no', '220000', '170000', 1),
(19, 'premium', 6, 'no', '220000', '170000', 1),
(20, 'premium', 6, 'no', '220000', '170000', 1),
(21, 'vip', 6, 'no', '300000', '250000', 1),
(22, 'vip', 6, 'no', '300000', '250000', 1),
(23, 'estandar', 8, 'no', '150000', '120000', 2),
(24, 'estandar', 8, 'no', '150000', '120000', 2),
(25, 'estandar', 8, 'no', '150000', '120000', 2),
(26, 'estandar', 8, 'no', '150000', '120000', 2),
(27, 'estandar', 8, 'no', '150000', '120000', 2),
(28, 'estandar', 8, 'no', '150000', '120000', 2),
(29, 'estandar', 8, 'no', '150000', '120000', 2),
(30, 'estandar', 8, 'no', '150000', '120000', 2),
(31, 'estandar', 8, 'no', '150000', '120000', 2),
(32, 'estandar', 8, 'no', '150000', '120000', 2),
(33, 'premium', 8, 'no', '250000', '200000', 2),
(34, 'estandar', 6, 'no', '120000', '90000', 3),
(35, 'estandar', 6, 'no', '120000', '90000', 3),
(36, 'estandar', 6, 'no', '120000', '90000', 3),
(37, 'estandar', 6, 'no', '120000', '90000', 3),
(38, 'estandar', 6, 'no', '120000', '90000', 3),
(39, 'estandar', 6, 'no', '120000', '90000', 3),
(40, 'estandar', 6, 'no', '120000', '90000', 3),
(41, 'estandar', 6, 'no', '120000', '90000', 3),
(42, 'estandar', 6, 'no', '120000', '90000', 3),
(43, 'estandar', 6, 'no', '120000', '90000', 3),
(44, 'estandar', 6, 'no', '120000', '90000', 3),
(45, 'estandar', 6, 'no', '120000', '90000', 3),
(46, 'estandar', 6, 'no', '120000', '90000', 3),
(47, 'estandar', 6, 'no', '120000', '90000', 3),
(48, 'estandar', 6, 'no', '120000', '90000', 3),
(49, 'estandar', 6, 'no', '120000', '90000', 3),
(50, 'estandar', 6, 'no', '120000', '90000', 3),
(51, 'estandar', 6, 'no', '120000', '90000', 3),
(52, 'estandar', 6, 'no', '120000', '90000', 3),
(53, 'estandar', 6, 'no', '120000', '90000', 3),
(54, 'premium', 6, 'no', '200000', '150000', 3),
(55, 'premium', 6, 'no', '200000', '150000', 3),
(56, 'premium', 6, 'no', '200000', '150000', 3),
(57, 'premium', 6, 'no', '200000', '150000', 3),
(58, 'premium', 6, 'no', '200000', '150000', 3),
(59, 'premium', 6, 'no', '200000', '150000', 3),
(60, 'premium', 6, 'no', '200000', '150000', 3),
(61, 'premium', 6, 'no', '200000', '150000', 3),
(62, 'premium', 6, 'no', '200000', '150000', 3),
(63, 'premium', 6, 'no', '200000', '150000', 3),
(64, 'premium', 6, 'no', '200000', '150000', 3),
(65, 'premium', 6, 'no', '200000', '150000', 3),
(66, 'premium', 6, 'no', '200000', '150000', 3),
(67, 'premium', 6, 'no', '200000', '150000', 3),
(68, 'premium', 6, 'no', '200000', '150000', 3),
(69, 'premium', 6, 'no', '200000', '150000', 3),
(70, 'premium', 6, 'no', '200000', '150000', 3),
(71, 'premium', 6, 'no', '200000', '150000', 3),
(72, 'premium', 6, 'no', '200000', '150000', 3),
(73, 'premium', 6, 'no', '200000', '150000', 3),
(74, 'vip', 6, 'no', '300000', '260000', 3),
(75, 'vip', 6, 'no', '300000', '260000', 3),
(76, 'estandar', 4, 'no', '150000', '110000', 4),
(77, 'estandar', 4, 'no', '150000', '110000', 4),
(78, 'estandar', 4, 'no', '150000', '110000', 4),
(79, 'estandar', 4, 'no', '150000', '110000', 4),
(80, 'estandar', 4, 'no', '150000', '110000', 4),
(81, 'estandar', 4, 'no', '150000', '110000', 4),
(82, 'estandar', 4, 'no', '150000', '110000', 4),
(83, 'estandar', 4, 'no', '150000', '110000', 4),
(84, 'estandar', 4, 'no', '150000', '110000', 4),
(85, 'estandar', 4, 'no', '150000', '110000', 4),
(86, 'estandar', 4, 'no', '150000', '110000', 4),
(87, 'estandar', 4, 'no', '150000', '110000', 4),
(88, 'estandar', 4, 'no', '150000', '110000', 4),
(89, 'estandar', 4, 'no', '150000', '110000', 4),
(90, 'estandar', 4, 'no', '150000', '110000', 4),
(91, 'estandar', 4, 'no', '150000', '110000', 4),
(92, 'estandar', 4, 'no', '150000', '110000', 4),
(93, 'estandar', 4, 'no', '150000', '110000', 4),
(94, 'estandar', 4, 'no', '150000', '110000', 4),
(95, 'estandar', 4, 'no', '150000', '110000', 4),
(96, 'estandar', 4, 'no', '150000', '110000', 4),
(97, 'estandar', 4, 'no', '150000', '110000', 4),
(98, 'estandar', 4, 'no', '150000', '110000', 4),
(99, 'estandar', 4, 'no', '150000', '110000', 4),
(100, 'estandar', 4, 'no', '150000', '110000', 4),
(101, 'estandar', 4, 'no', '150000', '110000', 4),
(102, 'estandar', 4, 'no', '150000', '110000', 4),
(103, 'estandar', 4, 'no', '150000', '110000', 4),
(104, 'estandar', 4, 'no', '150000', '110000', 4),
(105, 'estandar', 4, 'no', '150000', '110000', 4),
(106, 'premium', 4, 'no', '190000', '150000', 4),
(107, 'premium', 4, 'no', '190000', '150000', 4),
(108, 'premium', 4, 'no', '190000', '150000', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_reserva`
--

CREATE TABLE `reservas_reserva` (
  `id` bigint NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaFin` date NOT NULL,
  `NumPersonas` int NOT NULL,
  `TarifaTotal` int NOT NULL,
  `Habitacion_id` int NOT NULL,
  `Sede_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_sede`
--

CREATE TABLE `reservas_sede` (
  `IdSede` int NOT NULL,
  `NomSede` varchar(20) NOT NULL,
  `CupoMaximo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `reservas_sede`
--

INSERT INTO `reservas_sede` (`IdSede`, `NomSede`, `CupoMaximo`) VALUES
(1, 'Cali', 150),
(2, 'Cartagena', 100),
(3, 'Bogotá', 260),
(4, 'Barranquilla', 130);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_temporada`
--

CREATE TABLE `reservas_temporada` (
  `id` bigint NOT NULL,
  `TtipoTemporada` varchar(6) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `reservas_temporada`
--

INSERT INTO `reservas_temporada` (`id`, `TtipoTemporada`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 'alta', '2024-08-24', '2024-08-30'),
(2, 'baja', '2024-09-01', '2024-09-30'),
(3, 'alta', '2024-12-01', '2024-12-31');

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
-- Indices de la tabla `reservas_habitacion`
--
ALTER TABLE `reservas_habitacion`
  ADD PRIMARY KEY (`IdHabitacion`),
  ADD KEY `reservas_habitacion_Sede_id_33d1fee4_fk_reservas_sede_IdSede` (`Sede_id`);

--
-- Indices de la tabla `reservas_reserva`
--
ALTER TABLE `reservas_reserva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservas_reserva_Habitacion_id_aa9f5470_fk_reservas_` (`Habitacion_id`),
  ADD KEY `reservas_reserva_Sede_id_0ff37161_fk_reservas_sede_IdSede` (`Sede_id`);

--
-- Indices de la tabla `reservas_sede`
--
ALTER TABLE `reservas_sede`
  ADD PRIMARY KEY (`IdSede`);

--
-- Indices de la tabla `reservas_temporada`
--
ALTER TABLE `reservas_temporada`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `reservas_habitacion`
--
ALTER TABLE `reservas_habitacion`
  MODIFY `IdHabitacion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de la tabla `reservas_reserva`
--
ALTER TABLE `reservas_reserva`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservas_sede`
--
ALTER TABLE `reservas_sede`
  MODIFY `IdSede` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `reservas_temporada`
--
ALTER TABLE `reservas_temporada`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Filtros para la tabla `reservas_habitacion`
--
ALTER TABLE `reservas_habitacion`
  ADD CONSTRAINT `reservas_habitacion_Sede_id_33d1fee4_fk_reservas_sede_IdSede` FOREIGN KEY (`Sede_id`) REFERENCES `reservas_sede` (`IdSede`);

--
-- Filtros para la tabla `reservas_reserva`
--
ALTER TABLE `reservas_reserva`
  ADD CONSTRAINT `reservas_reserva_Habitacion_id_aa9f5470_fk_reservas_` FOREIGN KEY (`Habitacion_id`) REFERENCES `reservas_habitacion` (`IdHabitacion`),
  ADD CONSTRAINT `reservas_reserva_Sede_id_0ff37161_fk_reservas_sede_IdSede` FOREIGN KEY (`Sede_id`) REFERENCES `reservas_sede` (`IdSede`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
