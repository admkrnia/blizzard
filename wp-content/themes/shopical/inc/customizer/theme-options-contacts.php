<?php

/**
 * Option Panel
 *
 * @package Shopical
 */

$default = shopical_get_default_theme_options();

/**
 * Contact options section
 *
 * @package Shopical
 */


// Advertisement Section.
$wp_customize->add_section('store_contact_settings',
    array(
        'title'      => esc_html__('Contact Options', 'shopical'),
        'priority'   => 50,
        'capability' => 'edit_theme_options',
        'panel'      => 'theme_option_panel',
    )
);

/*store_contact_name*/
$wp_customize->add_setting('store_contact_name',
    array(
        'default'           => $default['store_contact_name'],
        'capability'        => 'edit_theme_options',
        'sanitize_callback' => 'sanitize_text_field',
    )
);
$wp_customize->add_control('store_contact_name',
    array(
        'label'    => esc_html__('Store Name', 'shopical'),
        'section'  => 'store_contact_settings',
        'type'     => 'text',
        'priority' => 130,
    )
);

/*store_contact_address*/
$wp_customize->add_setting('store_contact_address',
    array(
        'default'           => $default['store_contact_address'],
        'capability'        => 'edit_theme_options',
        'sanitize_callback' => 'sanitize_text_field',
    )
);
$wp_customize->add_control('store_contact_address',
    array(
        'label'    => esc_html__('Store Address', 'shopical'),
        'section'  => 'store_contact_settings',
        'type'     => 'text',
        'priority' => 130,
    )
);

/*store_contact_phone*/
$wp_customize->add_setting('store_contact_phone',
    array(
        'default'           => $default['store_contact_phone'],
        'capability'        => 'edit_theme_options',
        'sanitize_callback' => 'sanitize_text_field',
    )
);
$wp_customize->add_control('store_contact_phone',
    array(
        'label'    => esc_html__('Store Phone', 'shopical'),
        'section'  => 'store_contact_settings',
        'type'     => 'text',
        'priority' => 130,
    )
);

/*store_contact_email*/
$wp_customize->add_setting('store_contact_email',
    array(
        'default'           => $default['store_contact_email'],
        'capability'        => 'edit_theme_options',
        'sanitize_callback' => 'sanitize_text_field',
    )
);
$wp_customize->add_control('store_contact_email',
    array(
        'label'    => esc_html__('Store Email', 'shopical'),
        'section'  => 'store_contact_settings',
        'type'     => 'text',
        'priority' => 130,
    )
);

/*store_contact_hours*/
$wp_customize->add_setting('store_contact_hours',
    array(
        'default'           => $default['store_contact_hours'],
        'capability'        => 'edit_theme_options',
        'sanitize_callback' => 'sanitize_text_field',
    )
);
$wp_customize->add_control('store_contact_hours',
    array(
        'label'    => esc_html__('Opening Hours', 'shopical'),
        'section'  => 'store_contact_settings',
        'type'     => 'text',
        'priority' => 130,
    )
);

/*store_contact_form*/
$wp_customize->add_setting('store_contact_form',
    array(
        'default'           => $default['store_contact_form'],
        'capability'        => 'edit_theme_options',
        'sanitize_callback' => 'sanitize_text_field',
    )
);
$wp_customize->add_control('store_contact_form',
    array(
        'label'    => esc_html__('Contact Form Shortcode', 'shopical'),
        'section'  => 'store_contact_settings',
        'type'     => 'text',
        'priority' => 130,
        //'active_callback' => 'store_contact_map_status'
    )
);


$wp_customize->add_setting( "store_contact_page",
    array(
        'default'           => $default['store_contact_page'],
        'capability'        => 'edit_theme_options',
        'sanitize_callback' => 'shopical_sanitize_dropdown_pages',
    )
);

$wp_customize->add_control( "store_contact_page",
    array(
        'label'           => esc_html__( 'Select Contact Page', 'shopical' ),
        'section'         => 'store_contact_settings',
        'type'            => 'dropdown-pages',
        'priority' 		  => 130,
    )
);
