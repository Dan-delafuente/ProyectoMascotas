-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2023 a las 10:38:13
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webmasc`
--
CREATE DATABASE IF NOT EXISTS `webmasc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webmasc`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`, `language_chooser_control`, `list_filter_highlight`, `list_filter_removal_links`, `show_fieldsets_as_tabs`, `show_inlines_as_tabs`, `css_generic_link_active_color`) VALUES
(1, 'Django', 1, 'Administración de Django', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1, 'default-select', 1, 0, 0, 0, '#29B864');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add tipo producto', 8, 'add_tipoproducto'),
(30, 'Can change tipo producto', 8, 'change_tipoproducto'),
(31, 'Can delete tipo producto', 8, 'delete_tipoproducto'),
(32, 'Can view tipo producto', 8, 'view_tipoproducto'),
(33, 'Can add producto', 9, 'add_producto'),
(34, 'Can change producto', 9, 'change_producto'),
(35, 'Can delete producto', 9, 'delete_producto'),
(36, 'Can view producto', 9, 'view_producto'),
(37, 'Can add cuenta', 10, 'add_cuenta'),
(38, 'Can change cuenta', 10, 'change_cuenta'),
(39, 'Can delete cuenta', 10, 'delete_cuenta'),
(40, 'Can view cuenta', 10, 'view_cuenta');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$zWAIH9UaFPDK$ONjfwlR7z2Xt8bcZGZIUoVNHE1QdDFh4SWuh2h5DmHo=', '2023-06-05 17:49:49.661109', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-06-05 17:00:59.853383'),
(2, 'pbkdf2_sha256$216000$GTewTtTP0JbY$d1gfap3wMNwDrS+wZFYnnnjnT3mZSMalqD6dAkAHi4w=', NULL, 0, 'Jose', '', '', '', 0, 1, '2023-06-05 17:05:03.207793');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_cuenta`
--

CREATE TABLE `core_cuenta` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `contraseña` varchar(10) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_producto`
--

CREATE TABLE `core_producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_producto`
--

INSERT INTO `core_producto` (`id`, `nombre`, `precio`, `stock`, `descripcion`, `imagen`, `tipo_id`) VALUES
(2, 'Lomas Reptile Sticks 300g', 9990, 10, 'Alimento para Tortugas Acuaticas Lomas Reptile Sticks Premium de 300g.', 'ali1_kxEjIis.png', 3),
(3, 'Cunipic Parrots Complete Food', 14990, 10, 'Alimento para Loros Cunipic Complete Food de 3kg.', 'ali2_F6YmgXA.png', 3),
(4, 'Mazuri Hamster & Gerbil Diet', 12990, 10, 'Alimento Mazuri para Hamsters y Jerbos de 350g', 'ali3_uwSJkW9.png', 3),
(5, 'Jaula Castillo para Hamster', 24990, 10, 'Jaula con Castillo y Tobogan para Hamster.', 'ban5_8YkIyO5.png', 3),
(6, 'Acuario para Peces', 24990, 10, 'Acuario para Peces Tamaño XL.', 'ban2_IhIUiZs.png', 3),
(7, 'Pack Columpio para Pajaros', 12990, 10, 'Pack de Columpios y Juguetes para Pajaros.', 'cor1_bLqYoko.png', 3),
(8, 'Chaleco con Correa para Conejo', 14990, 10, 'Chaleco con Correa de color Rojo y Azul para Conejo.', 'jug1_3WJuhVK.png', 3),
(9, 'Chaleco para Langosta', 999999, 1, 'Chaleco de Lana para Langosta.', 'jug_UiIOqkk.png', 3),
(10, 'Chaleco para Serpiente', 999999, 1, 'Chaleco Navideño para Serpiente.', 'jug5_ZvEC5vD.png', 3),
(11, 'Whiskas Sabor Carne 1kg', 14990, 10, 'Alimento Whiskas Sabor Carne de 1kg para Gatos de 1 año o más.', 'ali1_fIoopXd.png', 2),
(12, 'ChampionCat Adulto 8kg', 24990, 10, 'Alimento ChampionCat Sabor Pescado de 8kg para Adultos.', 'ali2_L7e7nKD.png', 2),
(13, 'ChampionCat Trocitos 100g', 1990, 10, 'Alimento ChampionCat Trocitos en Salsa sabor Carne 100g.', 'ali4_xPKuHVt.png', 2),
(14, 'Castillo Rascador para Gato.', 14490, 10, 'Castillo Rascador para Gato Color Beige.', 'jug5_sfyw9IS.png', 2),
(15, 'Juguete Ratón para Gato', 4990, 10, 'Raton Estimulante para Gato', 'juguete_gato_raton_DDznjvC.png', 2),
(16, 'Mochila Astronauta Gato', 19990, 10, 'Mochila Astronauta Transportadora con Variedad de Colores', 'moc3_UMNV2pR.png', 2),
(17, 'Chaleco Frutilla Gato', 14990, 10, 'Chalequito con Diseño de Frutilla para Gato.', 'rop3_Yd65cOy.png', 2),
(18, 'Chaleco Navideño para Gato', 14990, 10, 'Chaleco con Diseño Navideño para Gato.', 'rop5_jPHUvzM.png', 2),
(19, 'Chaleco para Gato', 12490, 10, 'Chaleco para Gato con Variedad de Colores.', 'rop2_DSv21wW.png', 2),
(20, 'ChampionDog Premium 3kg', 14990, 10, 'Alimento ChampionDog Premium Sabor Carne, Pollo y Leche de 3kg para Cachorros.', 'ali3_LmtLCIw.png', 1),
(21, 'MasterDog Dog Lover 15kg', 29990, 10, 'Alimento MasterDog Dog Lover Adulto Sabor Carne de 15kg.', 'ali2_Adk8Yxr.png', 1),
(22, 'Purina DogChow Minis 3kg', 14990, 10, 'Alimento DogChow Extralife Sabor Pollo y Pavo para Minis.', 'ali5_axdoBVS.png', 1),
(23, 'Bandana Celeste Perritos', 2990, 10, 'Bandana Celeste con Diseño de Adorables Perritos.', 'ban1_Koum7bs.png', 1),
(24, 'Bandana Morada Brujita', 3990, 10, 'Bandana Morada con Diseño de Brujita.', 'ban5_2hCE7LK.png', 1),
(25, 'Correa Retractil Azul', 9990, 10, 'Correa Retractil color Azul para Perros.', 'cor2_49tvjY8.png', 1),
(26, 'Correa Retractil Rosa', 9990, 10, 'Correa Retractil color Rosa para Perros.', 'cor3_7zqv2dY.png', 1),
(27, 'Collar Identificador Perro', 4990, 10, 'Collar Identificador Para Perro con variedad de Colores.', 'identificador_A7jUjfH.png', 1),
(28, 'Pack Juguetes para Perro', 14990, 10, 'Pack de Juguetes Mordedores para Perro', 'jug3_rrPQr4E.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tipoproducto`
--

CREATE TABLE `core_tipoproducto` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_tipoproducto`
--

INSERT INTO `core_tipoproducto` (`id`, `descripcion`) VALUES
(1, 'Perro'),
(2, 'Gato'),
(3, 'Exotico');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-05 17:05:03.298115', '2', 'Jose', 1, '[{\"added\": {}}]', 5, 1),
(2, '2023-06-05 17:05:48.601732', '1', 'Perro', 1, '[{\"added\": {}}]', 8, 1),
(3, '2023-06-05 17:05:51.445139', '2', 'Gato', 1, '[{\"added\": {}}]', 8, 1),
(4, '2023-06-05 17:05:57.049111', '3', 'Exotico', 1, '[{\"added\": {}}]', 8, 1),
(5, '2023-06-05 17:06:22.993005', '1', 'Juguete gato', 1, '[{\"added\": {}}]', 9, 1),
(6, '2023-06-05 17:07:04.252638', '1', 'Juguete gato', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 9, 1),
(7, '2023-06-05 17:07:25.303684', '1', 'Juguete gato', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 9, 1),
(8, '2023-06-05 17:07:38.138754', '1', 'Juguete gato', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 9, 1),
(9, '2023-06-05 17:07:50.024069', '1', 'Juguete gato', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 9, 1),
(10, '2023-06-05 17:07:59.596314', '1', 'Juguete gato', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 9, 1),
(11, '2023-06-05 17:08:06.257210', '1', 'Juguete gato', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 9, 1),
(12, '2023-06-05 17:08:14.137673', '1', 'Juguete gato', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 9, 1),
(13, '2023-06-05 17:10:06.218912', '1', 'Juguete gato', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 9, 1),
(14, '2023-06-06 08:11:58.902363', '1', 'Juguete gato', 3, '', 9, 1),
(15, '2023-06-06 08:14:35.627467', '2', 'Lomas Reptile Sticks 300g', 1, '[{\"added\": {}}]', 9, 1),
(16, '2023-06-06 08:15:02.525443', '3', 'Cunipic Parrots Complete Food', 1, '[{\"added\": {}}]', 9, 1),
(17, '2023-06-06 08:15:26.527775', '4', 'Mazuri Hamster & Gerbil Diet', 1, '[{\"added\": {}}]', 9, 1),
(18, '2023-06-06 08:16:34.601833', '5', 'Jaula Castillo para Hamster', 1, '[{\"added\": {}}]', 9, 1),
(19, '2023-06-06 08:17:06.861241', '6', 'Acuario para Peces', 1, '[{\"added\": {}}]', 9, 1),
(20, '2023-06-06 08:18:43.819074', '7', 'Pack Columpio para Pajaros', 1, '[{\"added\": {}}]', 9, 1),
(21, '2023-06-06 08:19:12.516557', '8', 'Chaleco con Correa para Conejo', 1, '[{\"added\": {}}]', 9, 1),
(22, '2023-06-06 08:19:50.491788', '9', 'Chaleco para Langosta', 1, '[{\"added\": {}}]', 9, 1),
(23, '2023-06-06 08:20:07.956541', '10', 'Chaleco para Serpiente', 1, '[{\"added\": {}}]', 9, 1),
(24, '2023-06-06 08:20:43.521069', '11', 'Whiskas Sabor Carne 1kg', 1, '[{\"added\": {}}]', 9, 1),
(25, '2023-06-06 08:21:24.019280', '12', 'ChampionCat Adulto 8kg', 1, '[{\"added\": {}}]', 9, 1),
(26, '2023-06-06 08:21:49.909205', '13', 'ChampionCat Trocitos 100g', 1, '[{\"added\": {}}]', 9, 1),
(27, '2023-06-06 08:22:18.460349', '14', 'Castillo Rascador para Gato.', 1, '[{\"added\": {}}]', 9, 1),
(28, '2023-06-06 08:23:15.209960', '15', 'Juguete Ratón para Gato', 1, '[{\"added\": {}}]', 9, 1),
(29, '2023-06-06 08:24:27.943466', '16', 'Mochila Astronauta Gato', 1, '[{\"added\": {}}]', 9, 1),
(30, '2023-06-06 08:24:57.672744', '17', 'Chaleco Frutilla Gato', 1, '[{\"added\": {}}]', 9, 1),
(31, '2023-06-06 08:25:19.014733', '18', 'Chaleco Navideño para Gato', 1, '[{\"added\": {}}]', 9, 1),
(32, '2023-06-06 08:26:29.889699', '19', 'Chaleco para Gato', 1, '[{\"added\": {}}]', 9, 1),
(33, '2023-06-06 08:29:26.351083', '20', 'ChampionDog Premium 3kg', 1, '[{\"added\": {}}]', 9, 1),
(34, '2023-06-06 08:29:58.807900', '21', 'MasterDog Dog Lover 15kg', 1, '[{\"added\": {}}]', 9, 1),
(35, '2023-06-06 08:30:25.612752', '22', 'Purina DogChow Minis 3kg', 1, '[{\"added\": {}}]', 9, 1),
(36, '2023-06-06 08:30:58.212120', '23', 'Bandana Celeste Perritos', 1, '[{\"added\": {}}]', 9, 1),
(37, '2023-06-06 08:31:44.397991', '24', 'Bandana Morada Brujita', 1, '[{\"added\": {}}]', 9, 1),
(38, '2023-06-06 08:32:48.239582', '25', 'Correa Retractil Azul', 1, '[{\"added\": {}}]', 9, 1),
(39, '2023-06-06 08:33:18.281590', '26', 'Correa Retractil Rosa', 1, '[{\"added\": {}}]', 9, 1),
(40, '2023-06-06 08:34:29.736153', '27', 'Collar Identificador Perro', 1, '[{\"added\": {}}]', 9, 1),
(41, '2023-06-06 08:35:10.468399', '28', 'Pack Juguetes para Perro', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(10, 'core', 'cuenta'),
(9, 'core', 'producto'),
(8, 'core', 'tipoproducto'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-05 16:57:25.771481'),
(2, 'auth', '0001_initial', '2023-06-05 16:57:25.863586'),
(3, 'admin', '0001_initial', '2023-06-05 16:57:26.080253'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-05 16:57:26.136572'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-05 16:57:26.144574'),
(6, 'admin_interface', '0001_initial', '2023-06-05 16:57:26.169305'),
(7, 'admin_interface', '0002_add_related_modal', '2023-06-05 16:57:26.236563'),
(8, 'admin_interface', '0003_add_logo_color', '2023-06-05 16:57:26.266436'),
(9, 'admin_interface', '0004_rename_title_color', '2023-06-05 16:57:26.299577'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2023-06-05 16:57:26.340304'),
(11, 'admin_interface', '0006_bytes_to_str', '2023-06-05 16:57:26.398202'),
(12, 'admin_interface', '0007_add_favicon', '2023-06-05 16:57:26.418133'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2023-06-05 16:57:26.446180'),
(14, 'admin_interface', '0009_add_enviroment', '2023-06-05 16:57:26.486840'),
(15, 'admin_interface', '0010_add_localization', '2023-06-05 16:57:26.502694'),
(16, 'admin_interface', '0011_add_environment_options', '2023-06-05 16:57:26.588902'),
(17, 'admin_interface', '0012_update_verbose_names', '2023-06-05 16:57:26.600964'),
(18, 'admin_interface', '0013_add_related_modal_close_button', '2023-06-05 16:57:26.625916'),
(19, 'admin_interface', '0014_name_unique', '2023-06-05 16:57:26.637918'),
(20, 'admin_interface', '0015_add_language_chooser_active', '2023-06-05 16:57:26.660484'),
(21, 'admin_interface', '0016_add_language_chooser_display', '2023-06-05 16:57:26.683495'),
(22, 'admin_interface', '0017_change_list_filter_dropdown', '2023-06-05 16:57:26.687614'),
(23, 'admin_interface', '0018_theme_list_filter_sticky', '2023-06-05 16:57:26.708374'),
(24, 'admin_interface', '0019_add_form_sticky', '2023-06-05 16:57:26.747227'),
(25, 'admin_interface', '0020_module_selected_colors', '2023-06-05 16:57:26.796247'),
(26, 'admin_interface', '0021_file_extension_validator', '2023-06-05 16:57:26.806421'),
(27, 'admin_interface', '0022_add_logo_max_width_and_height', '2023-06-05 16:57:26.853332'),
(28, 'admin_interface', '0023_theme_foldable_apps', '2023-06-05 16:57:26.877753'),
(29, 'admin_interface', '0024_remove_theme_css', '2023-06-05 16:57:26.892765'),
(30, 'admin_interface', '0025_theme_language_chooser_control', '2023-06-05 16:57:26.916742'),
(31, 'admin_interface', '0026_theme_list_filter_highlight', '2023-06-05 16:57:26.939855'),
(32, 'admin_interface', '0027_theme_list_filter_removal_links', '2023-06-05 16:57:26.962228'),
(33, 'admin_interface', '0028_theme_show_fieldsets_as_tabs_and_more', '2023-06-05 16:57:27.003658'),
(34, 'admin_interface', '0029_theme_css_generic_link_active_color', '2023-06-05 16:57:27.025635'),
(35, 'contenttypes', '0002_remove_content_type_name', '2023-06-05 16:57:27.076526'),
(36, 'auth', '0002_alter_permission_name_max_length', '2023-06-05 16:57:27.110888'),
(37, 'auth', '0003_alter_user_email_max_length', '2023-06-05 16:57:27.129719'),
(38, 'auth', '0004_alter_user_username_opts', '2023-06-05 16:57:27.136720'),
(39, 'auth', '0005_alter_user_last_login_null', '2023-06-05 16:57:27.168737'),
(40, 'auth', '0006_require_contenttypes_0002', '2023-06-05 16:57:27.170737'),
(41, 'auth', '0007_alter_validators_add_error_messages', '2023-06-05 16:57:27.178834'),
(42, 'auth', '0008_alter_user_username_max_length', '2023-06-05 16:57:27.194457'),
(43, 'auth', '0009_alter_user_last_name_max_length', '2023-06-05 16:57:27.212590'),
(44, 'auth', '0010_alter_group_name_max_length', '2023-06-05 16:57:27.228829'),
(45, 'auth', '0011_update_proxy_permissions', '2023-06-05 16:57:27.239334'),
(46, 'auth', '0012_alter_user_first_name_max_length', '2023-06-05 16:57:27.257591'),
(47, 'core', '0001_initial', '2023-06-05 16:57:27.279486'),
(48, 'core', '0002_producto_created_at', '2023-06-05 16:57:27.324668'),
(49, 'core', '0003_productocarrito', '2023-06-05 16:57:27.336011'),
(50, 'core', '0004_auto_20230519_2108', '2023-06-05 16:57:27.352991'),
(51, 'core', '0005_auto_20230519_2202', '2023-06-05 16:57:27.425663'),
(52, 'core', '0006_auto_20230522_1735', '2023-06-05 16:57:27.548017'),
(53, 'core', '0007_cuenta', '2023-06-05 16:57:27.562345'),
(54, 'core', '0008_auto_20230531_1756', '2023-06-05 16:57:27.584249'),
(55, 'core', '0009_auto_20230531_1814', '2023-06-05 16:57:27.589250'),
(56, 'sessions', '0001_initial', '2023-06-05 16:57:27.601253');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2ddnhcmtg9co4dxngfur525diybdcw2g', '.eJxVjEEOgyAQRe_CuiHAIILL7nsGMzBjtW00AVwZ715NXLTb_95_m-hxrWO_Fs79RKITWtx-t4jpzfMJ6IXzc5FpmWueojwVedEiHwvx5365f4ERy3i8vW-D8dR4NuBCUugsueBiIu8NRGVdUJbZGEgMDGiYcNDBqlYTNM1wRBPmKrpt37_8YTqf:1q6MRf:2MyIQ7JsSkTTxuH9-6xTym3GQrC-k2603ACi8Oe8yWw', '2023-06-20 02:29:15.726197');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

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
-- Indices de la tabla `core_cuenta`
--
ALTER TABLE `core_cuenta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` (`tipo_id`);

--
-- Indices de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_cuenta`
--
ALTER TABLE `core_cuenta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

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
-- Filtros para la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD CONSTRAINT `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` FOREIGN KEY (`tipo_id`) REFERENCES `core_tipoproducto` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
