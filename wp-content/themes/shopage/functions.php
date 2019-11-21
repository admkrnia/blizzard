<?php
/*This file is part of shopage child theme.

All functions of this file will be loaded before of parent theme functions.
Learn more at https://codex.wordpress.org/Child_Themes.

Note: this function loads the parent stylesheet before, then child theme stylesheet
(leave it in place unless you know what you are doing.)
*/

function shopage_enqueue_child_styles()
{
    $min = defined('SCRIPT_DEBUG') && SCRIPT_DEBUG ? '' : '.min';
    $parent_style = 'shopical-style';
    $parent_woocommerce_style = 'shopical-woocommerce-style';

    $fonts_url = 'https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,400italic,700';
    wp_enqueue_style('shopage-google-fonts', $fonts_url, array(), null);

    wp_enqueue_style('bootstrap', get_template_directory_uri() . '/assets/bootstrap/css/bootstrap' . $min . '.css');

    wp_enqueue_style('owl-carousel', get_template_directory_uri() . '/assets/owl-carousel-v2/assets/owl.carousel' . $min . '.css');
    wp_enqueue_style('owl-theme-default', get_template_directory_uri() . '/assets/owl-carousel-v2/assets/owl.theme.default.css');
    $deps = array( 'bootstrap', $parent_style);
    /**
     * Load WooCommerce compatibility file.
     */
    if (class_exists('WooCommerce')) {
        wp_enqueue_style($parent_woocommerce_style, get_template_directory_uri() . '/woocommerce.css');

        $font_path = WC()->plugin_url() . '/assets/fonts/';
        $inline_font = '@font-face {
			font-family: "star";
			src: url("' . $font_path . 'star.eot");
			src: url("' . $font_path . 'star.eot?#iefix") format("embedded-opentype"),
				url("' . $font_path . 'star.woff") format("woff"),
				url("' . $font_path . 'star.ttf") format("truetype"),
				url("' . $font_path . 'star.svg#star") format("svg");
			font-weight: normal;
			font-style: normal;
		}';

        wp_add_inline_style($parent_woocommerce_style, $inline_font);
        $deps[] = 'shopical-woocommerce-style';
    }
    wp_enqueue_style($parent_style, get_template_directory_uri() . '/style.css');
    wp_enqueue_style(
        'shopage-style',
        get_stylesheet_directory_uri() . '/style.css',
        $deps,
        wp_get_theme()->get('Version'));



}

add_action('wp_enqueue_scripts', 'shopage_enqueue_child_styles');


function shopical_load_parent_rtl_css() {
    wp_enqueue_style( 'shopical-rtl', get_template_directory_uri()  . '/rtl.css' );
}
if ( is_rtl() ){
    add_action( 'wp_enqueue_scripts', 'shopical_load_parent_rtl_css', 10 );
}

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function shopage_customize_register($wp_customize)
{
    $wp_customize->get_setting('main_navigation_background_color')->default = '#3b496c';


}

add_action('customize_register', 'shopage_customize_register', 99999);



