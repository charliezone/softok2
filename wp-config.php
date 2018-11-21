<?php
/** 
 * Configuración básica de WordPress.
 *
 * Este archivo contiene las siguientes configuraciones: ajustes de MySQL, prefijo de tablas,
 * claves secretas, idioma de WordPress y ABSPATH. Para obtener más información,
 * visita la página del Codex{@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} . Los ajustes de MySQL te los proporcionará tu proveedor de alojamiento web.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** Ajustes de MySQL. Solicita estos datos a tu proveedor de alojamiento web. ** //
/** El nombre de tu base de datos de WordPress */
define('DB_NAME', 'softok2');

/** Tu nombre de usuario de MySQL */
define('DB_USER', 'root');

/** Tu contraseña de MySQL */
define('DB_PASSWORD', '');

/** Host de MySQL (es muy probable que no necesites cambiarlo) */
define('DB_HOST', 'localhost');

/** Codificación de caracteres para la base de datos. */
define('DB_CHARSET', 'utf8mb4');

/** Cotejamiento de la base de datos. No lo modifiques si tienes dudas. */
define('DB_COLLATE', '');


/**#@+
 * Claves únicas de autentificación.
 *
 * Define cada clave secreta con una frase aleatoria distinta.
 * Puedes generarlas usando el {@link https://api.wordpress.org/secret-key/1.1/salt/ servicio de claves secretas de WordPress}
 * Puedes cambiar las claves en cualquier momento para invalidar todas las cookies existentes. Esto forzará a todos los usuarios a volver a hacer login.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', '8!7Zb>0pDaw[ha2C^gHh>$gMUg.&&{IreFf);VkINC?Ob$msWay/R0U#;|TZW&b$');
define('SECURE_AUTH_KEY', 'Rg^& Zn_a}am@<#30.-0[V;z@e]k~&H$tYD.w/0anx`X1b5|f#9%SgkErv_<@-#/');
define('LOGGED_IN_KEY', '8IK)^B!6vNkd7fzCKQc!1h9q.v{6nce[DcA=9Cz:#*6 j{s:DGu;yoJ)afTif|N8');
define('NONCE_KEY', 'g:Q(0fOQY]kcd9BXhukc:N7L>=oTuP:Kkrk gVia~-CIGP9}EK>|w&pirQ}1;;ON');
define('AUTH_SALT', 'TV<][YLd8e;QP}Y3-;:N2GIek0RcJJlcXbICnTKw@+%d8`g7S-=0n#ukwY.9!`~f');
define('SECURE_AUTH_SALT', 'lEGc_KrqzOS-:zpdL&$ZH37D9O8cui:DTsfbeyVi!Nh=^~>l)Mo3i_HajT2r/h#x');
define('LOGGED_IN_SALT', 'yeU^6#6{Z@]h[E=veD0f8,d~I>k/SlknCtuOhUo6cD~@fd.zR@bGDayi7TbmTF93');
define('NONCE_SALT', '4+8FB=a`6d@9&LcX>!YqG,!-hA-el3hska29v-pJHn7f%.bzJu4pdXcY2ZR(~0Xj');

/**#@-*/

/**
 * Prefijo de la base de datos de WordPress.
 *
 * Cambia el prefijo si deseas instalar multiples blogs en una sola base de datos.
 * Emplea solo números, letras y guión bajo.
 */
$table_prefix  = 'wp_';


/**
 * Para desarrolladores: modo debug de WordPress.
 *
 * Cambia esto a true para activar la muestra de avisos durante el desarrollo.
 * Se recomienda encarecidamente a los desarrolladores de temas y plugins que usen WP_DEBUG
 * en sus entornos de desarrollo.
 */
define('WP_DEBUG', true);

/* ¡Eso es todo, deja de editar! Feliz blogging */

/** WordPress absolute path to the Wordpress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

