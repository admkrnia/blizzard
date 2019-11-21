<?php
/**
 * Custom Customizer Controls.
 *
 * @package Shopical
 */

/**
 * Custom Controls of theme
 *
 * @package Shopical
 */

class Shopical_Section_Title extends WP_Customize_Control {
    public $type = 'section-title';
    public $label = '';
    public $description = '';

    public function enqueue()
    {

        wp_enqueue_style('shopical-custom-controls-css', trailingslashit(get_template_directory_uri()) . 'inc/customizer/css/customizer.css', array(), '1.0', 'all');
    }

    public function render_content() {
        ?>
        <h3><?php echo esc_html( $this->label ); ?></h3>
        <?php if (!empty($this->description)) { ?>
            <span class="customize-control-description"><?php echo esc_html($this->description); ?></span>
        <?php } ?>
        <?php
    }
}


/**
 * Customize Control for Taxonomy Select.
 *
 * @since 1.0.0
 *
 * @see WP_Customize_Control
 */
class Shopical_Dropdown_Taxonomies_Control extends WP_Customize_Control
{

    /**
     * Control type.
     *
     * @access public
     * @var string
     */
    public $type = 'dropdown-taxonomies';

    /**
     * Taxonomy.
     *
     * @access public
     * @var string
     */
    public $taxonomy = '';

    /**
     * Constructor.
     *
     * @since 1.0.0
     *
     * @param WP_Customize_Manager $manager Customizer bootstrap instance.
     * @param string $id Control ID.
     * @param array $args Optional. Arguments to override class property defaults.
     */
    public function __construct($manager, $id, $args = array())
    {

        $our_taxonomy = 'category';
        if (isset($args['taxonomy'])) {
            $taxonomy_exist = taxonomy_exists($args['taxonomy']);
            if (true === $taxonomy_exist) {
                $our_taxonomy = $args['taxonomy'];
            }
        }
        $args['taxonomy'] = $our_taxonomy;
        $this->taxonomy = $our_taxonomy;

        parent::__construct($manager, $id, $args);
    }

    /**
     * Render content.
     *
     * @since 1.0.0
     */
    public function render_content()
    {

        $tax_args = array(
            'hierarchical' => 0,
            'taxonomy' => $this->taxonomy,
        );
        $all_taxonomies = get_categories($tax_args);

        ?>
        <label>
            <span class="customize-control-title"><?php echo esc_html($this->label); ?></span>
            <select <?php $this->link(); ?>>
                <?php
                printf('<option value="%s" %s>%s</option>', 0, selected($this->value(), '', false), __('Select', 'shopical'));
                ?>
                <?php if (!empty($all_taxonomies)) : ?>
                    <?php foreach ($all_taxonomies as $key => $tax) : ?>
                        <?php
                        printf('<option value="%s" %s>%s</option>', esc_attr($tax->term_id), selected($this->value(), $tax->term_id, false), esc_html($tax->name));
                        ?>
                    <?php endforeach ?>
                <?php endif ?>
            </select>
        </label>
        <?php
    }
}





/**
 * Image Check Box Custom Control
 *
 * @author Anthony Hortin <http://maddisondesigns.com>
 * @license http://www.gnu.org/licenses/gpl-2.0.html
 * @link https://github.com/maddisondesigns
 */
class Shopical_Image_Checkbox_Custom_Control extends WP_Customize_Control
{
    /**
     * The type of control being rendered
     */
    public $type = 'image_checkbox';

    /**
     * Enqueue our scripts and styles
     */
    public function enqueue()
    {
        wp_enqueue_style('shopical-custom-controls-css', trailingslashit(get_template_directory_uri()) . 'inc/customizer/css/customizer.css', array(), '1.0', 'all');
    }

    /**
     * Render the control in the customizer
     */
    public function render_content()
    {
        ?>
        <div class="image_checkbox_control">
            <?php if (!empty($this->label)) { ?>
                <span class="customize-control-title"><?php echo esc_html($this->label); ?></span>
            <?php } ?>
            <?php if (!empty($this->description)) { ?>
                <span class="customize-control-description"><?php echo esc_html($this->description); ?></span>
            <?php } ?>
            <?php $chkboxValues = explode(',', esc_attr($this->value())); ?>
            <input type="hidden" id="<?php echo esc_attr($this->id); ?>" name="<?php echo esc_attr($this->id); ?>"
                   value="<?php echo esc_attr($this->value()); ?>"
                   class="customize-control-multi-image-checkbox" <?php $this->link(); ?> />
            <?php foreach ($this->choices as $key => $value) { ?>
                <label class="checkbox-label">
                    <input type="checkbox" name="<?php echo esc_attr($key); ?>"
                           value="<?php echo esc_attr($key); ?>" <?php checked(in_array(esc_attr($key), $chkboxValues), 1); ?>
                           class="multi-image-checkbox"/>
                    <img src="<?php echo esc_attr($value['image']); ?>" alt="<?php echo esc_attr($value['name']); ?>"
                         title="<?php echo esc_attr($value['name']); ?>"/>
                </label>
            <?php } ?>
        </div>
        <?php
    }
}

/**
 * Sortable Repeater Custom Control
 *
 * @author Anthony Hortin <http://maddisondesigns.com>
 * @license http://www.gnu.org/licenses/gpl-2.0.html
 * @link https://github.com/maddisondesigns
 */
class Shopical_Sortable_Field_Custom_Control extends WP_Customize_Control
{


    /**
     * The type of control being rendered
     */
    public $type = 'sortable_field';

    /**
     * Constructor
     */
    public function __construct($manager, $id, $args = array(), $options = array())
    {
        parent::__construct($manager, $id, $args);
    }

    /**
     * Enqueue our scripts and styles
     */
    public function enqueue()
    {
        wp_enqueue_script('shopical-custom-controls-js', trailingslashit(get_template_directory_uri()) . 'inc/customizer/js/customizer.js', array('jquery', 'jquery-ui-core'), '1.0', true);
        wp_enqueue_style('shopical-custom-controls-css', trailingslashit(get_template_directory_uri()) . 'inc/customizer/css/customizer.css', array(), '1.0', 'all');
    }

    /**
     * Render the control in the customizer
     */
    public function render_content()
    {

        if (empty($this->choices)) {
            return;
        }

        ?>
        <div class="sortable_repeater_control">
            <?php if (!empty($this->label)) { ?>
                <span class="customize-control-title"><?php echo esc_html($this->label); ?></span>
            <?php } ?>
            <?php if (!empty($this->description)) { ?>
                <span class="customize-control-description"><?php echo esc_html($this->description); ?></span>
            <?php } ?>
            <input type="hidden" id="<?php echo esc_attr($this->id); ?>" name="<?php echo esc_attr($this->id); ?>"
                   value="<?php echo esc_attr($this->value()); ?>"
                   class="customize-control-sortable-repeater" />
            <?php foreach ($this->choices as $key => $value) : ?>
            <?php

            ?>

                <div class="sortable">
                    <div class="field">
                        <input type="button" value="<?php echo esc_attr($value); ?>" class="sortable-input"/><span
                                class="dashicons dashicons-sort"></span>
                    </div>
                </div>
            <?php endforeach; ?>

        </div>
        <?php
    }
}

/**
 * Text Radio Button Custom Control
 *
 * @author Anthony Hortin <http://maddisondesigns.com>
 * @license http://www.gnu.org/licenses/gpl-2.0.html
 * @link https://github.com/maddisondesigns
 */
class Shopical_Text_Radio_Button_Custom_Control extends WP_Customize_Control
{
    /**
     * The type of control being rendered
     */
    public $type = 'text_radio_button';

    /**
     * Enqueue our scripts and styles
     */
    public function enqueue()
    {
        wp_enqueue_style('shopical-custom-controls-css', trailingslashit(get_template_directory_uri()) . 'inc/customizer/css/customizer.css', array(), '1.0', 'all');
    }

    /**
     * Render the control in the customizer
     */
    public function render_content()
    {
        ?>
        <div class="text_radio_button_control">
            <?php if (!empty($this->label)) { ?>
                <span class="customize-control-title"><?php echo esc_html($this->label); ?></span>
            <?php } ?>
            <?php if (!empty($this->description)) { ?>
                <span class="customize-control-description"><?php echo esc_html($this->description); ?></span>
            <?php } ?>

            <div class="radio-buttons">
                <?php foreach ($this->choices as $key => $value) { ?>
                    <label class="radio-button-label">
                        <input type="radio" name="<?php echo esc_attr($this->id); ?>"
                               value="<?php echo esc_attr($key); ?>" <?php $this->link(); ?> <?php checked(esc_attr($key), $this->value()); ?>/>
                        <span><?php echo esc_attr($value); ?></span>
                    </label>
                <?php } ?>
            </div>
        </div>
        <?php
    }
}

/**
 * Image Radio Button Custom Control
 *
 * @author Anthony Hortin <http://maddisondesigns.com>
 * @license http://www.gnu.org/licenses/gpl-2.0.html
 * @link https://github.com/maddisondesigns
 */
class Shopical_Image_Radio_Button_Custom_Control extends WP_Customize_Control
{
    /**
     * The type of control being rendered
     */
    public $type = 'image_radio_button';

    /**
     * Enqueue our scripts and styles
     */
    public function enqueue()
    {
        wp_enqueue_style('shopical-custom-controls-css', trailingslashit(get_template_directory_uri()) . 'inc/customizer/css/customizer.css', array(), '1.0', 'all');
    }

    /**
     * Render the control in the customizer
     */
    public function render_content()
    {
        ?>
        <div class="image_radio_button_control">
            <?php if (!empty($this->label)) { ?>
                <span class="customize-control-title"><?php echo esc_html($this->label); ?></span>
            <?php } ?>
            <?php if (!empty($this->description)) { ?>
                <span class="customize-control-description"><?php echo esc_html($this->description); ?></span>
            <?php } ?>

            <?php foreach ($this->choices as $key => $value) { ?>
                <label class="radio-button-label">
                    <input type="radio" name="<?php echo esc_attr($this->id); ?>"
                           value="<?php echo esc_attr($key); ?>" <?php $this->link(); ?> <?php checked(esc_attr($key), $this->value()); ?>/>
                    <img src="<?php echo esc_attr($value['image']); ?>" alt="<?php echo esc_attr($value['name']); ?>"
                         title="<?php echo esc_attr($value['name']); ?>"/>
                </label>
            <?php } ?>
        </div>
        <?php
    }
}

/**
 * Simple Notice Custom Control
 *
 * @author Anthony Hortin <http://maddisondesigns.com>
 * @license http://www.gnu.org/licenses/gpl-2.0.html
 * @link https://github.com/maddisondesigns
 */
class Shopical_Simple_Notice_Custom_Control extends WP_Customize_Control
{
    /**
     * The type of control being rendered
     */
    public $type = 'simple_notice';

    /**
     * Render the control in the customizer
     */
    public function render_content()
    {
        $allowed_html = array(
            'a' => array(
                'href' => array(),
                'title' => array(),
                'class' => array(),
                'target' => array(),
            ),
            'br' => array(),
            'em' => array(),
            'strong' => array(),
            'i' => array(
                'class' => array()
            ),
            'span' => array(
                'class' => array(),
            ),
            'code' => array(),
        );
        ?>
        <div class="simple-notice-custom-control">
            <?php if (!empty($this->label)) { ?>
                <span class="customize-control-title"><?php echo esc_html($this->label); ?></span>
            <?php } ?>
            <?php if (!empty($this->description)) { ?>
                <span class="customize-control-description"><?php echo wp_kses($this->description, $allowed_html); ?></span>
            <?php } ?>
        </div>
        <?php
    }
}

/**
 * Slider Custom Control
 *
 * @author Anthony Hortin <http://maddisondesigns.com>
 * @license http://www.gnu.org/licenses/gpl-2.0.html
 * @link https://github.com/maddisondesigns
 */
class Shopical_Slider_Custom_Control extends WP_Customize_Control
{
    /**
     * The type of control being rendered
     */
    public $type = 'slider_control';

    /**
     * Enqueue our scripts and styles
     */
    public function enqueue()
    {
        wp_enqueue_script('shopical-custom-controls-js', trailingslashit(get_template_directory_uri()) . 'inc/customizer/js/customizer.js', array('jquery', 'jquery-ui-core'), '1.0', true);
        wp_enqueue_style('shopical-custom-controls-css', trailingslashit(get_template_directory_uri()) . 'inc/customizer/css/customizer.css', array(), '1.0', 'all');
    }

    /**
     * Render the control in the customizer
     */
    public function render_content()
    {
        ?>
        <div class="slider-custom-control">
            <span class="customize-control-title"><?php echo esc_html($this->label); ?></span><input type="number"
                                                                                                     id="<?php echo esc_attr($this->id); ?>"
                                                                                                     name="<?php echo esc_attr($this->id); ?>"
                                                                                                     value="<?php echo esc_attr($this->value()); ?>"
                                                                                                     class="customize-control-slider-value" <?php $this->link(); ?> />
            <div class="slider" slider-min-value="<?php echo esc_attr($this->input_attrs['min']); ?>"
                 slider-max-value="<?php echo esc_attr($this->input_attrs['max']); ?>"
                 slider-step-value="<?php echo esc_attr($this->input_attrs['step']); ?>"></div>
            <span class="slider-reset dashicons dashicons-image-rotate"
                  slider-reset-value="<?php echo esc_attr($this->value()); ?>"></span>
        </div>
        <?php
    }
}

/**
 * Toggle Switch Custom Control
 *
 * @author Anthony Hortin <http://maddisondesigns.com>
 * @license http://www.gnu.org/licenses/gpl-2.0.html
 * @link https://github.com/maddisondesigns
 */
class Shopical_Toggle_Switch_Custom_control extends WP_Customize_Control
{
    /**
     * The type of control being rendered
     */
    public $type = 'toogle_switch';

    /**
     * Enqueue our scripts and styles
     */
    public function enqueue()
    {
        wp_enqueue_style('shopical-custom-controls-css', trailingslashit(get_template_directory_uri()) . 'inc/customizer/css/customizer.css', array(), '1.0', 'all');
    }

    /**
     * Render the control in the customizer
     */
    public function render_content()
    {
        ?>
        <div class="toggle-switch-control">
            <div class="toggle-switch">
                <input type="checkbox" id="<?php echo esc_attr($this->id); ?>" name="<?php echo esc_attr($this->id); ?>"
                       class="toggle-switch-checkbox"
                       value="<?php echo esc_attr($this->value()); ?>" <?php $this->link();
                checked($this->value()); ?>>
                <label class="toggle-switch-label" for="<?php echo esc_attr($this->id); ?>">
                    <span class="toggle-switch-inner"></span>
                    <span class="toggle-switch-switch"></span>
                </label>
            </div>
            <span class="customize-control-title"><?php echo esc_html($this->label); ?></span>
            <?php if (!empty($this->description)) { ?>
                <span class="customize-control-description"><?php echo esc_html($this->description); ?></span>
            <?php } ?>
        </div>
        <?php
    }
}


/**
 * Sortable Repeater Custom Control
 *
 * @author Anthony Hortin <http://maddisondesigns.com>
 * @license http://www.gnu.org/licenses/gpl-2.0.html
 * @link https://github.com/maddisondesigns
 */
class Shopical_Sortable_Repeater_Custom_Control extends WP_Customize_Control
{
    /**
     * The type of control being rendered
     */
    public $type = 'sortable_repeater';
    /**
     * Button labels
     */
    public $button_labels = array();

    /**
     * Constructor
     */
    public function __construct($manager, $id, $args = array(), $options = array())
    {
        parent::__construct($manager, $id, $args);
        // Merge the passed button labels with our default labels
        $this->button_labels = wp_parse_args($this->button_labels,
            array(
                'add' => __('Add', 'shopical'),
            )
        );
    }

    /**
     * Enqueue our scripts and styles
     */
    public function enqueue()
    {
        wp_enqueue_script('shopical-custom-controls-js', trailingslashit(get_template_directory_uri()) . 'inc/customizer/js/customizer.js', array('jquery', 'jquery-ui-core'), '1.0', true);
        wp_enqueue_style('shopical-custom-controls-css', trailingslashit(get_template_directory_uri()) . 'inc/customizer/css/customizer.css', array(), '1.0', 'all');
    }

    /**
     * Render the control in the customizer
     */
    public function render_content()
    {
        ?>
        <div class="sortable_repeater_control">
            <?php if (!empty($this->label)) { ?>
                <span class="customize-control-title"><?php echo esc_html($this->label); ?></span>
            <?php } ?>
            <?php if (!empty($this->description)) { ?>
                <span class="customize-control-description"><?php echo esc_html($this->description); ?></span>
            <?php } ?>
            <input type="hidden" id="<?php echo esc_attr($this->id); ?>" name="<?php echo esc_attr($this->id); ?>"
                   value="<?php echo esc_attr($this->value()); ?>"
                   class="customize-control-sortable-repeater" <?php $this->link(); ?> />
            <div class="sortable">
                <div class="repeater">
                    <input type="text" value="" class="repeater-input" placeholder="https://"/>
                    <span class="dashicons dashicons-sort"></span>
                    <a class="customize-control-sortable-repeater-delete" href="#"><span
                                class="dashicons dashicons-no-alt"></span></a>
                </div>
            </div>
            <button class="button customize-control-sortable-repeater-add"
                    type="button"><?php echo $this->button_labels['add']; ?></button>
        </div>
        <?php
    }
}


/**
 * Alpha Color Picker Custom Control
 *
 * @author Braad Martin <http://braadmartin.com>
 * @license http://www.gnu.org/licenses/gpl-3.0.html
 * @link https://github.com/BraadMartin/components/tree/master/customizer/alpha-color-picker
 */
class Shopical_Customize_Alpha_Color_Control extends WP_Customize_Control
{
    /**
     * The type of control being rendered
     */
    public $type = 'alpha-color';
    /**
     * Add support for palettes to be passed in.
     *
     * Supported palette values are true, false, or an array of RGBa and Hex colors.
     */
    public $palette;
    /**
     * Add support for showing the opacity value on the slider handle.
     */
    public $show_opacity;

    /**
     * Enqueue our scripts and styles
     */
    public function enqueue()
    {
        wp_enqueue_script('shopical-custom-controls-js', trailingslashit(get_template_directory_uri()) . 'inc/customizer/js/customizer.js', array('jquery', 'wp-color-picker'), '1.0', true);
        wp_enqueue_style('shopical-custom-controls-css', trailingslashit(get_template_directory_uri()) . 'inc/customizer/css/customizer.css', array('wp-color-picker'), '1.0', 'all');
    }

    /**
     * Render the control in the customizer
     */
    public function render_content()
    {

        // Process the palette
        if (is_array($this->palette)) {
            $palette = implode('|', $this->palette);
        } else {
            // Default to true.
            $palette = (false === $this->palette || 'false' === $this->palette) ? 'false' : 'true';
        }

        // Support passing show_opacity as string or boolean. Default to true.
        $show_opacity = (false === $this->show_opacity || 'false' === $this->show_opacity) ? 'false' : 'true';

        ?>
        <label>
            <?php // Output the label and description if they were passed in.
            if (isset($this->label) && '' !== $this->label) {
                echo '<span class="customize-control-title">' . sanitize_text_field($this->label) . '</span>';
            }
            if (isset($this->description) && '' !== $this->description) {
                echo '<span class="description customize-control-description">' . sanitize_text_field($this->description) . '</span>';
            } ?>
        </label>
        <input class="alpha-color-control" type="text" data-show-opacity="<?php echo $show_opacity; ?>"
               data-palette="<?php echo esc_attr($palette); ?>"
               data-default-color="<?php echo esc_attr($this->settings['default']->default); ?>" <?php $this->link(); ?> />
        <?php
    }
}


/**
 * URL sanitization
 *
 * @param  string    Input to be sanitized (either a string containing a single url or multiple, separated by commas)
 * @return string    Sanitized input
 */
if (!function_exists('shopical_url_sanitization')) {
    function shopical_url_sanitization($input)
    {
        if (strpos($input, ',') !== false) {
            $input = explode(',', $input);
        }
        if (is_array($input)) {
            foreach ($input as $key => $value) {
                $input[$key] = esc_url_raw($value);
            }
            $input = implode(',', $input);
        } else {
            $input = esc_url_raw($input);
        }
        return $input;
    }
}

/**
 * Switch sanitization
 *
 * @param  string        Switch value
 * @return integer    Sanitized value
 */
if (!function_exists('shopical_switch_sanitization')) {
    function shopical_switch_sanitization($input)
    {
        if (true === $input) {
            return 1;
        } else {
            return 0;
        }
    }
}

/**
 * Radio Button and Select sanitization
 *
 * @param  string        Radio Button value
 * @return integer    Sanitized value
 */
if (!function_exists('shopical_radio_sanitization')) {
    function shopical_radio_sanitization($input, $setting)
    {
        //get the list of possible radio box or select options
        $choices = $setting->manager->get_control($setting->id)->choices;

        if (array_key_exists($input, $choices)) {
            return $input;
        } else {
            return $setting->default;
        }
    }
}

/**
 * Integer sanitization
 *
 * @param  string        Input value to check
 * @return integer    Returned integer value
 */
if (!function_exists('shopical_sanitize_integer')) {
    function shopical_sanitize_integer($input)
    {
        return (int)$input;
    }
}

/**
 * Text sanitization
 *
 * @param  string    Input to be sanitized (either a string containing a single string or multiple, separated by commas)
 * @return string    Sanitized input
 */
if (!function_exists('shopical_text_sanitization')) {
    function shopical_text_sanitization($input)
    {
        if (strpos($input, ',') !== false) {
            $input = explode(',', $input);
        }
        if (is_array($input)) {
            foreach ($input as $key => $value) {
                $input[$key] = sanitize_text_field($value);
            }
            $input = implode(',', $input);
        } else {
            $input = sanitize_text_field($input);
        }
        return $input;
    }
}

/**
 * Array sanitization
 *
 * @param  array    Input to be sanitized
 * @return array    Sanitized input
 */
if (!function_exists('shopical_array_sanitization')) {
    function shopical_array_sanitization($input)
    {
        if (is_array($input)) {
            foreach ($input as $key => $value) {
                $input[$key] = sanitize_text_field($value);
            }
        } else {
            $input = '';
        }
        return $input;
    }
}

/**
 * Alpha Color (Hex & RGBa) sanitization
 *
 * @param  string    Input to be sanitized
 * @return string    Sanitized input
 */
if (!function_exists('shopical_hex_rgba_sanitization')) {
    function shopical_hex_rgba_sanitization($input, $setting)
    {
        if (empty($input) || is_array($input)) {
            return $setting->default;
        }

        if (false === strpos($input, 'rgba')) {
            // If string doesn't start with 'rgba' then santize as hex color
            $input = sanitize_hex_color($input);
        } else {
            // Sanitize as RGBa color
            $input = str_replace(' ', '', $input);
            sscanf($input, 'rgba(%d,%d,%d,%f)', $red, $green, $blue, $alpha);
            $input = 'rgba(' . shopical_in_range($red, 0, 255) . ',' . shopical_in_range($green, 0, 255) . ',' . shopical_in_range($blue, 0, 255) . ',' . shopical_in_range($alpha, 0, 1) . ')';
        }
        return $input;
    }
}

/**
 * Only allow values between a certain minimum & maxmium range
 *
 * @param  number    Input to be sanitized
 * @return number    Sanitized input
 */
if (!function_exists('shopical_in_range')) {
    function shopical_in_range($input, $min, $max)
    {
        if ($input < $min) {
            $input = $min;
        }
        if ($input > $max) {
            $input = $max;
        }
        return $input;
    }
}

/**
 * Google Font sanitization
 *
 * @param  string    JSON string to be sanitized
 * @return string    Sanitized input
 */
if (!function_exists('shopical_google_font_sanitization')) {
    function shopical_google_font_sanitization($input)
    {
        $val = json_decode($input, true);
        if (is_array($val)) {
            foreach ($val as $key => $value) {
                $val[$key] = sanitize_text_field($value);
            }
            $input = json_encode($val);
        } else {
            $input = json_encode(sanitize_text_field($val));
        }
        return $input;
    }
}

/**
 * Date Time sanitization
 *
 * @param  string    Date/Time string to be sanitized
 * @return string    Sanitized input
 */
if (!function_exists('shopical_date_time_sanitization')) {
    function shopical_date_time_sanitization($input, $setting)
    {
        $datetimeformat = 'Y-m-d';
        if ($setting->manager->get_control($setting->id)->include_time) {
            $datetimeformat = 'Y-m-d H:i:s';
        }
        $date = DateTime::createFromFormat($datetimeformat, $input);
        if ($date === false) {
            $date = DateTime::createFromFormat($datetimeformat, $setting->default);
        }
        return $date->format($datetimeformat);
    }
}


/**
 * Upsell customizer section.
 *
 * @since  1.0.0
 * @access public
 */
class Shopical_Customize_Section_Upsell extends WP_Customize_Section
{

    /**
     * The type of customize section being rendered.
     *
     * @since  1.0.0
     * @access public
     * @var    string
     */
    public $type = 'upsell';

    /**
     * Custom button text to output.
     *
     * @since  1.0.0
     * @access public
     * @var    string
     */
    public $pro_text = '';

    /**
     * Custom pro button URL.
     *
     * @since  1.0.0
     * @access public
     * @var    string
     */
    public $pro_url = '';

    /**
     * Add custom parameters to pass to the JS via JSON.
     *
     * @since  1.0.0
     * @access public
     * @return void
     */
    public function json()
    {
        $json = parent::json();

        $json['pro_text'] = $this->pro_text;
        $json['pro_url'] = esc_url($this->pro_url);

        return $json;
    }

    /**
     * Outputs the Underscore.js template.
     *
     * @since  1.0.0
     * @access public
     * @return void
     */
    protected function render_template()
    { ?>

        <li id="accordion-section-{{ data.id }}"
            class="accordion-section control-section control-section-{{ data.type }} cannot-expand">

            <h3 class="accordion-section-title">
                {{ data.title }}

                <# if ( data.pro_text && data.pro_url ) { #>
                <a href="{{ data.pro_url }}" class="button button-secondary alignright" target="_blank">{{ data.pro_text
                    }}</a>
                <# } #>
            </h3>
        </li>
    <?php }
}