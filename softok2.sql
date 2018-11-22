-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2018 a las 22:34:51
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `softok2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-11-16 16:43:50', '2018-11-16 16:43:50', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/softok2', 'yes'),
(2, 'home', 'http://localhost/softok2', 'yes'),
(3, 'blogname', 'Softok2', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'carlitos051186@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:155:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"portafolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"portafolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"portafolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"portafolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"portafolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"portafolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"portafolio/([^/]+)/embed/?$\";s:43:\"index.php?portafolio=$matches[1]&embed=true\";s:31:\"portafolio/([^/]+)/trackback/?$\";s:37:\"index.php?portafolio=$matches[1]&tb=1\";s:39:\"portafolio/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?portafolio=$matches[1]&paged=$matches[2]\";s:46:\"portafolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?portafolio=$matches[1]&cpage=$matches[2]\";s:35:\"portafolio/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?portafolio=$matches[1]&page=$matches[2]\";s:27:\"portafolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"portafolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"portafolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"portafolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"portafolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"portafolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"consejos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"consejos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"consejos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"consejos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"consejos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"consejos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"consejos/([^/]+)/embed/?$\";s:41:\"index.php?consejos=$matches[1]&embed=true\";s:29:\"consejos/([^/]+)/trackback/?$\";s:35:\"index.php?consejos=$matches[1]&tb=1\";s:37:\"consejos/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?consejos=$matches[1]&paged=$matches[2]\";s:44:\"consejos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?consejos=$matches[1]&cpage=$matches[2]\";s:33:\"consejos/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?consejos=$matches[1]&page=$matches[2]\";s:25:\"consejos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"consejos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"consejos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"consejos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"consejos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"consejos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"skills/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"skills/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"skills/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"skills/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"skills/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"skills/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"skills/([^/]+)/embed/?$\";s:39:\"index.php?skills=$matches[1]&embed=true\";s:27:\"skills/([^/]+)/trackback/?$\";s:33:\"index.php?skills=$matches[1]&tb=1\";s:35:\"skills/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?skills=$matches[1]&paged=$matches[2]\";s:42:\"skills/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?skills=$matches[1]&cpage=$matches[2]\";s:31:\"skills/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?skills=$matches[1]&page=$matches[2]\";s:23:\"skills/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"skills/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"skills/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"skills/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"skills/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"skills/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"clientes/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"clientes/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"clientes/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"clientes/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"clientes/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"clientes/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"clientes/([^/]+)/embed/?$\";s:41:\"index.php?clientes=$matches[1]&embed=true\";s:29:\"clientes/([^/]+)/trackback/?$\";s:35:\"index.php?clientes=$matches[1]&tb=1\";s:37:\"clientes/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?clientes=$matches[1]&paged=$matches[2]\";s:44:\"clientes/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?clientes=$matches[1]&cpage=$matches[2]\";s:33:\"clientes/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?clientes=$matches[1]&page=$matches[2]\";s:25:\"clientes/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"clientes/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"clientes/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"clientes/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"clientes/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"clientes/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:27:\"acf-gallery/acf-gallery.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:19:\"softok2/softok2.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'softk2', 'yes'),
(41, 'stylesheet', 'softk2', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_ES', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1542923031;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1542948231;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1542991488;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543002959;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542397737;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(117, '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"last_checked\";i:1542910445;}', 'no'),
(118, '_site_transient_update_plugins', 'O:8:\"stdClass\":2:{s:12:\"last_checked\";i:1542910456;s:8:\"response\";N;}', 'no'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1542910468;}', 'no'),
(125, 'can_compress_scripts', '0', 'no'),
(128, 'recently_activated', 'a:0:{}', 'yes'),
(129, 'acf_version', '4.4.12', 'yes'),
(130, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1542386707;s:7:\"version\";s:5:\"5.0.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(132, 'new_admin_email', 'carlitos051186@gmail.com', 'yes'),
(140, 'current_theme', '', 'yes'),
(141, 'theme_mods_softk2', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(160, 'cptui_new_install', 'false', 'yes'),
(161, 'cptui_post_types', 'a:4:{s:10:\"portafolio\";a:29:{s:4:\"name\";s:10:\"portafolio\";s:5:\"label\";s:10:\"Portafolio\";s:14:\"singular_label\";s:10:\"Portafolio\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:8:\"consejos\";a:29:{s:4:\"name\";s:8:\"consejos\";s:5:\"label\";s:8:\"Consejos\";s:14:\"singular_label\";s:8:\"Consejos\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:7:\"excerpt\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:6:\"skills\";a:29:{s:4:\"name\";s:6:\"skills\";s:5:\"label\";s:6:\"Skills\";s:14:\"singular_label\";s:5:\"Skill\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:8:\"clientes\";a:29:{s:4:\"name\";s:8:\"clientes\";s:5:\"label\";s:8:\"Clientes\";s:14:\"singular_label\";s:8:\"Clientes\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(197, '_site_transient_timeout_theme_roots', '1542912268', 'no'),
(198, '_site_transient_theme_roots', 'a:4:{s:6:\"softk2\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(4, 5, '_mail', 'a:8:{s:7:\"subject\";s:24:\"Softok2 \"[your-subject]\"\";s:6:\"sender\";s:38:\"[your-name] <carlitos051186@gmail.com>\";s:4:\"body\";s:169:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Softok2 (http://localhost/softk2)\";s:9:\"recipient\";s:24:\"carlitos051186@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:24:\"Softok2 \"[your-subject]\"\";s:6:\"sender\";s:34:\"Softok2 <carlitos051186@gmail.com>\";s:4:\"body\";s:111:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Softok2 (http://localhost/softk2)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:34:\"Reply-To: carlitos051186@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(6, 5, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(7, 5, '_additional_settings', NULL),
(8, 5, '_locale', 'es_ES'),
(9, 6, '_edit_last', '1'),
(10, 6, '_edit_lock', '1542758680:1'),
(11, 8, '_edit_last', '1'),
(14, 8, 'position', 'normal'),
(15, 8, 'layout', 'no_box'),
(16, 8, 'hide_on_screen', ''),
(17, 8, '_edit_lock', '1542758680:1'),
(18, 9, '_wp_attached_file', '2018/11/Slider02.png'),
(19, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:770;s:6:\"height\";i:720;s:4:\"file\";s:20:\"2018/11/Slider02.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Slider02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Slider02-300x281.png\";s:5:\"width\";i:300;s:6:\"height\";i:281;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Slider02-768x718.png\";s:5:\"width\";i:768;s:6:\"height\";i:718;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 10, '_wp_attached_file', '2018/11/Slider01.png'),
(21, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:720;s:4:\"file\";s:20:\"2018/11/Slider01.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Slider01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Slider01-300x235.png\";s:5:\"width\";i:300;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Slider01-768x601.png\";s:5:\"width\";i:768;s:6:\"height\";i:601;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 11, '_wp_attached_file', '2018/11/Slider03.png'),
(23, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:740;s:6:\"height\";i:660;s:4:\"file\";s:20:\"2018/11/Slider03.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Slider03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Slider03-300x268.png\";s:5:\"width\";i:300;s:6:\"height\";i:268;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 6, 'home_carousel', 'a:3:{i:0;s:2:\"10\";i:1;s:1:\"9\";i:2;s:2:\"11\";}'),
(25, 6, '_home_carousel', 'field_5bef257a18b50'),
(28, 1, '_wp_trash_meta_status', 'publish'),
(29, 1, '_wp_trash_meta_time', '1542401743'),
(30, 1, '_wp_desired_post_slug', 'hola-mundo'),
(31, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(32, 13, '_edit_last', '1'),
(33, 13, 'field_5bef2ef129adf', 'a:14:{s:3:\"key\";s:19:\"field_5bef2ef129adf\";s:5:\"label\";s:9:\"Subtitulo\";s:4:\"name\";s:14:\"post_sub_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(35, 13, 'position', 'normal'),
(36, 13, 'layout', 'no_box'),
(37, 13, 'hide_on_screen', ''),
(38, 13, '_edit_lock', '1542727857:1'),
(41, 14, '_edit_last', '1'),
(44, 15, 'post_sub_title', 'REDES SOCIALES'),
(45, 15, '_post_sub_title', 'field_5bef2ef129adf'),
(46, 14, 'post_sub_title', 'REDES SOCIALES'),
(47, 14, '_post_sub_title', 'field_5bef2ef129adf'),
(48, 14, '_edit_lock', '1542473293:1'),
(51, 16, 'post_sub_title', 'REDES SOCIALES'),
(52, 16, '_post_sub_title', 'field_5bef2ef129adf'),
(53, 17, '_edit_last', '1'),
(54, 17, '_edit_lock', '1542473137:1'),
(57, 18, 'post_sub_title', 'INNOVACIÓN'),
(58, 18, '_post_sub_title', 'field_5bef2ef129adf'),
(59, 17, 'post_sub_title', 'INNOVACIÓN'),
(60, 17, '_post_sub_title', 'field_5bef2ef129adf'),
(61, 19, '_edit_last', '1'),
(62, 19, '_edit_lock', '1542845604:1'),
(65, 20, 'post_sub_title', 'PYTHON / DJANGO'),
(66, 20, '_post_sub_title', 'field_5bef2ef129adf'),
(67, 19, 'post_sub_title', 'PYTHON / DJANGO'),
(68, 19, '_post_sub_title', 'field_5bef2ef129adf'),
(69, 14, '_thumbnail_id', '9'),
(72, 17, '_thumbnail_id', '11'),
(75, 19, '_thumbnail_id', '10'),
(78, 8, 'field_5bef4886536b5', 'a:14:{s:3:\"key\";s:19:\"field_5bef4886536b5\";s:5:\"label\";s:19:\"Metodologia Título\";s:4:\"name\";s:18:\"metodologia_titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(79, 8, 'field_5bef48e9536b6', 'a:13:{s:3:\"key\";s:19:\"field_5bef48e9536b6\";s:5:\"label\";s:19:\"Metodologia Resumen\";s:4:\"name\";s:19:\"metodologia_resumen\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(80, 8, 'field_5bef4901536b7', 'a:11:{s:3:\"key\";s:19:\"field_5bef4901536b7\";s:5:\"label\";s:20:\"Metodologia 1 imagen\";s:4:\"name\";s:20:\"metodologia_1_imagen\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(81, 8, 'field_5bef4a2d536b8', 'a:14:{s:3:\"key\";s:19:\"field_5bef4a2d536b8\";s:5:\"label\";s:21:\"Metodologia 1 Título\";s:4:\"name\";s:20:\"metodologia_1_titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(82, 8, 'field_5bef4a50536b9', 'a:13:{s:3:\"key\";s:19:\"field_5bef4a50536b9\";s:5:\"label\";s:23:\"Metodologia 1 Contenido\";s:4:\"name\";s:23:\"metodologia_1_contenido\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(84, 8, 'field_5bef4a80373d8', 'a:11:{s:3:\"key\";s:19:\"field_5bef4a80373d8\";s:5:\"label\";s:20:\"Metodologia 2 imagen\";s:4:\"name\";s:20:\"metodologia_2_imagen\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(85, 8, 'field_5bef4a7f373d7', 'a:11:{s:3:\"key\";s:19:\"field_5bef4a7f373d7\";s:5:\"label\";s:20:\"Metodologia 3 imagen\";s:4:\"name\";s:20:\"metodologia_3_imagen\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(86, 8, 'field_5bef4a7e373d6', 'a:11:{s:3:\"key\";s:19:\"field_5bef4a7e373d6\";s:5:\"label\";s:20:\"Metodologia 4 imagen\";s:4:\"name\";s:20:\"metodologia_4_imagen\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}'),
(87, 8, 'field_5bef4a7c373d5', 'a:11:{s:3:\"key\";s:19:\"field_5bef4a7c373d5\";s:5:\"label\";s:20:\"Metodologia 5 imagen\";s:4:\"name\";s:20:\"metodologia_5_imagen\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:14;}'),
(88, 8, 'field_5bef4a7b373d4', 'a:11:{s:3:\"key\";s:19:\"field_5bef4a7b373d4\";s:5:\"label\";s:20:\"Metodologia 6 imagen\";s:4:\"name\";s:20:\"metodologia_6_imagen\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:17;}'),
(91, 8, 'field_5bef4af62fbb7', 'a:14:{s:3:\"key\";s:19:\"field_5bef4af62fbb7\";s:5:\"label\";s:21:\"Metodologia 2 Título\";s:4:\"name\";s:20:\"metodologia_2_titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(92, 8, 'field_5bef4af62fbb6', 'a:14:{s:3:\"key\";s:19:\"field_5bef4af62fbb6\";s:5:\"label\";s:21:\"Metodologia 3 Título\";s:4:\"name\";s:20:\"metodologia_3_titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(93, 8, 'field_5bef4af52fbb5', 'a:14:{s:3:\"key\";s:19:\"field_5bef4af52fbb5\";s:5:\"label\";s:21:\"Metodologia 4 Título\";s:4:\"name\";s:20:\"metodologia_4_titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:12;}'),
(94, 8, 'field_5bef4af42fbb4', 'a:14:{s:3:\"key\";s:19:\"field_5bef4af42fbb4\";s:5:\"label\";s:21:\"Metodologia 5 Título\";s:4:\"name\";s:20:\"metodologia_5_titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:15;}'),
(95, 8, 'field_5bef4af42fbb3', 'a:14:{s:3:\"key\";s:19:\"field_5bef4af42fbb3\";s:5:\"label\";s:21:\"Metodologia 6 Título\";s:4:\"name\";s:20:\"metodologia_6_titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:18;}'),
(97, 8, 'field_5bef4b4d62fa5', 'a:13:{s:3:\"key\";s:19:\"field_5bef4b4d62fa5\";s:5:\"label\";s:23:\"Metodologia 2 Contenido\";s:4:\"name\";s:23:\"metodologia_2_contenido\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(98, 8, 'field_5bef4b4c62fa4', 'a:13:{s:3:\"key\";s:19:\"field_5bef4b4c62fa4\";s:5:\"label\";s:23:\"Metodologia 3 Contenido\";s:4:\"name\";s:23:\"metodologia_3_contenido\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}'),
(99, 8, 'field_5bef4b4b62fa3', 'a:13:{s:3:\"key\";s:19:\"field_5bef4b4b62fa3\";s:5:\"label\";s:23:\"Metodologia 4 Contenido\";s:4:\"name\";s:23:\"metodologia_4_contenido\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:13;}'),
(100, 8, 'field_5bef4b4b62fa2', 'a:13:{s:3:\"key\";s:19:\"field_5bef4b4b62fa2\";s:5:\"label\";s:23:\"Metodologia 5 Contenido\";s:4:\"name\";s:23:\"metodologia_5_contenido\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:16;}'),
(101, 8, 'field_5bef4b4a62fa1', 'a:13:{s:3:\"key\";s:19:\"field_5bef4b4a62fa1\";s:5:\"label\";s:23:\"Metodologia 6 Contenido\";s:4:\"name\";s:23:\"metodologia_6_contenido\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:19;}'),
(107, 22, '_edit_last', '1'),
(108, 22, 'field_5bef4e59cc45c', 'a:14:{s:3:\"key\";s:19:\"field_5bef4e59cc45c\";s:5:\"label\";s:7:\"Cliente\";s:4:\"name\";s:7:\"cliente\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(110, 22, 'position', 'normal'),
(111, 22, 'layout', 'no_box'),
(112, 22, 'hide_on_screen', ''),
(113, 22, '_edit_lock', '1542733575:1'),
(115, 23, '_edit_last', '1'),
(116, 23, '_edit_lock', '1542474867:1'),
(118, 24, '_wp_attached_file', '2018/11/Portfolio07.png'),
(119, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2018/11/Portfolio07.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Portfolio07-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Portfolio07-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 23, '_thumbnail_id', '27'),
(121, 23, 'url', '#'),
(122, 23, '_url', 'field_5bef4e59cc45c'),
(123, 25, '_edit_last', '1'),
(124, 25, '_edit_lock', '1542474913:1'),
(126, 22, 'field_5bef50a56d082', 'a:11:{s:3:\"key\";s:19:\"field_5bef50a56d082\";s:5:\"label\";s:5:\"Fecha\";s:4:\"name\";s:5:\"fecha\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"date_format\";s:6:\"yymmdd\";s:14:\"display_format\";s:5:\"mm/yy\";s:9:\"first_day\";s:1:\"1\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(127, 22, 'field_5bef50e46d083', 'a:14:{s:3:\"key\";s:19:\"field_5bef50e46d083\";s:5:\"label\";s:6:\"Skills\";s:4:\"name\";s:6:\"skills\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(128, 22, 'field_5bef50fb6d084', 'a:14:{s:3:\"key\";s:19:\"field_5bef50fb6d084\";s:5:\"label\";s:4:\"Link\";s:4:\"name\";s:4:\"link\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(130, 26, '_wp_attached_file', '2018/11/benavides_SOFTOK2.png'),
(131, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1229;s:6:\"height\";i:768;s:4:\"file\";s:29:\"2018/11/benavides_SOFTOK2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"benavides_SOFTOK2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"benavides_SOFTOK2-300x187.png\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"benavides_SOFTOK2-768x480.png\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"benavides_SOFTOK2-1024x640.png\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 27, '_wp_attached_file', '2018/11/bvm.jpg'),
(133, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:400;s:4:\"file\";s:15:\"2018/11/bvm.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bvm-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bvm-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 28, '_wp_attached_file', '2018/11/nuevosur_SOFTOK2.png'),
(135, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1229;s:6:\"height\";i:768;s:4:\"file\";s:28:\"2018/11/nuevosur_SOFTOK2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"nuevosur_SOFTOK2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"nuevosur_SOFTOK2-300x187.png\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"nuevosur_SOFTOK2-768x480.png\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"nuevosur_SOFTOK2-1024x640.png\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 29, '_wp_attached_file', '2018/11/Portfolio02.png'),
(137, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2018/11/Portfolio02.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Portfolio02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Portfolio02-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 30, '_wp_attached_file', '2018/11/Portfolio04.png'),
(139, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2018/11/Portfolio04.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Portfolio04-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Portfolio04-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 31, '_wp_attached_file', '2018/11/Portfolio05.png'),
(141, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2018/11/Portfolio05.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Portfolio05-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Portfolio05-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 32, '_wp_attached_file', '2018/11/Portfolio06.png'),
(143, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2018/11/Portfolio06.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Portfolio06-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Portfolio06-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 23, 'cliente', 'BVM'),
(145, 23, '_cliente', 'field_5bef4e59cc45c'),
(146, 23, 'fecha', '20170412'),
(147, 23, '_fecha', 'field_5bef50a56d082'),
(148, 23, 'skills', 'HTML5, CSS3, Python / Django'),
(149, 23, '_skills', 'field_5bef50e46d083'),
(150, 23, 'link', 'http://www.bvmcorp.com/'),
(151, 23, '_link', 'field_5bef50fb6d084'),
(152, 22, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"portafolio\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(153, 25, 'cliente', 'CreativeDreams'),
(154, 25, '_cliente', 'field_5bef4e59cc45c'),
(155, 25, 'fecha', '20170823'),
(156, 25, '_fecha', 'field_5bef50a56d082'),
(157, 25, 'skills', '.NET SQLSERVER FRONTEND BACKEND API-REST'),
(158, 25, '_skills', 'field_5bef50e46d083'),
(159, 25, 'link', 'http://www.benavides.com.mx/'),
(160, 25, '_link', 'field_5bef50fb6d084'),
(161, 13, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"home-carousel-post\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(162, 34, '_wp_attached_file', '2018/11/Portfolio03.png'),
(163, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2018/11/Portfolio03.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Portfolio03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Portfolio03-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 25, '_thumbnail_id', '26'),
(165, 36, '_edit_last', '1'),
(166, 36, '_edit_lock', '1542474363:1'),
(167, 36, 'cliente', 'Nuevo Sur'),
(168, 36, '_cliente', 'field_5bef4e59cc45c'),
(169, 36, 'fecha', '20160105'),
(170, 36, '_fecha', 'field_5bef50a56d082'),
(171, 36, 'skills', 'HTML5, CSS3, Wordpress, JavaScript'),
(172, 36, '_skills', 'field_5bef50e46d083'),
(173, 36, 'link', 'http://www.nuevosurcentrocomercial.com/'),
(174, 36, '_link', 'field_5bef50fb6d084'),
(175, 36, '_thumbnail_id', '28'),
(176, 37, '_edit_last', '1'),
(177, 37, '_edit_lock', '1542738217:1'),
(178, 37, 'cliente', 'Latin Brand'),
(179, 37, '_cliente', 'field_5bef4e59cc45c'),
(180, 37, 'fecha', '20160701'),
(181, 37, '_fecha', 'field_5bef50a56d082'),
(182, 37, 'skills', 'HTML5, CSS3, Wordpress, JavaScript'),
(183, 37, '_skills', 'field_5bef50e46d083'),
(184, 37, 'link', 'http://www.briggsequipment.com.mx/'),
(185, 37, '_link', 'field_5bef50fb6d084'),
(186, 37, '_thumbnail_id', '29'),
(187, 38, '_edit_last', '1'),
(188, 38, '_edit_lock', '1542474929:1'),
(189, 38, 'cliente', 'Guegue'),
(190, 38, '_cliente', 'field_5bef4e59cc45c'),
(191, 38, 'fecha', '20130502'),
(192, 38, '_fecha', 'field_5bef50a56d082'),
(193, 38, 'skills', 'HTML5, CSS3, Python / Django'),
(194, 38, '_skills', 'field_5bef50e46d083'),
(195, 38, 'link', 'http://simernic.renovables.org.ni/'),
(196, 38, '_link', 'field_5bef50fb6d084'),
(197, 38, '_thumbnail_id', '30'),
(198, 39, '_edit_last', '1'),
(199, 39, '_edit_lock', '1542728488:1'),
(200, 39, '_thumbnail_id', '31'),
(201, 39, 'cliente', 'La intuicion'),
(202, 39, '_cliente', 'field_5bef4e59cc45c'),
(203, 39, 'fecha', '20160701'),
(204, 39, '_fecha', 'field_5bef50a56d082'),
(205, 39, 'skills', 'HTML5, CSS3, Codeigniter'),
(206, 39, '_skills', 'field_5bef50e46d083'),
(207, 39, 'link', ''),
(208, 39, '_link', 'field_5bef50fb6d084'),
(209, 40, '_edit_last', '1'),
(210, 40, '_edit_lock', '1542475094:1'),
(211, 40, '_thumbnail_id', '32'),
(212, 40, 'cliente', 'Vinil TV'),
(213, 40, '_cliente', 'field_5bef4e59cc45c'),
(214, 40, 'fecha', '20160705'),
(215, 40, '_fecha', 'field_5bef50a56d082'),
(216, 40, 'skills', 'HTML5, CSS3, Wordpress'),
(217, 40, '_skills', 'field_5bef50e46d083'),
(218, 40, 'link', 'http://www.viniltv.com/'),
(219, 40, '_link', 'field_5bef50fb6d084'),
(222, 41, 'metodologia_titulo', 'Nuestra Metodología.'),
(223, 41, '_metodologia_titulo', 'field_5bef4886536b5'),
(224, 41, 'matodologia_resumen', 'El orden es el valor que se refiere a la buena disposición de las cosas entre si y a saber poner cada una de ellas en el lugar que le corresponde. La experiencia acumulada por nuestros analistas en sus más de 15 años dedicados al desarrollo de proyectos de software, nos dio como resultado una metodología de 7 etapas secuenciales para un proyecto exitoso.'),
(225, 41, '_matodologia_resumen', 'field_5bef48e9536b6'),
(226, 41, 'metodologia_1_imagen', ''),
(227, 41, '_metodologia_1_imagen', 'field_5bef4901536b7'),
(228, 41, 'metodologia_1_titulo', ''),
(229, 41, '_metodologia_1_titulo', 'field_5bef4a2d536b8'),
(230, 41, 'metodologia_1_contenido', ''),
(231, 41, '_metodologia_1_contenido', 'field_5bef4a50536b9'),
(232, 41, 'metodologia_2_imagen', ''),
(233, 41, '_metodologia_2_imagen', 'field_5bef4a80373d8'),
(234, 41, 'metodologia_2_titulo', ''),
(235, 41, '_metodologia_2_titulo', 'field_5bef4af62fbb7'),
(236, 41, 'metodologia_2_contenido', ''),
(237, 41, '_metodologia_2_contenido', 'field_5bef4b4d62fa5'),
(238, 41, 'metodologia_3_imagen', ''),
(239, 41, '_metodologia_3_imagen', 'field_5bef4a7f373d7'),
(240, 41, 'metodologia_3_titulo', ''),
(241, 41, '_metodologia_3_titulo', 'field_5bef4af62fbb6'),
(242, 41, 'metodologia_3_contenido', ''),
(243, 41, '_metodologia_3_contenido', 'field_5bef4b4c62fa4'),
(244, 41, 'metodologia_4_imagen', ''),
(245, 41, '_metodologia_4_imagen', 'field_5bef4a7e373d6'),
(246, 41, 'metodologia_4_titulo', ''),
(247, 41, '_metodologia_4_titulo', 'field_5bef4af52fbb5'),
(248, 41, 'metodologia_4_contenido', ''),
(249, 41, '_metodologia_4_contenido', 'field_5bef4b4b62fa3'),
(250, 41, 'metodologia_5_imagen', ''),
(251, 41, '_metodologia_5_imagen', 'field_5bef4a7c373d5'),
(252, 41, 'metodologia_5_titulo', ''),
(253, 41, '_metodologia_5_titulo', 'field_5bef4af42fbb4'),
(254, 41, 'metodologia_5_contenido', ''),
(255, 41, '_metodologia_5_contenido', 'field_5bef4b4b62fa2'),
(256, 41, 'metodologia_6_imagen', ''),
(257, 41, '_metodologia_6_imagen', 'field_5bef4a7b373d4'),
(258, 41, 'metodologia_6_titulo', ''),
(259, 41, '_metodologia_6_titulo', 'field_5bef4af42fbb3'),
(260, 41, 'metodologia_6_contenido', ''),
(261, 41, '_metodologia_6_contenido', 'field_5bef4b4a62fa1'),
(262, 6, 'metodologia_titulo', 'Nuestra Metodología.'),
(263, 6, '_metodologia_titulo', 'field_5bef4886536b5'),
(264, 6, 'matodologia_resumen', 'El orden es el valor que se refiere a la buena disposición de las cosas entre si y a saber poner cada una de ellas en el lugar que le corresponde. La experiencia acumulada por nuestros analistas en sus más de 15 años dedicados al desarrollo de proyectos de software, nos dio como resultado una metodología de 7 etapas secuenciales para un proyecto exitoso.'),
(265, 6, '_matodologia_resumen', 'field_5bef48e9536b6'),
(266, 6, 'metodologia_1_imagen', '42'),
(267, 6, '_metodologia_1_imagen', 'field_5bef4901536b7'),
(268, 6, 'metodologia_1_titulo', '1. Análisis de requerimientos.'),
(269, 6, '_metodologia_1_titulo', 'field_5bef4a2d536b8'),
(270, 6, 'metodologia_1_contenido', 'Se extraen los requisitos del producto de software. En esta etapa resulta fundamental la habilidad y experiencia en la ingeniería del software, para reconocer y mejorar aquellos requisitos que resulten incompletos, ambiguos o contradictorios. Durante esta etapa es imprescindible una comunicación clara y diáfana, que facilite el diálogo entre los especialistas y el cliente.'),
(271, 6, '_metodologia_1_contenido', 'field_5bef4a50536b9'),
(272, 6, 'metodologia_2_imagen', '43'),
(273, 6, '_metodologia_2_imagen', 'field_5bef4a80373d8'),
(274, 6, 'metodologia_2_titulo', '2. Especificación.'),
(275, 6, '_metodologia_2_titulo', 'field_5bef4af62fbb7'),
(276, 6, 'metodologia_2_contenido', 'Consiste en la descripción detallada y rigurosa del software que se creará. Es importante describir el comportamiento esperado y su posible interacción con los usuarios, así como con otros sistemas.'),
(277, 6, '_metodologia_2_contenido', 'field_5bef4b4d62fa5'),
(278, 6, 'metodologia_3_imagen', '44'),
(279, 6, '_metodologia_3_imagen', 'field_5bef4a7f373d7'),
(280, 6, 'metodologia_3_titulo', '3. Diseño y Arquitectura.'),
(281, 6, '_metodologia_3_titulo', 'field_5bef4af62fbb6'),
(282, 6, 'metodologia_3_contenido', 'En esta etapa se describe el funcionamiento general del software. Se incorporan consideraciones de la implementación tecnológica – tipo de hardware, red, etc. -. Se diseñan los componentes del sistema que brindarán las funcionalidades descritas con anterioridad (segunda etapa). Generalmente el diseño y la arquitectura se realizan gracias a diagramas que permiten describir las interacciones entre las entidades y su secuenciado.'),
(283, 6, '_metodologia_3_contenido', 'field_5bef4b4c62fa4'),
(284, 6, 'metodologia_4_imagen', '45'),
(285, 6, '_metodologia_4_imagen', 'field_5bef4a7e373d6'),
(286, 6, 'metodologia_4_titulo', '4. Programación.'),
(287, 6, '_metodologia_4_titulo', 'field_5bef4af52fbb5'),
(288, 6, 'metodologia_4_contenido', 'Este es uno de los pasos fundamentales del proceso. Permite traducir a códigos de programación las necesidades e intereses del cliente. Es la etapa que muestra los resultados más tangibles, aunque, estos resultados comienzan su desarrollo desde las primeras fases del trabajo. Resulta fundamental haber recorrido satisfactoriamente las etapas anteriores, para que el proceso de programación resulte sencillo y concluya en el menor tiempo posible.'),
(289, 6, '_metodologia_4_contenido', 'field_5bef4b4b62fa3'),
(290, 6, 'metodologia_5_imagen', '46'),
(291, 6, '_metodologia_5_imagen', 'field_5bef4a7c373d5'),
(292, 6, 'metodologia_5_titulo', '5. Prueba.'),
(293, 6, '_metodologia_5_titulo', 'field_5bef4af42fbb4'),
(294, 6, 'metodologia_5_contenido', 'Consiste en comprobar que el software sea capaz de realizar todas las tareas que le fueron indicadas. Resulta útil y de mayor seguridad, realizar las pruebas a distintos niveles y por equipos diferenciados. Los especialistas podrán ampliarle mucho más sobre las posibilidades de evaluar el producto, todo para que el resultado final que reciba al usuario, no presente errores en la programación.'),
(295, 6, '_metodologia_5_contenido', 'field_5bef4b4b62fa2'),
(296, 6, 'metodologia_6_imagen', '47'),
(297, 6, '_metodologia_6_imagen', 'field_5bef4a7b373d4'),
(298, 6, 'metodologia_6_titulo', '6.	Documentación.'),
(299, 6, '_metodologia_6_titulo', 'field_5bef4af42fbb3'),
(300, 6, 'metodologia_6_contenido', 'En esta etapa, los especialistas realizan el manual de usuario y un manual técnico, destinado a facilitar el mantenimiento futuro y posibles ampliaciones del sistema. Esta etapa se comienza a desarrollar desde la primera fase, pero se dan por concluidas con el cierre de las sesiones de prueba (Quinta etapa).'),
(301, 6, '_metodologia_6_contenido', 'field_5bef4b4a62fa1'),
(303, 42, '_wp_attached_file', '2018/11/Service1.png'),
(304, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:360;s:4:\"file\";s:20:\"2018/11/Service1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Service1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Service1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(305, 43, '_wp_attached_file', '2018/11/Service2.png'),
(306, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:360;s:4:\"file\";s:20:\"2018/11/Service2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Service2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Service2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(307, 44, '_wp_attached_file', '2018/11/Service3.png'),
(308, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:360;s:4:\"file\";s:20:\"2018/11/Service3.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Service3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Service3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(309, 45, '_wp_attached_file', '2018/11/Service4.png'),
(310, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:360;s:4:\"file\";s:20:\"2018/11/Service4.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Service4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Service4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(311, 46, '_wp_attached_file', '2018/11/Service5.png'),
(312, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:360;s:4:\"file\";s:20:\"2018/11/Service5.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Service5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Service5-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(313, 47, '_wp_attached_file', '2018/11/Service6.png'),
(314, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:360;s:4:\"file\";s:20:\"2018/11/Service6.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Service6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Service6-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(315, 48, '_wp_attached_file', '2018/11/Service7.png'),
(316, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:360;s:4:\"file\";s:20:\"2018/11/Service7.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Service7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Service7-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(317, 49, 'metodologia_titulo', 'Nuestra Metodología.'),
(318, 49, '_metodologia_titulo', 'field_5bef4886536b5'),
(319, 49, 'metodologia_resumen', 'El orden es el valor que se refiere a la buena disposición de las cosas entre si y a saber poner cada una de ellas en el lugar que le corresponde. La experiencia acumulada por nuestros analistas en sus más de 15 años dedicados al desarrollo de proyectos de software, nos dio como resultado una metodología de 7 etapas secuenciales para un proyecto exitoso.'),
(320, 49, '_metodologia_resumen', 'field_5bef48e9536b6'),
(321, 49, 'metodologia_1_imagen', '42'),
(322, 49, '_metodologia_1_imagen', 'field_5bef4901536b7'),
(323, 49, 'metodologia_1_titulo', '1. Análisis de requerimientos.'),
(324, 49, '_metodologia_1_titulo', 'field_5bef4a2d536b8'),
(325, 49, 'metodologia_1_contenido', 'Se extraen los requisitos del producto de software. En esta etapa resulta fundamental la habilidad y experiencia en la ingeniería del software, para reconocer y mejorar aquellos requisitos que resulten incompletos, ambiguos o contradictorios. Durante esta etapa es imprescindible una comunicación clara y diáfana, que facilite el diálogo entre los especialistas y el cliente.'),
(326, 49, '_metodologia_1_contenido', 'field_5bef4a50536b9'),
(327, 49, 'metodologia_2_imagen', '43'),
(328, 49, '_metodologia_2_imagen', 'field_5bef4a80373d8'),
(329, 49, 'metodologia_2_titulo', '2. Especificación.'),
(330, 49, '_metodologia_2_titulo', 'field_5bef4af62fbb7'),
(331, 49, 'metodologia_2_contenido', 'Consiste en la descripción detallada y rigurosa del software que se creará. Es importante describir el comportamiento esperado y su posible interacción con los usuarios, así como con otros sistemas.'),
(332, 49, '_metodologia_2_contenido', 'field_5bef4b4d62fa5'),
(333, 49, 'metodologia_3_imagen', '44'),
(334, 49, '_metodologia_3_imagen', 'field_5bef4a7f373d7'),
(335, 49, 'metodologia_3_titulo', '3. Diseño y Arquitectura.'),
(336, 49, '_metodologia_3_titulo', 'field_5bef4af62fbb6'),
(337, 49, 'metodologia_3_contenido', 'En esta etapa se describe el funcionamiento general del software. Se incorporan consideraciones de la implementación tecnológica – tipo de hardware, red, etc. -. Se diseñan los componentes del sistema que brindarán las funcionalidades descritas con anterioridad (segunda etapa). Generalmente el diseño y la arquitectura se realizan gracias a diagramas que permiten describir las interacciones entre las entidades y su secuenciado.'),
(338, 49, '_metodologia_3_contenido', 'field_5bef4b4c62fa4'),
(339, 49, 'metodologia_4_imagen', '45'),
(340, 49, '_metodologia_4_imagen', 'field_5bef4a7e373d6'),
(341, 49, 'metodologia_4_titulo', '4. Programación.'),
(342, 49, '_metodologia_4_titulo', 'field_5bef4af52fbb5'),
(343, 49, 'metodologia_4_contenido', 'Este es uno de los pasos fundamentales del proceso. Permite traducir a códigos de programación las necesidades e intereses del cliente. Es la etapa que muestra los resultados más tangibles, aunque, estos resultados comienzan su desarrollo desde las primeras fases del trabajo. Resulta fundamental haber recorrido satisfactoriamente las etapas anteriores, para que el proceso de programación resulte sencillo y concluya en el menor tiempo posible.'),
(344, 49, '_metodologia_4_contenido', 'field_5bef4b4b62fa3'),
(345, 49, 'metodologia_5_imagen', '46'),
(346, 49, '_metodologia_5_imagen', 'field_5bef4a7c373d5'),
(347, 49, 'metodologia_5_titulo', '5. Prueba.'),
(348, 49, '_metodologia_5_titulo', 'field_5bef4af42fbb4');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(349, 49, 'metodologia_5_contenido', 'Consiste en comprobar que el software sea capaz de realizar todas las tareas que le fueron indicadas. Resulta útil y de mayor seguridad, realizar las pruebas a distintos niveles y por equipos diferenciados. Los especialistas podrán ampliarle mucho más sobre las posibilidades de evaluar el producto, todo para que el resultado final que reciba al usuario, no presente errores en la programación.'),
(350, 49, '_metodologia_5_contenido', 'field_5bef4b4b62fa2'),
(351, 49, 'metodologia_6_imagen', '47'),
(352, 49, '_metodologia_6_imagen', 'field_5bef4a7b373d4'),
(353, 49, 'metodologia_6_titulo', '6.	Documentación.'),
(354, 49, '_metodologia_6_titulo', 'field_5bef4af42fbb3'),
(355, 49, 'metodologia_6_contenido', 'En esta etapa, los especialistas realizan el manual de usuario y un manual técnico, destinado a facilitar el mantenimiento futuro y posibles ampliaciones del sistema. Esta etapa se comienza a desarrollar desde la primera fase, pero se dan por concluidas con el cierre de las sesiones de prueba (Quinta etapa).'),
(356, 49, '_metodologia_6_contenido', 'field_5bef4b4a62fa1'),
(357, 6, 'metodologia_resumen', 'El orden es el valor que se refiere a la buena disposición de las cosas entre si y a saber poner cada una de ellas en el lugar que le corresponde. La experiencia acumulada por nuestros analistas en sus más de 15 años dedicados al desarrollo de proyectos de software, nos dio como resultado una metodología de 7 etapas secuenciales para un proyecto exitoso.'),
(358, 6, '_metodologia_resumen', 'field_5bef48e9536b6'),
(359, 8, 'field_5bf054c8acf9c', 'a:11:{s:3:\"key\";s:19:\"field_5bf054c8acf9c\";s:5:\"label\";s:20:\"Metodologia 7 imagen\";s:4:\"name\";s:20:\"metodologia_7_imagen\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:20;}'),
(360, 8, 'field_5bf054daacf9d', 'a:14:{s:3:\"key\";s:19:\"field_5bf054daacf9d\";s:5:\"label\";s:21:\"Metodologia 7 Título\";s:4:\"name\";s:20:\"metodologia_7_titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:21;}'),
(361, 8, 'field_5bf054ebacf9e', 'a:13:{s:3:\"key\";s:19:\"field_5bf054ebacf9e\";s:5:\"label\";s:23:\"Metodologia 7 Contenido\";s:4:\"name\";s:23:\"metodologia_7_contenido\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:22;}'),
(364, 50, 'metodologia_titulo', 'Nuestra Metodología.'),
(365, 50, '_metodologia_titulo', 'field_5bef4886536b5'),
(366, 50, 'metodologia_resumen', 'El orden es el valor que se refiere a la buena disposición de las cosas entre si y a saber poner cada una de ellas en el lugar que le corresponde. La experiencia acumulada por nuestros analistas en sus más de 15 años dedicados al desarrollo de proyectos de software, nos dio como resultado una metodología de 7 etapas secuenciales para un proyecto exitoso.'),
(367, 50, '_metodologia_resumen', 'field_5bef48e9536b6'),
(368, 50, 'metodologia_1_imagen', '42'),
(369, 50, '_metodologia_1_imagen', 'field_5bef4901536b7'),
(370, 50, 'metodologia_1_titulo', '1. Análisis de requerimientos.'),
(371, 50, '_metodologia_1_titulo', 'field_5bef4a2d536b8'),
(372, 50, 'metodologia_1_contenido', 'Se extraen los requisitos del producto de software. En esta etapa resulta fundamental la habilidad y experiencia en la ingeniería del software, para reconocer y mejorar aquellos requisitos que resulten incompletos, ambiguos o contradictorios. Durante esta etapa es imprescindible una comunicación clara y diáfana, que facilite el diálogo entre los especialistas y el cliente.'),
(373, 50, '_metodologia_1_contenido', 'field_5bef4a50536b9'),
(374, 50, 'metodologia_2_imagen', '43'),
(375, 50, '_metodologia_2_imagen', 'field_5bef4a80373d8'),
(376, 50, 'metodologia_2_titulo', '2. Especificación.'),
(377, 50, '_metodologia_2_titulo', 'field_5bef4af62fbb7'),
(378, 50, 'metodologia_2_contenido', 'Consiste en la descripción detallada y rigurosa del software que se creará. Es importante describir el comportamiento esperado y su posible interacción con los usuarios, así como con otros sistemas.'),
(379, 50, '_metodologia_2_contenido', 'field_5bef4b4d62fa5'),
(380, 50, 'metodologia_3_imagen', '44'),
(381, 50, '_metodologia_3_imagen', 'field_5bef4a7f373d7'),
(382, 50, 'metodologia_3_titulo', '3. Diseño y Arquitectura.'),
(383, 50, '_metodologia_3_titulo', 'field_5bef4af62fbb6'),
(384, 50, 'metodologia_3_contenido', 'En esta etapa se describe el funcionamiento general del software. Se incorporan consideraciones de la implementación tecnológica – tipo de hardware, red, etc. -. Se diseñan los componentes del sistema que brindarán las funcionalidades descritas con anterioridad (segunda etapa). Generalmente el diseño y la arquitectura se realizan gracias a diagramas que permiten describir las interacciones entre las entidades y su secuenciado.'),
(385, 50, '_metodologia_3_contenido', 'field_5bef4b4c62fa4'),
(386, 50, 'metodologia_4_imagen', '45'),
(387, 50, '_metodologia_4_imagen', 'field_5bef4a7e373d6'),
(388, 50, 'metodologia_4_titulo', '4. Programación.'),
(389, 50, '_metodologia_4_titulo', 'field_5bef4af52fbb5'),
(390, 50, 'metodologia_4_contenido', 'Este es uno de los pasos fundamentales del proceso. Permite traducir a códigos de programación las necesidades e intereses del cliente. Es la etapa que muestra los resultados más tangibles, aunque, estos resultados comienzan su desarrollo desde las primeras fases del trabajo. Resulta fundamental haber recorrido satisfactoriamente las etapas anteriores, para que el proceso de programación resulte sencillo y concluya en el menor tiempo posible.'),
(391, 50, '_metodologia_4_contenido', 'field_5bef4b4b62fa3'),
(392, 50, 'metodologia_5_imagen', '46'),
(393, 50, '_metodologia_5_imagen', 'field_5bef4a7c373d5'),
(394, 50, 'metodologia_5_titulo', '5. Prueba.'),
(395, 50, '_metodologia_5_titulo', 'field_5bef4af42fbb4'),
(396, 50, 'metodologia_5_contenido', 'Consiste en comprobar que el software sea capaz de realizar todas las tareas que le fueron indicadas. Resulta útil y de mayor seguridad, realizar las pruebas a distintos niveles y por equipos diferenciados. Los especialistas podrán ampliarle mucho más sobre las posibilidades de evaluar el producto, todo para que el resultado final que reciba al usuario, no presente errores en la programación.'),
(397, 50, '_metodologia_5_contenido', 'field_5bef4b4b62fa2'),
(398, 50, 'metodologia_6_imagen', '47'),
(399, 50, '_metodologia_6_imagen', 'field_5bef4a7b373d4'),
(400, 50, 'metodologia_6_titulo', '6.	Documentación.'),
(401, 50, '_metodologia_6_titulo', 'field_5bef4af42fbb3'),
(402, 50, 'metodologia_6_contenido', 'En esta etapa, los especialistas realizan el manual de usuario y un manual técnico, destinado a facilitar el mantenimiento futuro y posibles ampliaciones del sistema. Esta etapa se comienza a desarrollar desde la primera fase, pero se dan por concluidas con el cierre de las sesiones de prueba (Quinta etapa).'),
(403, 50, '_metodologia_6_contenido', 'field_5bef4b4a62fa1'),
(404, 50, 'metodologia_7_imagen', '48'),
(405, 50, '_metodologia_7_imagen', 'field_5bf054c8acf9c'),
(406, 50, 'metodologia_7_titulo', '7. Mantenimiento'),
(407, 50, '_metodologia_7_titulo', 'field_5bf054daacf9d'),
(408, 50, 'metodologia_7_contenido', 'Esta es la última parte de todo el proceso conjunto entre especialistas y cliente. Se desarrolla un mantenimiento correctivo (rectificación de errores) y un mantenimiento evolutivo (perfeccionamiento de las funcionalidades y capacidad de respuesta a nuevos requisitos que puedan surgir).'),
(409, 50, '_metodologia_7_contenido', 'field_5bf054ebacf9e'),
(410, 6, 'metodologia_7_imagen', '48'),
(411, 6, '_metodologia_7_imagen', 'field_5bf054c8acf9c'),
(412, 6, 'metodologia_7_titulo', '7. Mantenimiento'),
(413, 6, '_metodologia_7_titulo', 'field_5bf054daacf9d'),
(414, 6, 'metodologia_7_contenido', 'Esta es la última parte de todo el proceso conjunto entre especialistas y cliente. Se desarrolla un mantenimiento correctivo (rectificación de errores) y un mantenimiento evolutivo (perfeccionamiento de las funcionalidades y capacidad de respuesta a nuevos requisitos que puedan surgir).'),
(415, 6, '_metodologia_7_contenido', 'field_5bf054ebacf9e'),
(416, 8, 'field_5bf05ba257a7c', 'a:14:{s:3:\"key\";s:19:\"field_5bf05ba257a7c\";s:5:\"label\";s:18:\"Portafolio Título\";s:4:\"name\";s:17:\"portafolio_titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:23;}'),
(418, 8, 'field_5bf05bdcf1d6a', 'a:14:{s:3:\"key\";s:19:\"field_5bf05bdcf1d6a\";s:5:\"label\";s:20:\"Portafolio Subtitulo\";s:4:\"name\";s:20:\"portafolio_subtitulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:24;}'),
(420, 51, 'metodologia_titulo', 'Nuestra Metodología.'),
(421, 51, '_metodologia_titulo', 'field_5bef4886536b5'),
(422, 51, 'metodologia_resumen', 'El orden es el valor que se refiere a la buena disposición de las cosas entre si y a saber poner cada una de ellas en el lugar que le corresponde. La experiencia acumulada por nuestros analistas en sus más de 15 años dedicados al desarrollo de proyectos de software, nos dio como resultado una metodología de 7 etapas secuenciales para un proyecto exitoso.'),
(423, 51, '_metodologia_resumen', 'field_5bef48e9536b6'),
(424, 51, 'metodologia_1_imagen', '42'),
(425, 51, '_metodologia_1_imagen', 'field_5bef4901536b7'),
(426, 51, 'metodologia_1_titulo', '1. Análisis de requerimientos.'),
(427, 51, '_metodologia_1_titulo', 'field_5bef4a2d536b8'),
(428, 51, 'metodologia_1_contenido', 'Se extraen los requisitos del producto de software. En esta etapa resulta fundamental la habilidad y experiencia en la ingeniería del software, para reconocer y mejorar aquellos requisitos que resulten incompletos, ambiguos o contradictorios. Durante esta etapa es imprescindible una comunicación clara y diáfana, que facilite el diálogo entre los especialistas y el cliente.'),
(429, 51, '_metodologia_1_contenido', 'field_5bef4a50536b9'),
(430, 51, 'metodologia_2_imagen', '43'),
(431, 51, '_metodologia_2_imagen', 'field_5bef4a80373d8'),
(432, 51, 'metodologia_2_titulo', '2. Especificación.'),
(433, 51, '_metodologia_2_titulo', 'field_5bef4af62fbb7'),
(434, 51, 'metodologia_2_contenido', 'Consiste en la descripción detallada y rigurosa del software que se creará. Es importante describir el comportamiento esperado y su posible interacción con los usuarios, así como con otros sistemas.'),
(435, 51, '_metodologia_2_contenido', 'field_5bef4b4d62fa5'),
(436, 51, 'metodologia_3_imagen', '44'),
(437, 51, '_metodologia_3_imagen', 'field_5bef4a7f373d7'),
(438, 51, 'metodologia_3_titulo', '3. Diseño y Arquitectura.'),
(439, 51, '_metodologia_3_titulo', 'field_5bef4af62fbb6'),
(440, 51, 'metodologia_3_contenido', 'En esta etapa se describe el funcionamiento general del software. Se incorporan consideraciones de la implementación tecnológica – tipo de hardware, red, etc. -. Se diseñan los componentes del sistema que brindarán las funcionalidades descritas con anterioridad (segunda etapa). Generalmente el diseño y la arquitectura se realizan gracias a diagramas que permiten describir las interacciones entre las entidades y su secuenciado.'),
(441, 51, '_metodologia_3_contenido', 'field_5bef4b4c62fa4'),
(442, 51, 'metodologia_4_imagen', '45'),
(443, 51, '_metodologia_4_imagen', 'field_5bef4a7e373d6'),
(444, 51, 'metodologia_4_titulo', '4. Programación.'),
(445, 51, '_metodologia_4_titulo', 'field_5bef4af52fbb5'),
(446, 51, 'metodologia_4_contenido', 'Este es uno de los pasos fundamentales del proceso. Permite traducir a códigos de programación las necesidades e intereses del cliente. Es la etapa que muestra los resultados más tangibles, aunque, estos resultados comienzan su desarrollo desde las primeras fases del trabajo. Resulta fundamental haber recorrido satisfactoriamente las etapas anteriores, para que el proceso de programación resulte sencillo y concluya en el menor tiempo posible.'),
(447, 51, '_metodologia_4_contenido', 'field_5bef4b4b62fa3'),
(448, 51, 'metodologia_5_imagen', '46'),
(449, 51, '_metodologia_5_imagen', 'field_5bef4a7c373d5'),
(450, 51, 'metodologia_5_titulo', '5. Prueba.'),
(451, 51, '_metodologia_5_titulo', 'field_5bef4af42fbb4'),
(452, 51, 'metodologia_5_contenido', 'Consiste en comprobar que el software sea capaz de realizar todas las tareas que le fueron indicadas. Resulta útil y de mayor seguridad, realizar las pruebas a distintos niveles y por equipos diferenciados. Los especialistas podrán ampliarle mucho más sobre las posibilidades de evaluar el producto, todo para que el resultado final que reciba al usuario, no presente errores en la programación.'),
(453, 51, '_metodologia_5_contenido', 'field_5bef4b4b62fa2'),
(454, 51, 'metodologia_6_imagen', '47'),
(455, 51, '_metodologia_6_imagen', 'field_5bef4a7b373d4'),
(456, 51, 'metodologia_6_titulo', '6.	Documentación.'),
(457, 51, '_metodologia_6_titulo', 'field_5bef4af42fbb3'),
(458, 51, 'metodologia_6_contenido', 'En esta etapa, los especialistas realizan el manual de usuario y un manual técnico, destinado a facilitar el mantenimiento futuro y posibles ampliaciones del sistema. Esta etapa se comienza a desarrollar desde la primera fase, pero se dan por concluidas con el cierre de las sesiones de prueba (Quinta etapa).'),
(459, 51, '_metodologia_6_contenido', 'field_5bef4b4a62fa1'),
(460, 51, 'metodologia_7_imagen', '48'),
(461, 51, '_metodologia_7_imagen', 'field_5bf054c8acf9c'),
(462, 51, 'metodologia_7_titulo', '7. Mantenimiento'),
(463, 51, '_metodologia_7_titulo', 'field_5bf054daacf9d'),
(464, 51, 'metodologia_7_contenido', 'Esta es la última parte de todo el proceso conjunto entre especialistas y cliente. Se desarrolla un mantenimiento correctivo (rectificación de errores) y un mantenimiento evolutivo (perfeccionamiento de las funcionalidades y capacidad de respuesta a nuevos requisitos que puedan surgir).'),
(465, 51, '_metodologia_7_contenido', 'field_5bf054ebacf9e'),
(466, 51, 'portafolio_titulo', 'Portafolio'),
(467, 51, '_portafolio_titulo', 'field_5bf05ba257a7c'),
(468, 51, 'portafolio_subtitulo', '\"Los hechos no dejan de existir aunque se los ignore.\" <b>Aldous Huxley</b>'),
(469, 51, '_portafolio_subtitulo', 'field_5bf05bdcf1d6a'),
(470, 6, 'portafolio_titulo', 'Portafolio'),
(471, 6, '_portafolio_titulo', 'field_5bf05ba257a7c'),
(472, 6, 'portafolio_subtitulo', '\"Los hechos no dejan de existir aunque se los ignore.\" <b>Aldous Huxley</b>'),
(473, 6, '_portafolio_subtitulo', 'field_5bf05bdcf1d6a'),
(474, 8, 'field_5bf43f9f6f88a', 'a:14:{s:3:\"key\";s:19:\"field_5bf43f9f6f88a\";s:5:\"label\";s:15:\"Nosotros Titulo\";s:4:\"name\";s:15:\"nosotros_titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:25;}'),
(475, 8, 'field_5bf43fbe6f88b', 'a:13:{s:3:\"key\";s:19:\"field_5bf43fbe6f88b\";s:5:\"label\";s:18:\"Nosotros Contenido\";s:4:\"name\";s:18:\"nosotros_contenido\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:26;}'),
(477, 52, 'metodologia_titulo', 'Nuestra Metodología.'),
(478, 52, '_metodologia_titulo', 'field_5bef4886536b5'),
(479, 52, 'metodologia_resumen', 'El orden es el valor que se refiere a la buena disposición de las cosas entre si y a saber poner cada una de ellas en el lugar que le corresponde. La experiencia acumulada por nuestros analistas en sus más de 15 años dedicados al desarrollo de proyectos de software, nos dio como resultado una metodología de 7 etapas secuenciales para un proyecto exitoso.'),
(480, 52, '_metodologia_resumen', 'field_5bef48e9536b6'),
(481, 52, 'metodologia_1_imagen', '42'),
(482, 52, '_metodologia_1_imagen', 'field_5bef4901536b7'),
(483, 52, 'metodologia_1_titulo', '1. Análisis de requerimientos.'),
(484, 52, '_metodologia_1_titulo', 'field_5bef4a2d536b8'),
(485, 52, 'metodologia_1_contenido', 'Se extraen los requisitos del producto de software. En esta etapa resulta fundamental la habilidad y experiencia en la ingeniería del software, para reconocer y mejorar aquellos requisitos que resulten incompletos, ambiguos o contradictorios. Durante esta etapa es imprescindible una comunicación clara y diáfana, que facilite el diálogo entre los especialistas y el cliente.'),
(486, 52, '_metodologia_1_contenido', 'field_5bef4a50536b9'),
(487, 52, 'metodologia_2_imagen', '43'),
(488, 52, '_metodologia_2_imagen', 'field_5bef4a80373d8'),
(489, 52, 'metodologia_2_titulo', '2. Especificación.'),
(490, 52, '_metodologia_2_titulo', 'field_5bef4af62fbb7'),
(491, 52, 'metodologia_2_contenido', 'Consiste en la descripción detallada y rigurosa del software que se creará. Es importante describir el comportamiento esperado y su posible interacción con los usuarios, así como con otros sistemas.'),
(492, 52, '_metodologia_2_contenido', 'field_5bef4b4d62fa5'),
(493, 52, 'metodologia_3_imagen', '44'),
(494, 52, '_metodologia_3_imagen', 'field_5bef4a7f373d7'),
(495, 52, 'metodologia_3_titulo', '3. Diseño y Arquitectura.'),
(496, 52, '_metodologia_3_titulo', 'field_5bef4af62fbb6'),
(497, 52, 'metodologia_3_contenido', 'En esta etapa se describe el funcionamiento general del software. Se incorporan consideraciones de la implementación tecnológica – tipo de hardware, red, etc. -. Se diseñan los componentes del sistema que brindarán las funcionalidades descritas con anterioridad (segunda etapa). Generalmente el diseño y la arquitectura se realizan gracias a diagramas que permiten describir las interacciones entre las entidades y su secuenciado.'),
(498, 52, '_metodologia_3_contenido', 'field_5bef4b4c62fa4'),
(499, 52, 'metodologia_4_imagen', '45'),
(500, 52, '_metodologia_4_imagen', 'field_5bef4a7e373d6'),
(501, 52, 'metodologia_4_titulo', '4. Programación.'),
(502, 52, '_metodologia_4_titulo', 'field_5bef4af52fbb5'),
(503, 52, 'metodologia_4_contenido', 'Este es uno de los pasos fundamentales del proceso. Permite traducir a códigos de programación las necesidades e intereses del cliente. Es la etapa que muestra los resultados más tangibles, aunque, estos resultados comienzan su desarrollo desde las primeras fases del trabajo. Resulta fundamental haber recorrido satisfactoriamente las etapas anteriores, para que el proceso de programación resulte sencillo y concluya en el menor tiempo posible.'),
(504, 52, '_metodologia_4_contenido', 'field_5bef4b4b62fa3'),
(505, 52, 'metodologia_5_imagen', '46'),
(506, 52, '_metodologia_5_imagen', 'field_5bef4a7c373d5'),
(507, 52, 'metodologia_5_titulo', '5. Prueba.'),
(508, 52, '_metodologia_5_titulo', 'field_5bef4af42fbb4'),
(509, 52, 'metodologia_5_contenido', 'Consiste en comprobar que el software sea capaz de realizar todas las tareas que le fueron indicadas. Resulta útil y de mayor seguridad, realizar las pruebas a distintos niveles y por equipos diferenciados. Los especialistas podrán ampliarle mucho más sobre las posibilidades de evaluar el producto, todo para que el resultado final que reciba al usuario, no presente errores en la programación.'),
(510, 52, '_metodologia_5_contenido', 'field_5bef4b4b62fa2'),
(511, 52, 'metodologia_6_imagen', '47'),
(512, 52, '_metodologia_6_imagen', 'field_5bef4a7b373d4'),
(513, 52, 'metodologia_6_titulo', '6.	Documentación.'),
(514, 52, '_metodologia_6_titulo', 'field_5bef4af42fbb3'),
(515, 52, 'metodologia_6_contenido', 'En esta etapa, los especialistas realizan el manual de usuario y un manual técnico, destinado a facilitar el mantenimiento futuro y posibles ampliaciones del sistema. Esta etapa se comienza a desarrollar desde la primera fase, pero se dan por concluidas con el cierre de las sesiones de prueba (Quinta etapa).'),
(516, 52, '_metodologia_6_contenido', 'field_5bef4b4a62fa1'),
(517, 52, 'metodologia_7_imagen', '48'),
(518, 52, '_metodologia_7_imagen', 'field_5bf054c8acf9c'),
(519, 52, 'metodologia_7_titulo', '7. Mantenimiento'),
(520, 52, '_metodologia_7_titulo', 'field_5bf054daacf9d'),
(521, 52, 'metodologia_7_contenido', 'Esta es la última parte de todo el proceso conjunto entre especialistas y cliente. Se desarrolla un mantenimiento correctivo (rectificación de errores) y un mantenimiento evolutivo (perfeccionamiento de las funcionalidades y capacidad de respuesta a nuevos requisitos que puedan surgir).'),
(522, 52, '_metodologia_7_contenido', 'field_5bf054ebacf9e'),
(523, 52, 'portafolio_titulo', 'Portafolio'),
(524, 52, '_portafolio_titulo', 'field_5bf05ba257a7c'),
(525, 52, 'portafolio_subtitulo', '\"Los hechos no dejan de existir aunque se los ignore.\" <b>Aldous Huxley</b>'),
(526, 52, '_portafolio_subtitulo', 'field_5bf05bdcf1d6a'),
(527, 52, 'nosotros_titulo', 'NOSOTROS'),
(528, 52, '_nosotros_titulo', 'field_5bf43f9f6f88a'),
(529, 52, 'nosotros_contenido', 'Somos una organización que trabaja para satisfacer las necesidades y los intereses de nuestros clientes. Es por ello que ofrecemos soluciones tecnológicas diseñadas a la medida de cada proyecto. Contamos con un grupo multidisciplinario sumamente preparado que se encuentra en constante superación, atendiendo a los cambios del mundo moderno.<br><br>\r\n\r\nActualmente ofrecemos una gran diversidad de alternativas que van enfocadas a brindar soluciones integrales. La producción de software es para nosotros la herramienta principal de trabajo dentro de un sistema que abarca otros servicios como soportes, acompañamiento, tecnología on line, asesoría e integración de procesos.'),
(530, 52, '_nosotros_contenido', 'field_5bf43fbe6f88b'),
(531, 6, 'nosotros_titulo', 'NOSOTROS'),
(532, 6, '_nosotros_titulo', 'field_5bf43f9f6f88a'),
(533, 6, 'nosotros_contenido', 'Somos una organización que trabaja para satisfacer las necesidades y los intereses de nuestros clientes. Es por ello que ofrecemos soluciones tecnológicas diseñadas a la medida de cada proyecto. Contamos con un grupo multidisciplinario sumamente preparado que se encuentra en constante superación, atendiendo a los cambios del mundo moderno.<br><br>\r\n\r\nActualmente ofrecemos una gran diversidad de alternativas que van enfocadas a brindar soluciones integrales. La producción de software es para nosotros la herramienta principal de trabajo dentro de un sistema que abarca otros servicios como soportes, acompañamiento, tecnología on line, asesoría e integración de procesos.'),
(534, 6, '_nosotros_contenido', 'field_5bf43fbe6f88b'),
(535, 8, 'field_5bf44063bd828', 'a:14:{s:3:\"key\";s:19:\"field_5bf44063bd828\";s:5:\"label\";s:13:\"Skills Titulo\";s:4:\"name\";s:13:\"skills_titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:27;}'),
(537, 53, 'metodologia_titulo', 'Nuestra Metodología.'),
(538, 53, '_metodologia_titulo', 'field_5bef4886536b5'),
(539, 53, 'metodologia_resumen', 'El orden es el valor que se refiere a la buena disposición de las cosas entre si y a saber poner cada una de ellas en el lugar que le corresponde. La experiencia acumulada por nuestros analistas en sus más de 15 años dedicados al desarrollo de proyectos de software, nos dio como resultado una metodología de 7 etapas secuenciales para un proyecto exitoso.'),
(540, 53, '_metodologia_resumen', 'field_5bef48e9536b6'),
(541, 53, 'metodologia_1_imagen', '42'),
(542, 53, '_metodologia_1_imagen', 'field_5bef4901536b7'),
(543, 53, 'metodologia_1_titulo', '1. Análisis de requerimientos.'),
(544, 53, '_metodologia_1_titulo', 'field_5bef4a2d536b8'),
(545, 53, 'metodologia_1_contenido', 'Se extraen los requisitos del producto de software. En esta etapa resulta fundamental la habilidad y experiencia en la ingeniería del software, para reconocer y mejorar aquellos requisitos que resulten incompletos, ambiguos o contradictorios. Durante esta etapa es imprescindible una comunicación clara y diáfana, que facilite el diálogo entre los especialistas y el cliente.'),
(546, 53, '_metodologia_1_contenido', 'field_5bef4a50536b9'),
(547, 53, 'metodologia_2_imagen', '43'),
(548, 53, '_metodologia_2_imagen', 'field_5bef4a80373d8'),
(549, 53, 'metodologia_2_titulo', '2. Especificación.'),
(550, 53, '_metodologia_2_titulo', 'field_5bef4af62fbb7'),
(551, 53, 'metodologia_2_contenido', 'Consiste en la descripción detallada y rigurosa del software que se creará. Es importante describir el comportamiento esperado y su posible interacción con los usuarios, así como con otros sistemas.'),
(552, 53, '_metodologia_2_contenido', 'field_5bef4b4d62fa5'),
(553, 53, 'metodologia_3_imagen', '44'),
(554, 53, '_metodologia_3_imagen', 'field_5bef4a7f373d7'),
(555, 53, 'metodologia_3_titulo', '3. Diseño y Arquitectura.'),
(556, 53, '_metodologia_3_titulo', 'field_5bef4af62fbb6'),
(557, 53, 'metodologia_3_contenido', 'En esta etapa se describe el funcionamiento general del software. Se incorporan consideraciones de la implementación tecnológica – tipo de hardware, red, etc. -. Se diseñan los componentes del sistema que brindarán las funcionalidades descritas con anterioridad (segunda etapa). Generalmente el diseño y la arquitectura se realizan gracias a diagramas que permiten describir las interacciones entre las entidades y su secuenciado.'),
(558, 53, '_metodologia_3_contenido', 'field_5bef4b4c62fa4'),
(559, 53, 'metodologia_4_imagen', '45'),
(560, 53, '_metodologia_4_imagen', 'field_5bef4a7e373d6'),
(561, 53, 'metodologia_4_titulo', '4. Programación.'),
(562, 53, '_metodologia_4_titulo', 'field_5bef4af52fbb5'),
(563, 53, 'metodologia_4_contenido', 'Este es uno de los pasos fundamentales del proceso. Permite traducir a códigos de programación las necesidades e intereses del cliente. Es la etapa que muestra los resultados más tangibles, aunque, estos resultados comienzan su desarrollo desde las primeras fases del trabajo. Resulta fundamental haber recorrido satisfactoriamente las etapas anteriores, para que el proceso de programación resulte sencillo y concluya en el menor tiempo posible.'),
(564, 53, '_metodologia_4_contenido', 'field_5bef4b4b62fa3'),
(565, 53, 'metodologia_5_imagen', '46'),
(566, 53, '_metodologia_5_imagen', 'field_5bef4a7c373d5'),
(567, 53, 'metodologia_5_titulo', '5. Prueba.'),
(568, 53, '_metodologia_5_titulo', 'field_5bef4af42fbb4'),
(569, 53, 'metodologia_5_contenido', 'Consiste en comprobar que el software sea capaz de realizar todas las tareas que le fueron indicadas. Resulta útil y de mayor seguridad, realizar las pruebas a distintos niveles y por equipos diferenciados. Los especialistas podrán ampliarle mucho más sobre las posibilidades de evaluar el producto, todo para que el resultado final que reciba al usuario, no presente errores en la programación.'),
(570, 53, '_metodologia_5_contenido', 'field_5bef4b4b62fa2'),
(571, 53, 'metodologia_6_imagen', '47'),
(572, 53, '_metodologia_6_imagen', 'field_5bef4a7b373d4'),
(573, 53, 'metodologia_6_titulo', '6.	Documentación.'),
(574, 53, '_metodologia_6_titulo', 'field_5bef4af42fbb3'),
(575, 53, 'metodologia_6_contenido', 'En esta etapa, los especialistas realizan el manual de usuario y un manual técnico, destinado a facilitar el mantenimiento futuro y posibles ampliaciones del sistema. Esta etapa se comienza a desarrollar desde la primera fase, pero se dan por concluidas con el cierre de las sesiones de prueba (Quinta etapa).'),
(576, 53, '_metodologia_6_contenido', 'field_5bef4b4a62fa1'),
(577, 53, 'metodologia_7_imagen', '48'),
(578, 53, '_metodologia_7_imagen', 'field_5bf054c8acf9c'),
(579, 53, 'metodologia_7_titulo', '7. Mantenimiento'),
(580, 53, '_metodologia_7_titulo', 'field_5bf054daacf9d'),
(581, 53, 'metodologia_7_contenido', 'Esta es la última parte de todo el proceso conjunto entre especialistas y cliente. Se desarrolla un mantenimiento correctivo (rectificación de errores) y un mantenimiento evolutivo (perfeccionamiento de las funcionalidades y capacidad de respuesta a nuevos requisitos que puedan surgir).'),
(582, 53, '_metodologia_7_contenido', 'field_5bf054ebacf9e'),
(583, 53, 'portafolio_titulo', 'Portafolio'),
(584, 53, '_portafolio_titulo', 'field_5bf05ba257a7c'),
(585, 53, 'portafolio_subtitulo', '\"Los hechos no dejan de existir aunque se los ignore.\" <b>Aldous Huxley</b>'),
(586, 53, '_portafolio_subtitulo', 'field_5bf05bdcf1d6a'),
(587, 53, 'nosotros_titulo', 'NOSOTROS'),
(588, 53, '_nosotros_titulo', 'field_5bf43f9f6f88a'),
(589, 53, 'nosotros_contenido', 'Somos una organización que trabaja para satisfacer las necesidades y los intereses de nuestros clientes. Es por ello que ofrecemos soluciones tecnológicas diseñadas a la medida de cada proyecto. Contamos con un grupo multidisciplinario sumamente preparado que se encuentra en constante superación, atendiendo a los cambios del mundo moderno.<br><br>\r\n\r\nActualmente ofrecemos una gran diversidad de alternativas que van enfocadas a brindar soluciones integrales. La producción de software es para nosotros la herramienta principal de trabajo dentro de un sistema que abarca otros servicios como soportes, acompañamiento, tecnología on line, asesoría e integración de procesos.'),
(590, 53, '_nosotros_contenido', 'field_5bf43fbe6f88b'),
(591, 53, 'skills_titulo', 'Skills'),
(592, 53, '_skills_titulo', 'field_5bf44063bd828'),
(593, 6, 'skills_titulo', 'Skills'),
(594, 6, '_skills_titulo', 'field_5bf44063bd828'),
(595, 55, '_edit_last', '1'),
(596, 55, 'field_5bf44114987fe', 'a:15:{s:3:\"key\";s:19:\"field_5bf44114987fe\";s:5:\"label\";s:10:\"Porcentaje\";s:4:\"name\";s:10:\"porcentaje\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:1:\"0\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(597, 55, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"skills\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(598, 55, 'position', 'normal'),
(599, 55, 'layout', 'no_box'),
(600, 55, 'hide_on_screen', ''),
(601, 55, '_edit_lock', '1542735647:1'),
(602, 56, '_edit_last', '1'),
(603, 56, '_edit_lock', '1542734041:1'),
(604, 56, 'porcentaje', '100'),
(605, 56, '_porcentaje', 'field_5bf44114987fe'),
(606, 57, '_edit_last', '1'),
(607, 57, '_edit_lock', '1542734080:1'),
(608, 57, 'porcentaje', '95'),
(609, 57, '_porcentaje', 'field_5bf44114987fe'),
(610, 58, '_edit_last', '1'),
(611, 58, '_edit_lock', '1542734091:1'),
(612, 58, 'porcentaje', '90'),
(613, 58, '_porcentaje', 'field_5bf44114987fe'),
(614, 59, '_edit_last', '1'),
(615, 59, '_edit_lock', '1542734101:1'),
(616, 59, 'porcentaje', '100'),
(617, 59, '_porcentaje', 'field_5bf44114987fe'),
(618, 60, '_edit_last', '1'),
(619, 60, '_edit_lock', '1542734286:1'),
(620, 60, 'porcentaje', '90'),
(621, 60, '_porcentaje', 'field_5bf44114987fe'),
(622, 60, '_wp_trash_meta_status', 'draft'),
(623, 60, '_wp_trash_meta_time', '1542734434'),
(624, 60, '_wp_desired_post_slug', ''),
(625, 61, '_edit_last', '1'),
(626, 61, '_edit_lock', '1542734315:1'),
(627, 61, 'porcentaje', '80'),
(628, 61, '_porcentaje', 'field_5bf44114987fe'),
(629, 62, '_edit_last', '1'),
(630, 62, '_edit_lock', '1542734327:1'),
(631, 62, 'porcentaje', '95'),
(632, 62, '_porcentaje', 'field_5bf44114987fe'),
(633, 63, '_edit_last', '1'),
(634, 63, '_edit_lock', '1542734338:1'),
(635, 63, 'porcentaje', '80'),
(636, 63, '_porcentaje', 'field_5bf44114987fe'),
(637, 64, '_edit_last', '1'),
(638, 64, '_edit_lock', '1542734350:1'),
(639, 64, 'porcentaje', '90'),
(640, 64, '_porcentaje', 'field_5bf44114987fe'),
(642, 8, 'field_5bf45194abeda', 'a:14:{s:3:\"key\";s:19:\"field_5bf45194abeda\";s:5:\"label\";s:15:\"Clientes Titulo\";s:4:\"name\";s:15:\"clientes_titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:28;}'),
(644, 65, 'metodologia_titulo', 'Nuestra Metodología.'),
(645, 65, '_metodologia_titulo', 'field_5bef4886536b5'),
(646, 65, 'metodologia_resumen', 'El orden es el valor que se refiere a la buena disposición de las cosas entre si y a saber poner cada una de ellas en el lugar que le corresponde. La experiencia acumulada por nuestros analistas en sus más de 15 años dedicados al desarrollo de proyectos de software, nos dio como resultado una metodología de 7 etapas secuenciales para un proyecto exitoso.'),
(647, 65, '_metodologia_resumen', 'field_5bef48e9536b6'),
(648, 65, 'metodologia_1_imagen', '42'),
(649, 65, '_metodologia_1_imagen', 'field_5bef4901536b7'),
(650, 65, 'metodologia_1_titulo', '1. Análisis de requerimientos.'),
(651, 65, '_metodologia_1_titulo', 'field_5bef4a2d536b8'),
(652, 65, 'metodologia_1_contenido', 'Se extraen los requisitos del producto de software. En esta etapa resulta fundamental la habilidad y experiencia en la ingeniería del software, para reconocer y mejorar aquellos requisitos que resulten incompletos, ambiguos o contradictorios. Durante esta etapa es imprescindible una comunicación clara y diáfana, que facilite el diálogo entre los especialistas y el cliente.'),
(653, 65, '_metodologia_1_contenido', 'field_5bef4a50536b9'),
(654, 65, 'metodologia_2_imagen', '43'),
(655, 65, '_metodologia_2_imagen', 'field_5bef4a80373d8'),
(656, 65, 'metodologia_2_titulo', '2. Especificación.'),
(657, 65, '_metodologia_2_titulo', 'field_5bef4af62fbb7'),
(658, 65, 'metodologia_2_contenido', 'Consiste en la descripción detallada y rigurosa del software que se creará. Es importante describir el comportamiento esperado y su posible interacción con los usuarios, así como con otros sistemas.'),
(659, 65, '_metodologia_2_contenido', 'field_5bef4b4d62fa5'),
(660, 65, 'metodologia_3_imagen', '44'),
(661, 65, '_metodologia_3_imagen', 'field_5bef4a7f373d7'),
(662, 65, 'metodologia_3_titulo', '3. Diseño y Arquitectura.'),
(663, 65, '_metodologia_3_titulo', 'field_5bef4af62fbb6'),
(664, 65, 'metodologia_3_contenido', 'En esta etapa se describe el funcionamiento general del software. Se incorporan consideraciones de la implementación tecnológica – tipo de hardware, red, etc. -. Se diseñan los componentes del sistema que brindarán las funcionalidades descritas con anterioridad (segunda etapa). Generalmente el diseño y la arquitectura se realizan gracias a diagramas que permiten describir las interacciones entre las entidades y su secuenciado.'),
(665, 65, '_metodologia_3_contenido', 'field_5bef4b4c62fa4'),
(666, 65, 'metodologia_4_imagen', '45'),
(667, 65, '_metodologia_4_imagen', 'field_5bef4a7e373d6'),
(668, 65, 'metodologia_4_titulo', '4. Programación.'),
(669, 65, '_metodologia_4_titulo', 'field_5bef4af52fbb5'),
(670, 65, 'metodologia_4_contenido', 'Este es uno de los pasos fundamentales del proceso. Permite traducir a códigos de programación las necesidades e intereses del cliente. Es la etapa que muestra los resultados más tangibles, aunque, estos resultados comienzan su desarrollo desde las primeras fases del trabajo. Resulta fundamental haber recorrido satisfactoriamente las etapas anteriores, para que el proceso de programación resulte sencillo y concluya en el menor tiempo posible.'),
(671, 65, '_metodologia_4_contenido', 'field_5bef4b4b62fa3'),
(672, 65, 'metodologia_5_imagen', '46'),
(673, 65, '_metodologia_5_imagen', 'field_5bef4a7c373d5'),
(674, 65, 'metodologia_5_titulo', '5. Prueba.'),
(675, 65, '_metodologia_5_titulo', 'field_5bef4af42fbb4'),
(676, 65, 'metodologia_5_contenido', 'Consiste en comprobar que el software sea capaz de realizar todas las tareas que le fueron indicadas. Resulta útil y de mayor seguridad, realizar las pruebas a distintos niveles y por equipos diferenciados. Los especialistas podrán ampliarle mucho más sobre las posibilidades de evaluar el producto, todo para que el resultado final que reciba al usuario, no presente errores en la programación.'),
(677, 65, '_metodologia_5_contenido', 'field_5bef4b4b62fa2'),
(678, 65, 'metodologia_6_imagen', '47'),
(679, 65, '_metodologia_6_imagen', 'field_5bef4a7b373d4'),
(680, 65, 'metodologia_6_titulo', '6.	Documentación.'),
(681, 65, '_metodologia_6_titulo', 'field_5bef4af42fbb3'),
(682, 65, 'metodologia_6_contenido', 'En esta etapa, los especialistas realizan el manual de usuario y un manual técnico, destinado a facilitar el mantenimiento futuro y posibles ampliaciones del sistema. Esta etapa se comienza a desarrollar desde la primera fase, pero se dan por concluidas con el cierre de las sesiones de prueba (Quinta etapa).'),
(683, 65, '_metodologia_6_contenido', 'field_5bef4b4a62fa1'),
(684, 65, 'metodologia_7_imagen', '48'),
(685, 65, '_metodologia_7_imagen', 'field_5bf054c8acf9c'),
(686, 65, 'metodologia_7_titulo', '7. Mantenimiento'),
(687, 65, '_metodologia_7_titulo', 'field_5bf054daacf9d'),
(688, 65, 'metodologia_7_contenido', 'Esta es la última parte de todo el proceso conjunto entre especialistas y cliente. Se desarrolla un mantenimiento correctivo (rectificación de errores) y un mantenimiento evolutivo (perfeccionamiento de las funcionalidades y capacidad de respuesta a nuevos requisitos que puedan surgir).'),
(689, 65, '_metodologia_7_contenido', 'field_5bf054ebacf9e'),
(690, 65, 'portafolio_titulo', 'Portafolio'),
(691, 65, '_portafolio_titulo', 'field_5bf05ba257a7c'),
(692, 65, 'portafolio_subtitulo', '\"Los hechos no dejan de existir aunque se los ignore.\" <b>Aldous Huxley</b>'),
(693, 65, '_portafolio_subtitulo', 'field_5bf05bdcf1d6a'),
(694, 65, 'nosotros_titulo', 'NOSOTROS'),
(695, 65, '_nosotros_titulo', 'field_5bf43f9f6f88a'),
(696, 65, 'nosotros_contenido', 'Somos una organización que trabaja para satisfacer las necesidades y los intereses de nuestros clientes. Es por ello que ofrecemos soluciones tecnológicas diseñadas a la medida de cada proyecto. Contamos con un grupo multidisciplinario sumamente preparado que se encuentra en constante superación, atendiendo a los cambios del mundo moderno.<br><br>\r\n\r\nActualmente ofrecemos una gran diversidad de alternativas que van enfocadas a brindar soluciones integrales. La producción de software es para nosotros la herramienta principal de trabajo dentro de un sistema que abarca otros servicios como soportes, acompañamiento, tecnología on line, asesoría e integración de procesos.'),
(697, 65, '_nosotros_contenido', 'field_5bf43fbe6f88b'),
(698, 65, 'skills_titulo', 'Skills'),
(699, 65, '_skills_titulo', 'field_5bf44063bd828'),
(700, 65, 'clientes_titulo', 'Clientes'),
(701, 65, '_clientes_titulo', 'field_5bf45194abeda'),
(702, 6, 'clientes_titulo', 'Clientes'),
(703, 6, '_clientes_titulo', 'field_5bf45194abeda'),
(704, 70, '_wp_attached_file', '2018/11/ClientLogo01.png'),
(705, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:200;s:4:\"file\";s:24:\"2018/11/ClientLogo01.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ClientLogo01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"ClientLogo01-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(706, 71, '_wp_attached_file', '2018/11/ClientLogo02.png'),
(707, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:200;s:4:\"file\";s:24:\"2018/11/ClientLogo02.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ClientLogo02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"ClientLogo02-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(708, 72, '_wp_attached_file', '2018/11/ClientLogo03.png'),
(709, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:200;s:4:\"file\";s:24:\"2018/11/ClientLogo03.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ClientLogo03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"ClientLogo03-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(710, 73, '_wp_attached_file', '2018/11/ClientLogo04.png'),
(711, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:200;s:4:\"file\";s:24:\"2018/11/ClientLogo04.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ClientLogo04-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"ClientLogo04-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(712, 74, '_wp_attached_file', '2018/11/ClientLogo05.png'),
(713, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:200;s:4:\"file\";s:24:\"2018/11/ClientLogo05.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ClientLogo05-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"ClientLogo05-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(714, 75, '_wp_attached_file', '2018/11/ClientLogo06.png'),
(715, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:200;s:4:\"file\";s:24:\"2018/11/ClientLogo06.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ClientLogo06-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"ClientLogo06-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(716, 76, '_wp_attached_file', '2018/11/ClientLogo07.png'),
(717, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:200;s:4:\"file\";s:24:\"2018/11/ClientLogo07.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ClientLogo07-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"ClientLogo07-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(718, 68, '_edit_last', '1'),
(719, 68, '_thumbnail_id', '76'),
(720, 68, '_edit_lock', '1542757111:1'),
(721, 77, '_edit_last', '1'),
(722, 77, '_thumbnail_id', '75'),
(723, 77, '_edit_lock', '1542749549:1'),
(724, 78, '_edit_last', '1'),
(725, 78, '_thumbnail_id', '74'),
(726, 78, '_edit_lock', '1542749530:1'),
(727, 79, '_edit_last', '1'),
(728, 79, '_thumbnail_id', '73'),
(729, 79, '_edit_lock', '1542749509:1'),
(730, 80, '_edit_last', '1'),
(731, 80, '_thumbnail_id', '72'),
(732, 80, '_edit_lock', '1542749489:1'),
(733, 81, '_edit_last', '1'),
(734, 81, '_thumbnail_id', '71'),
(735, 81, '_edit_lock', '1542749463:1'),
(736, 82, '_edit_last', '1'),
(737, 82, '_thumbnail_id', '70'),
(738, 82, '_edit_lock', '1542749436:1'),
(739, 82, '_wp_old_slug', 'borrador-automatico-7'),
(740, 81, '_wp_old_slug', 'borrador-automatico-6'),
(741, 80, '_wp_old_slug', 'borrador-automatico-5'),
(742, 79, '_wp_old_slug', 'borrador-automatico-4'),
(743, 78, '_wp_old_slug', 'borrador-automatico-3'),
(744, 77, '_wp_old_slug', 'borrador-automatico-2'),
(745, 68, '_wp_old_slug', 'borrador-automatico'),
(746, 8, 'field_5bf49baf189c1', 'a:14:{s:3:\"key\";s:19:\"field_5bf49baf189c1\";s:5:\"label\";s:15:\"Contacto Titulo\";s:4:\"name\";s:15:\"contacto_titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:29;}'),
(748, 8, 'field_5bf49bd612a9b', 'a:14:{s:3:\"key\";s:19:\"field_5bf49bd612a9b\";s:5:\"label\";s:18:\"Contacto Direccion\";s:4:\"name\";s:18:\"contacto_direccion\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:30;}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(750, 8, 'field_5bf49bf9c9100', 'a:12:{s:3:\"key\";s:19:\"field_5bf49bf9c9100\";s:5:\"label\";s:15:\"Contacto Correo\";s:4:\"name\";s:15:\"contacto_correo\";s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:31;}'),
(752, 8, 'field_5bf49c1185bfd', 'a:14:{s:3:\"key\";s:19:\"field_5bf49c1185bfd\";s:5:\"label\";s:17:\"Contacto Telefono\";s:4:\"name\";s:17:\"contacto_telefono\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:32;}'),
(753, 8, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"6\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(754, 83, 'metodologia_titulo', 'Nuestra Metodología.'),
(755, 83, '_metodologia_titulo', 'field_5bef4886536b5'),
(756, 83, 'metodologia_resumen', 'El orden es el valor que se refiere a la buena disposición de las cosas entre si y a saber poner cada una de ellas en el lugar que le corresponde. La experiencia acumulada por nuestros analistas en sus más de 15 años dedicados al desarrollo de proyectos de software, nos dio como resultado una metodología de 7 etapas secuenciales para un proyecto exitoso.'),
(757, 83, '_metodologia_resumen', 'field_5bef48e9536b6'),
(758, 83, 'metodologia_1_imagen', '42'),
(759, 83, '_metodologia_1_imagen', 'field_5bef4901536b7'),
(760, 83, 'metodologia_1_titulo', '1. Análisis de requerimientos.'),
(761, 83, '_metodologia_1_titulo', 'field_5bef4a2d536b8'),
(762, 83, 'metodologia_1_contenido', 'Se extraen los requisitos del producto de software. En esta etapa resulta fundamental la habilidad y experiencia en la ingeniería del software, para reconocer y mejorar aquellos requisitos que resulten incompletos, ambiguos o contradictorios. Durante esta etapa es imprescindible una comunicación clara y diáfana, que facilite el diálogo entre los especialistas y el cliente.'),
(763, 83, '_metodologia_1_contenido', 'field_5bef4a50536b9'),
(764, 83, 'metodologia_2_imagen', '43'),
(765, 83, '_metodologia_2_imagen', 'field_5bef4a80373d8'),
(766, 83, 'metodologia_2_titulo', '2. Especificación.'),
(767, 83, '_metodologia_2_titulo', 'field_5bef4af62fbb7'),
(768, 83, 'metodologia_2_contenido', 'Consiste en la descripción detallada y rigurosa del software que se creará. Es importante describir el comportamiento esperado y su posible interacción con los usuarios, así como con otros sistemas.'),
(769, 83, '_metodologia_2_contenido', 'field_5bef4b4d62fa5'),
(770, 83, 'metodologia_3_imagen', '44'),
(771, 83, '_metodologia_3_imagen', 'field_5bef4a7f373d7'),
(772, 83, 'metodologia_3_titulo', '3. Diseño y Arquitectura.'),
(773, 83, '_metodologia_3_titulo', 'field_5bef4af62fbb6'),
(774, 83, 'metodologia_3_contenido', 'En esta etapa se describe el funcionamiento general del software. Se incorporan consideraciones de la implementación tecnológica – tipo de hardware, red, etc. -. Se diseñan los componentes del sistema que brindarán las funcionalidades descritas con anterioridad (segunda etapa). Generalmente el diseño y la arquitectura se realizan gracias a diagramas que permiten describir las interacciones entre las entidades y su secuenciado.'),
(775, 83, '_metodologia_3_contenido', 'field_5bef4b4c62fa4'),
(776, 83, 'metodologia_4_imagen', '45'),
(777, 83, '_metodologia_4_imagen', 'field_5bef4a7e373d6'),
(778, 83, 'metodologia_4_titulo', '4. Programación.'),
(779, 83, '_metodologia_4_titulo', 'field_5bef4af52fbb5'),
(780, 83, 'metodologia_4_contenido', 'Este es uno de los pasos fundamentales del proceso. Permite traducir a códigos de programación las necesidades e intereses del cliente. Es la etapa que muestra los resultados más tangibles, aunque, estos resultados comienzan su desarrollo desde las primeras fases del trabajo. Resulta fundamental haber recorrido satisfactoriamente las etapas anteriores, para que el proceso de programación resulte sencillo y concluya en el menor tiempo posible.'),
(781, 83, '_metodologia_4_contenido', 'field_5bef4b4b62fa3'),
(782, 83, 'metodologia_5_imagen', '46'),
(783, 83, '_metodologia_5_imagen', 'field_5bef4a7c373d5'),
(784, 83, 'metodologia_5_titulo', '5. Prueba.'),
(785, 83, '_metodologia_5_titulo', 'field_5bef4af42fbb4'),
(786, 83, 'metodologia_5_contenido', 'Consiste en comprobar que el software sea capaz de realizar todas las tareas que le fueron indicadas. Resulta útil y de mayor seguridad, realizar las pruebas a distintos niveles y por equipos diferenciados. Los especialistas podrán ampliarle mucho más sobre las posibilidades de evaluar el producto, todo para que el resultado final que reciba al usuario, no presente errores en la programación.'),
(787, 83, '_metodologia_5_contenido', 'field_5bef4b4b62fa2'),
(788, 83, 'metodologia_6_imagen', '47'),
(789, 83, '_metodologia_6_imagen', 'field_5bef4a7b373d4'),
(790, 83, 'metodologia_6_titulo', '6.	Documentación.'),
(791, 83, '_metodologia_6_titulo', 'field_5bef4af42fbb3'),
(792, 83, 'metodologia_6_contenido', 'En esta etapa, los especialistas realizan el manual de usuario y un manual técnico, destinado a facilitar el mantenimiento futuro y posibles ampliaciones del sistema. Esta etapa se comienza a desarrollar desde la primera fase, pero se dan por concluidas con el cierre de las sesiones de prueba (Quinta etapa).'),
(793, 83, '_metodologia_6_contenido', 'field_5bef4b4a62fa1'),
(794, 83, 'metodologia_7_imagen', '48'),
(795, 83, '_metodologia_7_imagen', 'field_5bf054c8acf9c'),
(796, 83, 'metodologia_7_titulo', '7. Mantenimiento'),
(797, 83, '_metodologia_7_titulo', 'field_5bf054daacf9d'),
(798, 83, 'metodologia_7_contenido', 'Esta es la última parte de todo el proceso conjunto entre especialistas y cliente. Se desarrolla un mantenimiento correctivo (rectificación de errores) y un mantenimiento evolutivo (perfeccionamiento de las funcionalidades y capacidad de respuesta a nuevos requisitos que puedan surgir).'),
(799, 83, '_metodologia_7_contenido', 'field_5bf054ebacf9e'),
(800, 83, 'portafolio_titulo', 'Portafolio'),
(801, 83, '_portafolio_titulo', 'field_5bf05ba257a7c'),
(802, 83, 'portafolio_subtitulo', '\"Los hechos no dejan de existir aunque se los ignore.\" <b>Aldous Huxley</b>'),
(803, 83, '_portafolio_subtitulo', 'field_5bf05bdcf1d6a'),
(804, 83, 'nosotros_titulo', 'NOSOTROS'),
(805, 83, '_nosotros_titulo', 'field_5bf43f9f6f88a'),
(806, 83, 'nosotros_contenido', 'Somos una organización que trabaja para satisfacer las necesidades y los intereses de nuestros clientes. Es por ello que ofrecemos soluciones tecnológicas diseñadas a la medida de cada proyecto. Contamos con un grupo multidisciplinario sumamente preparado que se encuentra en constante superación, atendiendo a los cambios del mundo moderno.<br><br>\r\n\r\nActualmente ofrecemos una gran diversidad de alternativas que van enfocadas a brindar soluciones integrales. La producción de software es para nosotros la herramienta principal de trabajo dentro de un sistema que abarca otros servicios como soportes, acompañamiento, tecnología on line, asesoría e integración de procesos.'),
(807, 83, '_nosotros_contenido', 'field_5bf43fbe6f88b'),
(808, 83, 'skills_titulo', 'Skills'),
(809, 83, '_skills_titulo', 'field_5bf44063bd828'),
(810, 83, 'clientes_titulo', 'Clientes'),
(811, 83, '_clientes_titulo', 'field_5bf45194abeda'),
(812, 83, 'contacto_titulo', 'Contacto'),
(813, 83, '_contacto_titulo', 'field_5bf49baf189c1'),
(814, 83, 'contacto_direccion', 'Avenida Abraham Lincoln 5658, Valle Verde, Monterrey, N.L.'),
(815, 83, '_contacto_direccion', 'field_5bf49bd612a9b'),
(816, 83, 'contacto_correo', 'mayra@softok2.com'),
(817, 83, '_contacto_correo', 'field_5bf49bf9c9100'),
(818, 83, 'contacto_telefono', '+52 8184719100'),
(819, 83, '_contacto_telefono', 'field_5bf49c1185bfd'),
(820, 6, 'contacto_titulo', 'Contacto'),
(821, 6, '_contacto_titulo', 'field_5bf49baf189c1'),
(822, 6, 'contacto_direccion', 'Avenida Abraham Lincoln 5658, Valle Verde, Monterrey, N.L.'),
(823, 6, '_contacto_direccion', 'field_5bf49bd612a9b'),
(824, 6, 'contacto_correo', 'mayra@softok2.com'),
(825, 6, '_contacto_correo', 'field_5bf49bf9c9100'),
(826, 6, 'contacto_telefono', '+52 8184719100'),
(827, 6, '_contacto_telefono', 'field_5bf49c1185bfd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-11-16 16:43:50', '2018-11-16 16:43:50', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a escribir!', '¡Hola mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2018-11-16 20:55:43', '2018-11-16 20:55:43', '', 0, 'http://localhost/softk2/?p=1', 0, 'post', '', 1),
(2, 1, '2018-11-16 16:43:50', '2018-11-16 16:43:50', 'Esta es una página de ejemplo, Es diferente a una entrada de blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página Acerca de mí para presentarse a los potenciales visitantes. Podría ser algo así:\n\n<blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Madrid, tengo perrazo llamado Juan y me encantan las piñas coladas (y que me pille un chaparrón)</blockquote>\n\n… o algo así:\n\n<blockquote>La empresa Calcetines XYZ se fundó en 1971, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene más de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href=\"http://localhost/softk2/wp-admin/\">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2018-11-16 16:43:50', '2018-11-16 16:43:50', '', 0, 'http://localhost/softk2/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-11-16 16:43:50', '2018-11-16 16:43:50', '<h2>Quiénes somos</h2><p>La dirección de nuestra web es: http://localhost/softk2.</p><h2>Qué datos personales recogemos y por qué los recogemos</h2><h3>Comentarios</h3><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><h3>Medios</h3><p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><h3>Formularios de contacto</h3><h3>Cookies</h3><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><h3>Contenido incrustado de otros sitios web</h3><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><h3>Analítica</h3><h2>Con quién compartimos tus datos</h2><h2>Cuánto tiempo conservamos tus datos</h2><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><h2>Qué derechos tienes sobre tus datos</h2><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><h2>Dónde enviamos tus datos</h2><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><h2>Tu información de contacto</h2><h2>Información adicional</h2><h3>Cómo protegemos tus datos</h3><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><h3>De qué terceros recibimos datos</h3><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><h3>Requerimientos regulatorios de revelación de información del sector</h3>', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2018-11-16 16:43:50', '2018-11-16 16:43:50', '', 0, 'http://localhost/softk2/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-11-16 16:44:49', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-16 16:44:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/softk2/?p=4', 0, 'post', '', 0),
(5, 1, '2018-11-16 16:45:07', '2018-11-16 16:45:07', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nSoftok2 \"[your-subject]\"\n[your-name] <carlitos051186@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Softok2 (http://localhost/softk2)\ncarlitos051186@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nSoftok2 \"[your-subject]\"\nSoftok2 <carlitos051186@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Softok2 (http://localhost/softk2)\n[your-email]\nReply-To: carlitos051186@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-11-16 16:45:07', '2018-11-16 16:45:07', '', 0, 'http://localhost/softk2/?post_type=wpcf7_contact_form&p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2018-11-16 19:56:14', '2018-11-16 19:56:14', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-11-20 23:47:42', '2018-11-20 23:47:42', '', 0, 'http://localhost/softok2/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-11-16 19:56:14', '2018-11-16 19:56:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-11-16 19:56:14', '2018-11-16 19:56:14', '', 6, 'http://localhost/softok2/2018/11/16/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-11-16 20:17:21', '2018-11-16 20:17:21', '', 'Home', '', 'publish', 'closed', 'closed', '', 'acf_home', '', '', '2018-11-20 23:43:42', '2018-11-20 23:43:42', '', 0, 'http://localhost/softok2/?post_type=acf&#038;p=8', 0, 'acf', '', 0),
(9, 1, '2018-11-16 20:18:24', '2018-11-16 20:18:24', '', 'Slider02', '', 'inherit', 'open', 'closed', '', 'slider02', '', '', '2018-11-16 20:18:24', '2018-11-16 20:18:24', '', 6, 'http://localhost/softok2/wp-content/uploads/2018/11/Slider02.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2018-11-16 20:19:33', '2018-11-16 20:19:33', '', 'Slider01', '', 'inherit', 'open', 'closed', '', 'slider01', '', '', '2018-11-16 20:19:33', '2018-11-16 20:19:33', '', 6, 'http://localhost/softok2/wp-content/uploads/2018/11/Slider01.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2018-11-16 20:19:54', '2018-11-16 20:19:54', '', 'Slider03', '', 'inherit', 'open', 'closed', '', 'slider03', '', '', '2018-11-16 20:19:54', '2018-11-16 20:19:54', '', 6, 'http://localhost/softok2/wp-content/uploads/2018/11/Slider03.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2018-11-16 20:55:43', '2018-11-16 20:55:43', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a escribir!', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-11-16 20:55:43', '2018-11-16 20:55:43', '', 1, 'http://localhost/softok2/2018/11/16/1-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-11-16 20:56:41', '2018-11-16 20:56:41', '', 'Post Custom Fields', '', 'publish', 'closed', 'closed', '', 'acf_post-custom-fields', '', '', '2018-11-17 15:14:00', '2018-11-17 15:14:00', '', 0, 'http://localhost/softok2/?post_type=acf&#038;p=13', 0, 'acf', '', 0),
(14, 1, '2018-11-16 20:58:52', '2018-11-16 20:58:52', '', 'HAY QUE SALTAR A LAS REDES.', '¿Por qué estar en las redes sociales? Sobre las ventajas de su utilización y las posibilidades que ellas brindan, van estas reflexiones.', 'publish', 'closed', 'open', '', 'hay-que-saltar-a-las-redes', '', '', '2018-11-17 16:50:35', '2018-11-17 16:50:35', '', 0, 'http://localhost/softok2/?p=14', 0, 'consejos', '', 0),
(15, 1, '2018-11-16 20:58:52', '2018-11-16 20:58:52', '', 'HAY QUE SALTAR A LAS REDES.', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-11-16 20:58:52', '2018-11-16 20:58:52', '', 14, 'http://localhost/softok2/2018/11/16/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-11-16 21:01:20', '2018-11-16 21:01:20', '', 'HAY QUE SALTAR A LAS REDES.', '¿Por qué estar en las redes sociales? Sobre las ventajas de su utilización y las posibilidades que ellas brindan, van estas reflexiones.', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-11-16 21:01:20', '2018-11-16 21:01:20', '', 14, 'http://localhost/softok2/2018/11/16/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-11-16 22:15:05', '2018-11-16 22:15:05', '', 'SISTEMATIZA LA INNOVACIÓN', 'En un mundo donde el cambio no solo es constante, sino que avanza a ritmo acelerado, la empresa que deje de preocuparse por innovar, sencillamente dejará de ser competencia.', 'publish', 'closed', 'closed', '', 'sistematiza-la-innovacion', '', '', '2018-11-16 22:32:16', '2018-11-16 22:32:16', '', 0, 'http://localhost/softok2/?p=17', 0, 'consejos', '', 0),
(18, 1, '2018-11-16 22:15:05', '2018-11-16 22:15:05', '', 'SISTEMATIZA LA INNOVACIÓN', 'En un mundo donde el cambio no solo es constante, sino que avanza a ritmo acelerado, la empresa que deje de preocuparse por innovar, sencillamente dejará de ser competencia.', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-11-16 22:15:05', '2018-11-16 22:15:05', '', 17, 'http://localhost/softok2/2018/11/16/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-11-16 22:16:02', '2018-11-16 22:16:02', 'Conocer las ventajas de la tecnología que utiliza en sus proyectos es una buena práctica, no pierda la oportunidad.', 'PARA VENCER, HAY QUE CONVENCER', 'Conocer las ventajas de la tecnología que utiliza en sus proyectos es una buena práctica, no pierda la oportunidad.', 'publish', 'closed', 'closed', '', 'para-vencer-hay-que-convencer', '', '', '2018-11-21 21:36:12', '2018-11-21 21:36:12', '', 0, 'http://localhost/softok2/?p=19', 0, 'consejos', '', 0),
(20, 1, '2018-11-16 22:16:02', '2018-11-16 22:16:02', '', 'PARA VENCER, HAY QUE CONVENCER', 'Conocer las ventajas de la tecnología que utiliza en sus proyectos es una buena práctica, no pierda la oportunidad.', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-11-16 22:16:02', '2018-11-16 22:16:02', '', 19, 'http://localhost/softok2/2018/11/16/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-11-16 23:09:44', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-16 23:09:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/softok2/?post_type=acf&p=21', 0, 'acf', '', 0),
(22, 1, '2018-11-16 23:10:58', '2018-11-16 23:10:58', '', 'Portafolio Custom fields', '', 'publish', 'closed', 'closed', '', 'acf_portafolio-custom-fields', '', '', '2018-11-16 23:35:43', '2018-11-16 23:35:43', '', 0, 'http://localhost/softok2/?post_type=acf&#038;p=22', 0, 'acf', '', 0),
(23, 1, '2018-11-16 23:12:06', '2018-11-16 23:12:06', 'All of BVM\'s products are manufactured at our factory in Denver, Colorado, USA. We sell our tools to all areas of the world. Our product line includes tools for onshore and offshore drilling.', 'BVM', '', 'publish', 'closed', 'closed', '', 'bvm', '', '', '2018-11-16 23:36:47', '2018-11-16 23:36:47', '', 0, 'http://localhost/softok2/?post_type=portafolio&#038;p=23', 0, 'portafolio', '', 0),
(24, 1, '2018-11-16 23:15:20', '2018-11-16 23:15:20', '', 'Portfolio07', '', 'inherit', 'open', 'closed', '', 'portfolio07', '', '', '2018-11-16 23:15:20', '2018-11-16 23:15:20', '', 23, 'http://localhost/softok2/wp-content/uploads/2018/11/Portfolio07.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2018-11-16 23:38:33', '2018-11-16 23:38:33', '', 'Benavides', '', 'publish', 'closed', 'closed', '', 'benavides', '', '', '2018-11-17 17:06:06', '2018-11-17 17:06:06', '', 0, 'http://localhost/softok2/?post_type=portafolio&#038;p=25', 0, 'portafolio', '', 0),
(26, 1, '2018-11-16 23:32:15', '2018-11-16 23:32:15', '', 'benavides_SOFTOK2', '', 'inherit', 'open', 'closed', '', 'benavides_softok2', '', '', '2018-11-16 23:32:15', '2018-11-16 23:32:15', '', 0, 'http://localhost/softok2/wp-content/uploads/2018/11/benavides_SOFTOK2.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2018-11-16 23:32:16', '2018-11-16 23:32:16', '', 'bvm', '', 'inherit', 'open', 'closed', '', 'bvm-2', '', '', '2018-11-16 23:32:16', '2018-11-16 23:32:16', '', 0, 'http://localhost/softok2/wp-content/uploads/2018/11/bvm.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-11-16 23:32:16', '2018-11-16 23:32:16', '', 'nuevosur_SOFTOK2', '', 'inherit', 'open', 'closed', '', 'nuevosur_softok2', '', '', '2018-11-16 23:32:16', '2018-11-16 23:32:16', '', 0, 'http://localhost/softok2/wp-content/uploads/2018/11/nuevosur_SOFTOK2.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2018-11-16 23:32:17', '2018-11-16 23:32:17', '', 'Portfolio02', '', 'inherit', 'open', 'closed', '', 'portfolio02', '', '', '2018-11-16 23:32:17', '2018-11-16 23:32:17', '', 0, 'http://localhost/softok2/wp-content/uploads/2018/11/Portfolio02.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2018-11-16 23:32:18', '2018-11-16 23:32:18', '', 'Portfolio04', '', 'inherit', 'open', 'closed', '', 'portfolio04', '', '', '2018-11-16 23:32:18', '2018-11-16 23:32:18', '', 0, 'http://localhost/softok2/wp-content/uploads/2018/11/Portfolio04.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2018-11-16 23:32:18', '2018-11-16 23:32:18', '', 'Portfolio05', '', 'inherit', 'open', 'closed', '', 'portfolio05', '', '', '2018-11-16 23:32:18', '2018-11-16 23:32:18', '', 0, 'http://localhost/softok2/wp-content/uploads/2018/11/Portfolio05.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2018-11-16 23:32:19', '2018-11-16 23:32:19', '', 'Portfolio06', '', 'inherit', 'open', 'closed', '', 'portfolio06', '', '', '2018-11-16 23:32:19', '2018-11-16 23:32:19', '', 0, 'http://localhost/softok2/wp-content/uploads/2018/11/Portfolio06.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2018-11-17 15:13:01', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-17 15:13:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/softok2/?post_type=home-carousel-post&p=33', 0, 'home-carousel-post', '', 0),
(34, 1, '2018-11-17 17:04:54', '2018-11-17 17:04:54', '', 'Portfolio03', '', 'inherit', 'closed', 'closed', '', 'portfolio03', '', '', '2018-11-17 17:04:54', '2018-11-17 17:04:54', '', 25, 'http://localhost/softok2/wp-content/uploads/2018/11/Portfolio03.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2018-11-17 17:05:06', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-17 17:05:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/softok2/?post_type=portafolio&p=35', 0, 'portafolio', '', 0),
(36, 1, '2018-11-17 17:07:24', '2018-11-17 17:07:24', '', 'Nuevo Sur', '', 'publish', 'closed', 'closed', '', 'nuevo-sur', '', '', '2018-11-17 17:07:40', '2018-11-17 17:07:40', '', 0, 'http://localhost/softok2/?post_type=portafolio&#038;p=36', 0, 'portafolio', '', 0),
(37, 1, '2018-11-17 17:09:40', '2018-11-17 17:09:40', '', 'Briggs', '', 'publish', 'closed', 'closed', '', 'briggs', '', '', '2018-11-17 17:09:51', '2018-11-17 17:09:51', '', 0, 'http://localhost/softok2/?post_type=portafolio&#038;p=37', 0, 'portafolio', '', 0),
(38, 1, '2018-11-17 17:11:06', '2018-11-17 17:11:06', 'La Asociación Renovables elabora anualmente los siguientes indicadores sectoriales para informar a la población nicaragüense sobre la evolución y los beneficios del aprovechamiento del potencial renovable del país', 'Simernic', '', 'publish', 'closed', 'closed', '', 'simernic', '', '', '2018-11-17 17:17:44', '2018-11-17 17:17:44', '', 0, 'http://localhost/softok2/?post_type=portafolio&#038;p=38', 0, 'portafolio', '', 0),
(39, 1, '2018-11-17 17:19:24', '2018-11-17 17:19:24', '', 'Tecnológico de Monterrey', '', 'publish', 'closed', 'closed', '', 'tecnologico-de-monterrey', '', '', '2018-11-17 17:19:24', '2018-11-17 17:19:24', '', 0, 'http://localhost/softok2/?post_type=portafolio&#038;p=39', 0, 'portafolio', '', 0),
(40, 1, '2018-11-17 17:20:21', '2018-11-17 17:20:21', '', 'Vinil TV', '', 'publish', 'closed', 'closed', '', 'vinil-tv', '', '', '2018-11-17 17:20:21', '2018-11-17 17:20:21', '', 0, 'http://localhost/softok2/?post_type=portafolio&#038;p=40', 0, 'portafolio', '', 0),
(41, 1, '2018-11-17 17:23:37', '2018-11-17 17:23:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-11-17 17:23:37', '2018-11-17 17:23:37', '', 6, 'http://localhost/softok2/6-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-11-17 17:26:21', '2018-11-17 17:26:21', '', 'Service1', '', 'inherit', 'closed', 'closed', '', 'service1', '', '', '2018-11-17 17:26:21', '2018-11-17 17:26:21', '', 0, 'http://localhost/softok2/wp-content/uploads/2018/11/Service1.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2018-11-17 17:26:21', '2018-11-17 17:26:21', '', 'Service2', '', 'inherit', 'closed', 'closed', '', 'service2', '', '', '2018-11-17 17:26:21', '2018-11-17 17:26:21', '', 0, 'http://localhost/softok2/wp-content/uploads/2018/11/Service2.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2018-11-17 17:26:22', '2018-11-17 17:26:22', '', 'Service3', '', 'inherit', 'closed', 'closed', '', 'service3', '', '', '2018-11-17 17:26:22', '2018-11-17 17:26:22', '', 0, 'http://localhost/softok2/wp-content/uploads/2018/11/Service3.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2018-11-17 17:26:22', '2018-11-17 17:26:22', '', 'Service4', '', 'inherit', 'closed', 'closed', '', 'service4', '', '', '2018-11-17 17:26:22', '2018-11-17 17:26:22', '', 0, 'http://localhost/softok2/wp-content/uploads/2018/11/Service4.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2018-11-17 17:26:22', '2018-11-17 17:26:22', '', 'Service5', '', 'inherit', 'closed', 'closed', '', 'service5', '', '', '2018-11-17 17:26:22', '2018-11-17 17:26:22', '', 0, 'http://localhost/softok2/wp-content/uploads/2018/11/Service5.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2018-11-17 17:26:23', '2018-11-17 17:26:23', '', 'Service6', '', 'inherit', 'closed', 'closed', '', 'service6', '', '', '2018-11-17 17:26:23', '2018-11-17 17:26:23', '', 0, 'http://localhost/softok2/wp-content/uploads/2018/11/Service6.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2018-11-17 17:26:23', '2018-11-17 17:26:23', '', 'Service7', '', 'inherit', 'closed', 'closed', '', 'service7', '', '', '2018-11-17 17:26:23', '2018-11-17 17:26:23', '', 0, 'http://localhost/softok2/wp-content/uploads/2018/11/Service7.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2018-11-17 17:49:37', '2018-11-17 17:49:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-11-17 17:49:37', '2018-11-17 17:49:37', '', 6, 'http://localhost/softok2/6-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-11-17 17:51:37', '2018-11-17 17:51:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-11-17 17:51:37', '2018-11-17 17:51:37', '', 6, 'http://localhost/softok2/6-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-11-17 18:22:07', '2018-11-17 18:22:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-11-17 18:22:07', '2018-11-17 18:22:07', '', 6, 'http://localhost/softok2/6-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-11-20 17:10:37', '2018-11-20 17:10:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-11-20 17:10:37', '2018-11-20 17:10:37', '', 6, 'http://localhost/softok2/6-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-11-20 17:12:35', '2018-11-20 17:12:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-11-20 17:12:35', '2018-11-20 17:12:35', '', 6, 'http://localhost/softok2/6-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-11-20 17:13:34', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-20 17:13:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/softok2/?post_type=acf&p=54', 0, 'acf', '', 0),
(55, 1, '2018-11-20 17:15:48', '2018-11-20 17:15:48', '', 'Skills', '', 'publish', 'closed', 'closed', '', 'acf_skills', '', '', '2018-11-20 17:15:48', '2018-11-20 17:15:48', '', 0, 'http://localhost/softok2/?post_type=acf&#038;p=55', 0, 'acf', '', 0),
(56, 1, '2018-11-20 17:16:24', '2018-11-20 17:16:24', '', 'SCRUM', '', 'publish', 'closed', 'closed', '', 'scrum', '', '', '2018-11-20 17:16:24', '2018-11-20 17:16:24', '', 0, 'http://localhost/softok2/?post_type=skills&#038;p=56', 0, 'skills', '', 0),
(57, 1, '2018-11-20 17:17:02', '2018-11-20 17:17:02', '', 'Html & Css', '', 'publish', 'closed', 'closed', '', 'html-css', '', '', '2018-11-20 17:17:02', '2018-11-20 17:17:02', '', 0, 'http://localhost/softok2/?post_type=skills&#038;p=57', 0, 'skills', '', 0),
(58, 1, '2018-11-20 17:17:14', '2018-11-20 17:17:14', '', 'Angular 1 y 2', '', 'publish', 'closed', 'closed', '', 'angular-1-y-2', '', '', '2018-11-20 17:17:14', '2018-11-20 17:17:14', '', 0, 'http://localhost/softok2/?post_type=skills&#038;p=58', 0, 'skills', '', 0),
(59, 1, '2018-11-20 17:17:24', '2018-11-20 17:17:24', '', 'Wordpress', '', 'publish', 'closed', 'closed', '', 'wordpress', '', '', '2018-11-20 17:17:24', '2018-11-20 17:17:24', '', 0, 'http://localhost/softok2/?post_type=skills&#038;p=59', 0, 'skills', '', 0),
(60, 1, '2018-11-20 17:20:34', '2018-11-20 17:20:34', '', 'Angular 1 y 2', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-11-20 17:20:34', '2018-11-20 17:20:34', '', 0, 'http://localhost/softok2/?post_type=skills&#038;p=60', 0, 'skills', '', 0),
(61, 1, '2018-11-20 17:20:57', '2018-11-20 17:20:57', '', 'UX and UI Design', '', 'publish', 'closed', 'closed', '', 'ux-and-ui-design', '', '', '2018-11-20 17:20:57', '2018-11-20 17:20:57', '', 0, 'http://localhost/softok2/?post_type=skills&#038;p=61', 0, 'skills', '', 0),
(62, 1, '2018-11-20 17:21:09', '2018-11-20 17:21:09', '', 'Python / Django', '', 'publish', 'closed', 'closed', '', 'python-django', '', '', '2018-11-20 17:21:09', '2018-11-20 17:21:09', '', 0, 'http://localhost/softok2/?post_type=skills&#038;p=62', 0, 'skills', '', 0),
(63, 1, '2018-11-20 17:21:20', '2018-11-20 17:21:20', '', '.NET', '', 'publish', 'closed', 'closed', '', 'net', '', '', '2018-11-20 17:21:20', '2018-11-20 17:21:20', '', 0, 'http://localhost/softok2/?post_type=skills&#038;p=63', 0, 'skills', '', 0),
(64, 1, '2018-11-20 17:21:32', '2018-11-20 17:21:32', '', 'Android/IOs', '', 'publish', 'closed', 'closed', '', 'android-ios', '', '', '2018-11-20 17:21:32', '2018-11-20 17:21:32', '', 0, 'http://localhost/softok2/?post_type=skills&#038;p=64', 0, 'skills', '', 0),
(65, 1, '2018-11-20 18:26:22', '2018-11-20 18:26:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-11-20 18:26:22', '2018-11-20 18:26:22', '', 6, 'http://localhost/softok2/6-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-11-20 18:34:33', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-20 18:34:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/softok2/?post_type=clientes&p=66', 0, 'clientes', '', 0),
(67, 1, '2018-11-20 18:34:50', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-20 18:34:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/softok2/?post_type=consejos&p=67', 0, 'consejos', '', 0),
(68, 1, '2018-11-20 21:30:27', '2018-11-20 21:30:27', '', 'Cliente 7', '', 'publish', 'closed', 'closed', '', 'cliente-7', '', '', '2018-11-20 21:35:11', '2018-11-20 21:35:11', '', 0, 'http://localhost/softok2/?post_type=clientes&#038;p=68', 0, 'clientes', '', 0),
(69, 1, '2018-11-20 21:29:32', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-20 21:29:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/softok2/?post_type=clientes&p=69', 0, 'clientes', '', 0),
(70, 1, '2018-11-20 21:30:16', '2018-11-20 21:30:16', '', 'ClientLogo01', '', 'inherit', 'closed', 'closed', '', 'clientlogo01', '', '', '2018-11-20 21:30:16', '2018-11-20 21:30:16', '', 68, 'http://localhost/softok2/wp-content/uploads/2018/11/ClientLogo01.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2018-11-20 21:30:16', '2018-11-20 21:30:16', '', 'ClientLogo02', '', 'inherit', 'closed', 'closed', '', 'clientlogo02', '', '', '2018-11-20 21:30:16', '2018-11-20 21:30:16', '', 68, 'http://localhost/softok2/wp-content/uploads/2018/11/ClientLogo02.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2018-11-20 21:30:17', '2018-11-20 21:30:17', '', 'ClientLogo03', '', 'inherit', 'closed', 'closed', '', 'clientlogo03', '', '', '2018-11-20 21:30:17', '2018-11-20 21:30:17', '', 68, 'http://localhost/softok2/wp-content/uploads/2018/11/ClientLogo03.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2018-11-20 21:30:17', '2018-11-20 21:30:17', '', 'ClientLogo04', '', 'inherit', 'closed', 'closed', '', 'clientlogo04', '', '', '2018-11-20 21:30:17', '2018-11-20 21:30:17', '', 68, 'http://localhost/softok2/wp-content/uploads/2018/11/ClientLogo04.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2018-11-20 21:30:18', '2018-11-20 21:30:18', '', 'ClientLogo05', '', 'inherit', 'closed', 'closed', '', 'clientlogo05', '', '', '2018-11-20 21:30:18', '2018-11-20 21:30:18', '', 68, 'http://localhost/softok2/wp-content/uploads/2018/11/ClientLogo05.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2018-11-20 21:30:18', '2018-11-20 21:30:18', '', 'ClientLogo06', '', 'inherit', 'closed', 'closed', '', 'clientlogo06', '', '', '2018-11-20 21:30:18', '2018-11-20 21:30:18', '', 68, 'http://localhost/softok2/wp-content/uploads/2018/11/ClientLogo06.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2018-11-20 21:30:19', '2018-11-20 21:30:19', '', 'ClientLogo07', '', 'inherit', 'closed', 'closed', '', 'clientlogo07', '', '', '2018-11-20 21:30:19', '2018-11-20 21:30:19', '', 68, 'http://localhost/softok2/wp-content/uploads/2018/11/ClientLogo07.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2018-11-20 21:30:38', '2018-11-20 21:30:38', '', 'Cliente 6', '', 'publish', 'closed', 'closed', '', 'cliente-6', '', '', '2018-11-20 21:34:52', '2018-11-20 21:34:52', '', 0, 'http://localhost/softok2/?post_type=clientes&#038;p=77', 0, 'clientes', '', 0),
(78, 1, '2018-11-20 21:30:50', '2018-11-20 21:30:50', '', 'Cliente 5', '', 'publish', 'closed', 'closed', '', 'cliente-5', '', '', '2018-11-20 21:34:33', '2018-11-20 21:34:33', '', 0, 'http://localhost/softok2/?post_type=clientes&#038;p=78', 0, 'clientes', '', 0),
(79, 1, '2018-11-20 21:31:03', '2018-11-20 21:31:03', '', 'Cliente 4', '', 'publish', 'closed', 'closed', '', 'cliente-4', '', '', '2018-11-20 21:34:12', '2018-11-20 21:34:12', '', 0, 'http://localhost/softok2/?post_type=clientes&#038;p=79', 0, 'clientes', '', 0),
(80, 1, '2018-11-20 21:31:11', '2018-11-20 21:31:11', '', 'Cliente 3', '', 'publish', 'closed', 'closed', '', 'cliente_3', '', '', '2018-11-20 21:33:51', '2018-11-20 21:33:51', '', 0, 'http://localhost/softok2/?post_type=clientes&#038;p=80', 0, 'clientes', '', 0),
(81, 1, '2018-11-20 21:31:19', '2018-11-20 21:31:19', '', 'Cliente 2', '', 'publish', 'closed', 'closed', '', 'cliente-2', '', '', '2018-11-20 21:33:26', '2018-11-20 21:33:26', '', 0, 'http://localhost/softok2/?post_type=clientes&#038;p=81', 0, 'clientes', '', 0),
(82, 1, '2018-11-20 21:31:26', '2018-11-20 21:31:26', '', 'Cliente 1', '', 'publish', 'closed', 'closed', '', 'cliente-1', '', '', '2018-11-20 21:32:57', '2018-11-20 21:32:57', '', 0, 'http://localhost/softok2/?post_type=clientes&#038;p=82', 0, 'clientes', '', 0),
(83, 1, '2018-11-20 23:47:42', '2018-11-20 23:47:42', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-11-20 23:47:42', '2018-11-20 23:47:42', '', 6, 'http://localhost/softok2/6-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-11-21 21:36:06', '2018-11-21 21:36:06', '', 'PARA VENCER, HAY QUE CONVENCER', 'Conocer las ventajas de la tecnología que utiliza en sus proyectos es una buena práctica, no pierda la oportunidad.', 'inherit', 'closed', 'closed', '', '19-autosave-v1', '', '', '2018-11-21 21:36:06', '2018-11-21 21:36:06', '', 19, 'http://localhost/softok2/19-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(14, 1, 0),
(17, 1, 0),
(19, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'carlos'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"11fd5acf4d92e059551c5be32227f553ee88ead011398a9e972b29393272645e\";a:4:{s:10:\"expiration\";i:1542897846;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36\";s:5:\"login\";i:1542725046;}s:64:\"7d9acb195175ab182f692de12de7cdf3ba2658ee1b8d7398666ad70145ae33cb\";a:4:{s:10:\"expiration\";i:1543008953;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36\";s:5:\"login\";i:1542836153;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&posts_list_mode=list'),
(19, 1, 'wp_user-settings-time', '1542406466'),
(20, 1, 'edit_post_per_page', '20'),
(21, 1, 'closedpostboxes_post', 'a:0:{}'),
(22, 1, 'metaboxhidden_post', 'a:7:{i:0;s:5:\"acf_8\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(23, 1, 'closedpostboxes_home-carousel-post', 'a:0:{}'),
(24, 1, 'metaboxhidden_home-carousel-post', 'a:5:{i:0;s:5:\"acf_8\";i:1;s:6:\"acf_22\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'carlos', '$P$Be3cp1A7P3jywU5HKAdgRIxdSNmQBB/', 'carlos', 'carlitos051186@gmail.com', '', '2018-11-16 16:43:50', '', 0, 'carlos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=828;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
