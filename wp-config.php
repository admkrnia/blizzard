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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'db_komputer' );

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
define( 'AUTH_KEY',         '*0AW#rtmYe7 Y#9WKc&&h~w_~HYbxzX+LjhMzL~$!*)=Bh*+9HE-IE(7XDyt?Gfs' );
define( 'SECURE_AUTH_KEY',  '~GP$+0C7({*4:W2s60LHXI`+%gN&4A/;WnU<[5,wHHAtB-BYqt_)Cdj<t?aId8,+' );
define( 'LOGGED_IN_KEY',    '2 [1}[kh=Z%^F$pu)C3(^i=TdrMCwAUXPVD]PU,Y<ph}v/u;Z7d@_k=Hd.|m<em2' );
define( 'NONCE_KEY',        '[lxT,m|O-/v0]o.AXLX&FXA&,tM.rjwY{GN~(7nr5!uRQ+x2sWFo-X=rmV)pZE0[' );
define( 'AUTH_SALT',        'hR)B^.j=NN9|ohmst(lA4kbj!,ME%/b?by{&]!y1@]qe.V=5)zF2W9<l(E $1x6W' );
define( 'SECURE_AUTH_SALT', 'R5}q)qc|IKsNt5H0>`AbLn$3VVnScdsNqrWLMfFy[W>MuN#)urc5ACCJVN7G]_<v' );
define( 'LOGGED_IN_SALT',   'K/Q~VXldnjQakZ.xtk6q-o%!+Qg@rTrMXqUTb:J[^1r0iq,3YRkbK`7~2=o(?v`y' );
define( 'NONCE_SALT',       'M8) hP0/uhn}(^I,?Ucc$(l?b40h&HE#DxVV~6/h=>05wP9E9Wa<=,4 :.c<lo4l' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
