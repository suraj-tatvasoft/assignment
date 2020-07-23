<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'assignment' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'V{ [[cZG~v`eocBH|VgJp_,bc_sw3R~6WS_aP66>kF7TADy{h.R0w:4kK.g==6gI' );
define( 'SECURE_AUTH_KEY',  '|XL7m/#cAL$[5W>EwtqToY6L>Z#d`P]S9-gz.}_6 W2Wda:>k*-OiB>MH-t U9g1' );
define( 'LOGGED_IN_KEY',    'j~$0p&hFsk=pACVr2lWLMp:~apdH{?}yH:n3Y57<b)2MK{eR5gTZv@KT(DsP!,$1' );
define( 'NONCE_KEY',        '@**7@Z,$X2]h1AdWG`JM58IUx>D9g }HPLoyvPFt=wYPI3SyX2LU0BmueIxfe`M&' );
define( 'AUTH_SALT',        'P$![wXDA 8|g~OTLe.m}Jqdjgl{CAfCEQ)^;caCq=bu:5K?l_a)k i/FwGEi[F6q' );
define( 'SECURE_AUTH_SALT', 'Y[!y`D{hZ[u=V2hSsv??1@xzq:%qcISsN&^tw6&<s{uff/ax`+bpa0z2Aj}E?Wc3' );
define( 'LOGGED_IN_SALT',   '](Q1%]>W7A2>`QP1.;lX,_||wFQg4oF.?0a L$4C@]$G2j5H@f~ N~O.XgG$tZ=:' );
define( 'NONCE_SALT',       'or@$r?V}<07UY(=D!=2lMl-2iZ,QooLee?8DKE3,!h90Tl>TkMB/pPzkOeh]kxyU' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'as_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );
define('FS_METHOD', 'direct');
define('WP_POST_REVISIONS', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
