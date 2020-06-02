-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2020 a las 01:09:48
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webplayground`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

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
(25, 'Can add página', 7, 'add_page'),
(26, 'Can change página', 7, 'change_page'),
(27, 'Can delete página', 7, 'delete_page'),
(28, 'Can view página', 7, 'view_page'),
(29, 'Can add profile', 8, 'add_profile'),
(30, 'Can change profile', 8, 'change_profile'),
(31, 'Can delete profile', 8, 'delete_profile'),
(32, 'Can view profile', 8, 'view_profile'),
(33, 'Can add thread', 9, 'add_thread'),
(34, 'Can change thread', 9, 'change_thread'),
(35, 'Can delete thread', 9, 'delete_thread'),
(36, 'Can view thread', 9, 'view_thread'),
(37, 'Can add message', 10, 'add_message'),
(38, 'Can change message', 10, 'change_message'),
(39, 'Can delete message', 10, 'delete_message'),
(40, 'Can view message', 10, 'view_message');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$8FyTTj9AHwH6$yRyy26O9kowpqXCQGLuRw+kK9BobfMyayHhFTABFjXQ=', '2020-06-02 22:56:15.601973', 1, 'blazter', '', '', 'mario@gmail.com', 1, 1, '2020-06-01 02:11:07.711563'),
(12, 'pbkdf2_sha256$180000$QXgB3LaUrvkT$zPjpkoDotOyaoRwrY/xenExMQnX7GamD5MFQxrwyIjo=', '2020-06-02 22:31:31.383974', 0, 'Messi', '', '', 'lionelMessi@gmail.com', 0, 1, '2020-06-02 21:43:56.271203'),
(13, 'pbkdf2_sha256$180000$XqFSr73XeaQo$Z44UXl1p8IoOXTKk+Vo7rkddu1Cz4miJw19JrnZMcq4=', '2020-06-02 22:34:00.870785', 0, 'Ronaldo', '', '', 'cr7@gmail.com', 0, 1, '2020-06-02 21:48:21.952207'),
(14, 'pbkdf2_sha256$180000$YUbTBkt7LjEH$Q4LGL7lsF8pyOqAYrmP0tmgkui3NQA5KS334blJGHzY=', '2020-06-02 21:53:14.819876', 0, 'Neymar', '', '', 'neymarJr@gmail.com', 0, 1, '2020-06-02 21:53:07.112791'),
(15, 'pbkdf2_sha256$180000$PN4JjXASmkAS$6Przdb/GTiD68r3TdsxY0Jmu+Ao5J9o+6iwklEB3FL4=', '2020-06-02 21:57:16.734486', 0, 'Dybala', '', '', 'laJoyaDybala@gmail.com', 0, 1, '2020-06-02 21:57:11.409904'),
(16, 'pbkdf2_sha256$180000$CCuoU8YqeYIp$WiY2G6eWIBdC5ZmNPlcINsUiUw5+8a0oH+KkBA22XVo=', '2020-06-02 22:34:46.331869', 0, 'Suarez', '', '', 'luchoSuarez@gmail.com', 0, 1, '2020-06-02 22:00:42.941330'),
(17, 'pbkdf2_sha256$180000$CRYtBPMlt2PI$Gxcx+Sx7XTwJXkPx9EdnRxgy5E2UtwGkhLJwmb7Nulo=', '2020-06-02 22:32:26.003502', 0, 'Gignac', '', '', 'andreGignac@gmail.com', 0, 1, '2020-06-02 22:05:16.281275'),
(18, 'pbkdf2_sha256$180000$Bl6Eb3X7VLJu$B5zSr/ahzaqsapGgbjNm72cRMS2J0KzzacMZQesn2sg=', '2020-06-02 22:28:23.993681', 0, 'Cabecita', '', '', 'cabecita_rodriguez@gmail.com', 0, 1, '2020-06-02 22:11:38.167550'),
(19, 'pbkdf2_sha256$180000$zzpGG1ynnDU3$VwfgriocYNi+90NVU2HUnz8X8WE4hlcz1cPre0KIZsw=', '2020-06-02 22:18:39.500417', 0, 'Elias', '', '', 'elias_hernadez@gmail.com', 0, 1, '2020-06-02 22:14:37.373422'),
(20, 'pbkdf2_sha256$180000$5uAA0UThV0zD$D51kEsalk97rag7jDnuqy4T17Z788pMQJkLpMMKFdaU=', '2020-06-02 22:23:24.235536', 0, 'Griezmann', '', '', 'elPrincipito@gmail.com', 0, 1, '2020-06-02 22:23:10.430319');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-06-01 02:16:17.383203', '1', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-06-01 02:17:00.699498', '2', '1914 translation by H. Rackham', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-06-01 20:51:13.572384', '3', 'Daniela', 3, '', 4, 1),
(4, '2020-06-02 21:42:43.672931', '5', 'Angel', 3, '', 4, 1),
(5, '2020-06-02 21:42:43.884885', '4', 'Araceli', 3, '', 4, 1),
(6, '2020-06-02 21:42:43.985070', '2', 'Armando', 3, '', 4, 1),
(7, '2020-06-02 21:42:44.169943', '11', 'Daniel', 3, '', 4, 1),
(8, '2020-06-02 21:42:44.239586', '8', 'ejemplo', 3, '', 4, 1),
(9, '2020-06-02 21:42:44.294478', '10', 'Karen', 3, '', 4, 1),
(10, '2020-06-02 21:42:44.350325', '7', 'Mario', 3, '', 4, 1),
(11, '2020-06-02 21:42:44.416717', '9', 'Nacho', 3, '', 4, 1),
(12, '2020-06-02 21:42:44.450149', '6', 'Valeria', 3, '', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'messenger', 'message'),
(9, 'messenger', 'thread'),
(7, 'pages', 'page'),
(8, 'registration', 'profile'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-06-01 00:44:18.218690'),
(2, 'auth', '0001_initial', '2020-06-01 00:44:21.091032'),
(3, 'admin', '0001_initial', '2020-06-01 00:44:29.789059'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-06-01 00:44:31.579437'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-01 00:44:31.618644'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-06-01 00:44:32.401515'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-06-01 00:44:34.071024'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-06-01 00:44:35.384948'),
(9, 'auth', '0004_alter_user_username_opts', '2020-06-01 00:44:35.428443'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-06-01 00:44:36.296634'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-06-01 00:44:36.396256'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-06-01 00:44:36.470539'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-06-01 00:44:36.665714'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-06-01 00:44:36.809115'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-06-01 00:44:37.822896'),
(16, 'auth', '0011_update_proxy_permissions', '2020-06-01 00:44:37.877443'),
(17, 'sessions', '0001_initial', '2020-06-01 00:44:38.168396'),
(18, 'pages', '0001_initial', '2020-06-01 02:09:49.610994'),
(19, 'registration', '0001_initial', '2020-06-01 21:35:21.631544'),
(20, 'messenger', '0001_initial', '2020-06-02 05:06:18.077225'),
(21, 'messenger', '0002_auto_20200602_1634', '2020-06-02 21:35:30.346423');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_message`
--

CREATE TABLE `messenger_message` (
  `id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_spanish_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `messenger_message`
--

INSERT INTO `messenger_message` (`id`, `content`, `created`, `user_id`) VALUES
(1, 'Que hay Daniel', '2020-06-02 06:37:20.825330', 1),
(3, 'Nos Vemos Luego', '2020-06-02 06:38:26.258742', 1),
(4, 'Prueba', '2020-06-02 20:51:27.451111', 1),
(5, 'Como van las Pruebas?', '2020-06-02 20:53:26.334922', 1),
(6, 'Este es el último mensaje', '2020-06-02 21:02:05.748284', 1),
(7, 'Prueba', '2020-06-02 21:02:28.008233', 1),
(8, 'ultimas pruebas', '2020-06-02 21:03:39.783354', 1),
(9, 'Pruebas Finales', '2020-06-02 21:04:29.858742', 1),
(10, 'adasda', '2020-06-02 21:06:08.207445', 1),
(11, 'asydg', '2020-06-02 21:06:12.179001', 1),
(12, 'vamos bien', '2020-06-02 21:06:15.640122', 1),
(16, 'Que Onda Mario', '2020-06-02 21:09:59.704065', 1),
(17, 'Todo bien?', '2020-06-02 21:12:37.539028', 1),
(18, 'Hola Ejemplo', '2020-06-02 21:21:08.190110', 1),
(19, 'Hola Karen', '2020-06-02 21:25:42.922423', 1),
(20, 'Que hay, Primer Mensaje', '2020-06-02 21:30:38.121782', 1),
(21, '¿Quetal el repetidor?', '2020-06-02 21:31:05.276067', 1),
(22, 'Oyee Karen', '2020-06-02 21:36:07.870623', 1),
(23, 'Todo bien?', '2020-06-02 21:36:19.010415', 1),
(24, 'Oye Danny', '2020-06-02 21:38:47.112377', 1),
(25, 'Practicando', '2020-06-02 21:39:18.935378', 1),
(26, 'Cabecita, sin duda eres uno de los Mejores delanteros que han llegado a Cruz Azul!!', '2020-06-02 22:17:39.864868', 1),
(27, 'Eres sin duda el mejor Jugador del Mundo...', '2020-06-02 22:18:21.506829', 1),
(28, 'Quetal Mario, he escuchado que te consideras un gran fan de la Maquina de Cruz Azul, es vedad?', '2020-06-02 22:19:23.922831', 19),
(29, 'Mi Buen Neyma, deberiamos jugar algun dia Juntos...', '2020-06-02 22:20:02.462380', 13),
(30, 'Gignac, ambos Franceses, ambos delanteros... Ya es justo de Jugar para la Selección de Francia no lo crees?', '2020-06-02 22:26:20.443541', 20),
(31, 'Gracias Mario, todo el esfuerzo que hacemos es por la afición mas fiel de México, Sangre Azul...', '2020-06-02 22:28:59.669329', 18),
(32, 'Suarez, por ahi se andan escuchando Rumores de Griezmann y Gignac se quieren juntar para hacer una dupla letal en la selección de Francia, quetal si tu y yo hacemos lo mismo pero por la De Uruguay????', '2020-06-02 22:30:07.647345', 18),
(33, 'Ha sido un gran gusto Jugar contigo para el Cruz Azul Elias, que dices es momento de darles el 9no Campeonato????', '2020-06-02 22:30:46.487651', 18),
(34, 'Dia a dia trabajo fuertemente para alcanzar mis Objetivos... Gracias Mario por considerarme como el mejor jugador de futbol, pero no olvides que hay mas estrellas que quieren brillas.... Una de ellas puedes ser tu', '2020-06-02 22:32:15.235108', 12),
(35, 'Es momento de darles algunos Trofeos... con gusto Juguemos para la France... Un gusto jugar contigo Principito...', '2020-06-02 22:32:59.228520', 17),
(36, 'Bicho, eres una maquina dentro del terreno de Juego... Espero poder jugar a tu lado algún Dia.!! Saludos desde México', '2020-06-02 22:33:53.014822', 17),
(37, 'Claro que sii Gignac, un dia espero Migrar a México y poder jugar contra los mejores de alli...', '2020-06-02 22:34:35.970725', 13),
(38, 'Yeahh!! Demos unas lecciones a esos Franceses... No traen Mucho Nivel Jona... Asi que nos reportamos con la Seleccion, hasta entonces', '2020-06-02 22:35:30.360840', 16),
(39, 'Lamentablemente Pulga, Neyma se fue pero sin embargo tu y yo seguimos aquí regalandoles sonrias a nuestros aficionados barcelonistas... y es Momento de ir por el Madrid... Forza Barca.!!', '2020-06-02 22:36:25.743249', 16),
(40, 'aAsii es Patrullero, Cruz Azul de Corazón... Espero verte campeón con el equipo...', '2020-06-02 22:37:12.789356', 1),
(41, 'Es bueno saber que hay Grandes Jugadores dentro del Equipo, Confio en ustedes...', '2020-06-02 22:37:35.513000', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread`
--

CREATE TABLE `messenger_thread` (
  `id` int(11) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `messenger_thread`
--

INSERT INTO `messenger_thread` (`id`, `updated`) VALUES
(1, '2020-06-02 21:38:47.276436'),
(2, '2020-06-02 21:39:19.022599'),
(3, '2020-06-02 21:35:30.077091'),
(4, '2020-06-02 21:35:30.077091'),
(5, '2020-06-02 22:37:35.613482'),
(6, '2020-06-02 22:32:15.295667'),
(7, '2020-06-02 22:37:12.945299'),
(8, '2020-06-02 22:20:02.677745'),
(9, '2020-06-02 22:32:59.304422'),
(10, '2020-06-02 22:35:30.624840'),
(11, '2020-06-02 22:30:46.678113'),
(12, '2020-06-02 22:34:36.126765'),
(13, '2020-06-02 22:36:25.831247');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread_messages`
--

CREATE TABLE `messenger_thread_messages` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `messenger_thread_messages`
--

INSERT INTO `messenger_thread_messages` (`id`, `thread_id`, `message_id`) VALUES
(1, 1, 1),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(16, 1, 16),
(17, 1, 17),
(24, 1, 24),
(18, 2, 18),
(25, 2, 25),
(19, 3, 19),
(22, 3, 22),
(20, 4, 20),
(21, 4, 21),
(23, 4, 23),
(26, 5, 26),
(31, 5, 31),
(41, 5, 41),
(27, 6, 27),
(34, 6, 34),
(28, 7, 28),
(40, 7, 40),
(29, 8, 29),
(30, 9, 30),
(35, 9, 35),
(32, 10, 32),
(38, 10, 38),
(33, 11, 33),
(36, 12, 36),
(37, 12, 37),
(39, 13, 39);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread_users`
--

CREATE TABLE `messenger_thread_users` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `messenger_thread_users`
--

INSERT INTO `messenger_thread_users` (`id`, `thread_id`, `user_id`) VALUES
(1, 1, 1),
(4, 2, 1),
(5, 3, 1),
(8, 4, 1),
(9, 5, 1),
(10, 5, 18),
(11, 6, 1),
(12, 6, 12),
(13, 7, 1),
(14, 7, 19),
(15, 8, 13),
(16, 8, 14),
(17, 9, 17),
(18, 9, 20),
(19, 10, 16),
(20, 10, 18),
(21, 11, 18),
(22, 11, 19),
(24, 12, 13),
(23, 12, 17),
(26, 13, 12),
(25, 13, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages_page`
--

CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `content` longtext COLLATE utf8_spanish_ci NOT NULL,
  `order` smallint(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pages_page`
--

INSERT INTO `pages_page` (`id`, `title`, `content`, `order`, `created`, `updated`) VALUES
(1, 'Los Mejores del Mundo', '<p>El f&uacute;tbol est&aacute; plagado de grandes futbolistas que luchan por llegar a lo m&aacute;s alto en lo suyo. Hay <strong>25 jugadores</strong>&nbsp;que est&aacute;n, en la actualidad, por encima del resto. Por el momento de forma y por su irregular temporada algunas estrellas se han quedado fuera de este r&aacute;nking aunque podr&iacute;an entrar si recuperan el talento mostrado en temporadas anteriores.</p>\r\n\r\n<p>Messi, Mbapp&eacute;, Cristiano Ronaldo, Ter Stegen, Piqu&eacute;, Luis Su&aacute;rez, Oblak, Hazard, Busquets, Sergio Ramos, Kant&eacute;, De Bruyne, Modric, Neymar, De Jong, Salah, Kane, Griezmann, Van Dijk, Man&eacute;, Ag&uuml;ero, Sterling y Pogba.</p>', 0, '2020-06-01 02:16:17.319376', '2020-06-02 22:51:21.532396'),
(2, 'Futbol como Mejor Deporte del Mundo', '<p>El&nbsp;<strong>f&uacute;tbol</strong>&nbsp;(del ingl&eacute;s&nbsp;<em>football</em>) es un&nbsp;<a href=\"https://definicion.de/deporte\"><strong>deporte</strong></a>&nbsp;en el que dos equipos compuestos por once jugadores se enfrentan entre s&iacute;. Cada equipo, que dispone de diez jugadores que se mueven por el campo y de un portero (tambi&eacute;n conocido como arquero o guardameta), tratar&aacute; de lograr que la pelota (bal&oacute;n) ingrese en el arco (porter&iacute;a) del equipo rival, respetando diversas reglas.</p>\r\n\r\n<p>Este deporte, que en&nbsp;<strong>Espa&ntilde;a</strong>&nbsp;tambi&eacute;n recibe el nombre de&nbsp;<strong>balompi&eacute;</strong>&nbsp;y que en los&nbsp;<strong>Estados Unidos</strong>&nbsp;se conoce como&nbsp;<strong>soccer</strong>, tiene como regla m&aacute;s importante que los jugadores, con la excepci&oacute;n del arquero en su &aacute;rea, no pueden tocar la pelota con las manos o los brazos.</p>', 0, '2020-06-01 02:17:00.603753', '2020-06-02 22:44:03.422510'),
(7, 'Balón de Oro', '<p>El&nbsp;<strong>Bal&oacute;n de Oro</strong>&nbsp;es el premio anual que reconoce hist&oacute;ricamente al mejor futbolista del planeta. Inicialmente se entregaba solo a jugadores europeos. Hasta que a mediados de los 90 -1995- se extendi&oacute;&nbsp;al futbolista de cualquier nacionalidad siempre que militara en un club del Viejo Continente.&nbsp;Desde 2007 se&nbsp;quita toda&nbsp;restricci&oacute;n y puede ser elegido cualquier jugador.</p>\r\n\r\n<p>El galard&oacute;n fue creado por la revista France Football en 1956 y a&ntilde;o a a&ntilde;o fue premiando a los jugadores. En 2009, la revista francesa se uni&oacute; a la FIFA para dar en conjunto el premio desde 2010 a 2015 -ambos inclusive y denomin&aacute;ndolo como FIFA Bal&oacute;n de Oro, aunque&nbsp;2016 volvieron deshicieron de nuevo el v&iacute;nculo.</p>\r\n\r\n<p>&nbsp;</p>', 0, '2020-06-02 22:53:23.609821', '2020-06-02 22:53:23.609821'),
(8, 'UEFA Champions League', '<p>La&nbsp;<strong>Liga de Campeones de la UEFA</strong>, originariamente conocida como&nbsp;<strong>Copa de Europa</strong>, es el&nbsp;torneo internacional&nbsp;oficial de&nbsp;f&uacute;tbol&nbsp;m&aacute;s prestigioso a nivel de clubes&nbsp;entre los organizados por la Uni&oacute;n de Asociaciones Europeas de F&uacute;tbol&nbsp;(UEFA).&nbsp;Asimismo, es el&nbsp;acontecimiento deportivo&nbsp;anual m&aacute;s seguido en el mundo, con m&aacute;s de 350 millones de espectadores en 2018.</p>\r\n\r\n<p>El ganador de esta competici&oacute;n disputa la&nbsp;Supercopa de Europa&nbsp;contra el campe&oacute;n de la&nbsp;Liga Europa&nbsp;y, como representante de la confederaci&oacute;n, la&nbsp;Copa Mundial de Clubes de la FIFA.</p>', 0, '2020-06-02 22:55:55.281933', '2020-06-02 22:59:58.744351');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registration_profile`
--

CREATE TABLE `registration_profile` (
  `id` int(11) NOT NULL,
  `avatar` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `bio` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `registration_profile`
--

INSERT INTO `registration_profile` (`id`, `avatar`, `bio`, `link`, `user_id`) VALUES
(1, 'profiles/IMG-20190503-WA0010.jpg', 'Hola! Mi Nombre es Mario, Esta es la Primera vez que Desarrollo un Sistema Web con Django y Mysql...', 'https://www.facebook.com/Mario.Alonso.Blazter', 1),
(8, 'profiles/Messi.jpg', 'Futbolista argentino. Poseedor de una habilidad técnica excepcional, una endiablada velocidad. Conocido como Leo o Pulga', 'https://github.com/Mario-Alonso99', 12),
(9, 'profiles/cristiano-ronaldo.jpg', 'Cristiano Ronaldo Dos Santos Aveiro, es un futbolista portugués que juega como delantero y es considerado como uno de los mejores delanteros del mundo del fútbol.', 'https://github.com/Mario-Alonso99', 13),
(10, 'profiles/neymar.jpg', 'Reconocido por su velocidad y habilidad en el regate. Comenzó rápidamente a destacar en las categorías inferiores.Fue con la selección de Brasil en 2009 al Mundial de Fútbol Sub 17. Tras el Mundial de Sudáfrica, en 2010, le convocaron para jugar por primera vez con la selección absoluta. Debutó jugando contra Estados Unidos, y marcó un gol.', 'https://github.com/Mario-Alonso99', 14),
(11, 'profiles/dybala.jpg', 'Futbolista argentino. Se desempeña como delantero o centrocampista y juega en la Juventus F. C. de la Serie A de Italia. Además es internacional con la selección argentina desde 2015.', 'https://github.com/Mario-Alonso99', 15),
(12, 'profiles/suarez.jpeg', 'Luis Suárez, es un futbolista ítalo-uruguayo, que juega como delantero en el Fútbol Club Barcelona de la Primera División de España. Es internacional absoluto con la selección de fútbol de Uruguay, de la cual es el máximo goleador histórico.', 'https://github.com/Mario-Alonso99', 16),
(13, 'profiles/gicnac_5TT6UTo.jpg', 'Futbolista francés que también posee la nacionalidad mexicana, juega como delantero y su equipo es Tigres de la UANL de la Primera División de México. Fue campeón de goleo de la Ligue 1 de Francia en la temporada 2008-09 con el Toulouse. Desde su llegada al fútbol mexicano en 2015, ha recibido numerosos reconocimientos; entre ellos un Balón de Oro al mejor jugador de la liga, dos campeonatos de goleo, ser nombrado en dos ocasiones el mejor delantero de la Liga MX, mejor delantero de la Concacaf, y el estar incluido en el Once Ideal de la liga en cinco ocasiones.', 'https://github.com/Mario-Alonso99', 17),
(14, 'profiles/rodriguez.jpg', 'Jonathan ‘Cabecita’ Rodríguez, mediocampista uruguayo de 26 años, que juega para la Máquina de Cruz Azul tuvo un origen humilde en su país, pero su ascendente carrera lo hizo llegar pronto al futbol de Europa antes de ser una de las figuras de la Liga MX. Jonathan Rodríguez, ha sido el mejor elemento de Cruz Azul durante la presente temporada Apertura 2019, un atacante que tiene un origen humilde pero que logró llegar al futbol de Europa antes de pisar por primera vez la Liga MX con el Santos Laguna.', 'https://github.com/Mario-Alonso99', 18),
(15, 'profiles/elias.jpg', 'Hernández hizo su debut profesional e 27 de octubre de 2007 en una victoria 1-0 sobre Tigres de la UANL, ingresando de la banca del Monarcas Morelia en el minuto 60\' por su compañero Gonzalo Choy.\r\n\r\nPosee una gran velocidad, conducción y dribleo, siendo una de las piezas clave en el ataque de Monarcas Morelia junto a Hugo Droguett como extremos y Miguel Sabah como centro delantero .\r\n\r\nEn la segunda mitad del 2011, es transferido a Pachuca. Sin embargo, solo pasa una temporada con los tuzos, pues para el 2012 es transferido a los Tigres UANL.\r\n\r\nDespués de año y medio con el equipo regio, pasa en calidad de préstamo al Club León como refuerzo para el Torneo Apertura 2013, mismo donde el cuadro esmeralda termina campeón.', 'https://github.com/Mario-Alonso99', 19),
(16, 'profiles/griezmann.jpg', 'Griezmann hizo su mejor temporada goleadora con 25 goles. El delantero renovó su contrato con el club hasta 2021. El 5 de agosto de 2016, fue nominado junto a Cristiano Ronaldo y Gareth Bale como mejor jugador de la UEFA de la anterior temporada. El 7 de octubre de 2016, fue merecedor del premio al mejor jugador de la Euro 2016 luego de disputar un partido de clasificación para el Mundial 2018 contra la selección búlgara en el Stade de France.', 'https://github.com/Mario-Alonso99', 20);

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
-- Indices de la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messenger_message_user_id_44204cf3_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `messenger_thread`
--
ALTER TABLE `messenger_thread`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `messenger_thread_messages_thread_id_message_id_bb58b3ca_uniq` (`thread_id`,`message_id`),
  ADD KEY `messenger_thread_mes_message_id_e4d4b7af_fk_messenger` (`message_id`);

--
-- Indices de la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `messenger_thread_users_thread_id_user_id_d8023aff_uniq` (`thread_id`,`user_id`),
  ADD KEY `messenger_thread_users_user_id_008b18f6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `pages_page`
--
ALTER TABLE `pages_page`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `messenger_thread`
--
ALTER TABLE `messenger_thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `pages_page`
--
ALTER TABLE `pages_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- Filtros para la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  ADD CONSTRAINT `messenger_message_user_id_44204cf3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  ADD CONSTRAINT `messenger_thread_mes_message_id_e4d4b7af_fk_messenger` FOREIGN KEY (`message_id`) REFERENCES `messenger_message` (`id`),
  ADD CONSTRAINT `messenger_thread_mes_thread_id_a70e3887_fk_messenger` FOREIGN KEY (`thread_id`) REFERENCES `messenger_thread` (`id`);

--
-- Filtros para la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  ADD CONSTRAINT `messenger_thread_users_thread_id_8c4fd4f2_fk_messenger_thread_id` FOREIGN KEY (`thread_id`) REFERENCES `messenger_thread` (`id`),
  ADD CONSTRAINT `messenger_thread_users_user_id_008b18f6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  ADD CONSTRAINT `registration_profile_user_id_e133ce43_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
