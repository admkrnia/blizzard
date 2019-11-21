<?php
/**
 * Block Section Main Banner.
 *
 * @package Shopical
 */
?>


<div class="section-body banner-slider-5 clearfix af-container-row">

    <div class="right-list-section col-20 float-l pad">
        <?php shopical_get_block('vertical', 'category-list'); ?>
    </div>
    <?php
    $show_main_banner_section = shopical_get_option('show_main_banner_section');
    if ($show_main_banner_section):
        ?>
        <div class="banner-slider banner-slider-section col-55 float-l pad">
            <?php
            $slider_mode = shopical_get_option('select_main_slider_section_mode');
            if ($slider_mode == 'product-slider'):
                ?>
                <?php shopical_get_block('slider-product'); ?>
            <?php else: ?>
                <?php shopical_get_block('slider-page'); ?>
            <?php endif; ?>
        </div>
    <?php endif; ?>
    <?php
    $button_class = ' aft-hidecart-btn';
    $show_button = shopical_get_option('show_latest_product_lists_button');
    if($show_button){
        $button_class = '';
    }
    ?>

    <div class="left-grid-section-wrapper col-4 float-l pad <?php echo esc_attr($button_class); ?>">

        <?php

        $category = shopical_get_option('latest_product_categories');
        $latest_product = shopical_get_products(5, $category);
        ?>

        <ul class="product-ul special-product-lists aft-product-list-mode">
            <?php
            if ($latest_product->have_posts()) :
                while ($latest_product->have_posts()): $latest_product->the_post();

                    ?>
                    <li class="item">
                        <?php shopical_get_block('list',  'product-loop'); ?>
                    </li>
                <?php endwhile; ?>
            <?php endif; ?>
            <?php wp_reset_postdata(); ?>
        </ul>

    </div>

    <div class="left-grid-section-wrapper clearfix">
        <?php shopical_get_block('horizontal', 'page-thumb-slider'); ?>
    </div>



</div>



