<?php

/**
 * Returns posts.
 *
 * @since Shopical 1.0.0
 */
if (!function_exists('shopical_get_posts')):
    function shopical_get_posts($number_of_posts, $category_id = '0', $post_type = 'post', $taxonomy = 'category')
    {
        if (is_front_page()) {
            $paged = (get_query_var('page')) ? get_query_var('page') : 1;
        } else {
            $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
        }
        $ins_args = array(
            'post_type' => $post_type,
            'posts_per_page' => absint($number_of_posts),
            'paged' => $paged,
            'post_status' => 'publish',
            'orderby' => 'date',
            'order' => 'DESC'
        );


        if (absint($category_id) > 0) {

            $ins_args['tax_query'] = array(
                array(
                    'taxonomy' => $taxonomy,
                    'field' => 'term_id',
                    'terms' => absint($category_id)
                )
            );
        }

        $all_posts = new WP_Query($ins_args);
        return $all_posts;
    }

endif;


/**
 * Returns all categories.
 *
 * @since Shopical 1.0.0
 */
if (!function_exists('shopical_get_terms')):
    function shopical_get_terms($taxonomy = 'category', $category_id = 0, $default = '')
    {
        $taxonomy = !empty($taxonomy) ? $taxonomy : 'category';

        if ($category_id > 0) {
            $term = get_term_by('id', absint($category_id), $taxonomy);
            if ($term)
                return esc_html($term->name);


        } else {
            $terms = get_terms(array(
                'taxonomy' => $taxonomy,
                'orderby' => 'name',
                'order' => 'ASC',
                'hide_empty' => true,
            ));


            if (isset($terms) && !empty($terms)) {
                foreach ($terms as $term) {
                    if ($default != 'first') {
                        $array['0'] = __('Select Category', 'shopical');
                    }
                    $array[$term->term_id] = esc_html($term->name);
                }

                return $array;
            }
        }
    }
endif;

/**
 * Returns all categories.
 *
 * @since Shopical 1.0.0
 */
if (!function_exists('shopical_get_terms_link')):
    function shopical_get_terms_link($category_id = 0)
    {

        if (absint($category_id) > 0) {
            return get_term_link(absint($category_id), 'category');
        } else {
            return get_post_type_archive_link('post');
        }
    }
endif;

/**
 * Returns word count of the sentences.
 *
 * @since Shopical 1.0.0
 */
if (!function_exists('shopical_get_excerpt')):
    function shopical_get_excerpt($length = 25, $shopical_content = null, $post_id = 1)
    {
        $length = absint($length);
        $source_content = preg_replace('`\[[^\]]*\]`', '', $shopical_content);
        $trimmed_content = wp_trim_words($source_content, $length, '...');
        return $trimmed_content;
    }
endif;


/**
 * Returns word count of the sentences.
 *
 * @since Shopical 1.0.0
 */
if (!function_exists('shopical_excerpt_ellisis')):
    function shopical_excerpt_ellisis($length = 25, $shopical_content = null, $post_id = 1)
    {
        if (!is_admin()) {
            global $post;
            //$more = '&hellip;. <a href="'. get_permalink($post->ID) . '">Continue reading.</a>';
            //$more = '<span class="read-more-faq"><a href="'. get_permalink($post->ID) . '">'. __("Read More", "shopical") .'"</a></span>';
            $more = sprintf('<span class="read-more-faq"><a href="%1s">%2s</a></span>', get_permalink($post->ID), __("Read More", "shopical"));
            return $more;

        }
    }
endif;
add_filter('excerpt_more', 'shopical_excerpt_ellisis');


/**
 * Returns no image url.
 *
 * @since Shopical 1.0.0
 */
if (!function_exists('shopical_no_image_url')):
    function shopical_no_image_url()
    {
        $url = get_template_directory_uri() . '/assets/images/no-image.png';
        return $url;
    }

endif;

/**
 * Returns no image url.
 *
 * @since Shopical 1.0.0
 */
if (!function_exists('shopical_post_format')):
    function shopical_post_format($post_id)
    {
        $post_format = get_post_format($post_id);
        switch ($post_format) {
            case "image":
                echo "<div class='shopical-post-format'><i class='fa fa-camera'></i></div>";
                break;
            case "video":
                echo "<div class='shopical-post-format'><i class='fa fa-video-camera'></i></div>";

                break;
            case "gallery":
                echo "<div class='shopical-post-format'><i class='fa fa-camera'></i></div>";
                break;
            default:
                echo "";
        }


    }

endif;


/**
 * Outputs the tab posts
 *
 * @since 1.0.0
 *
 * @param array $args Post Arguments.
 */
if (!function_exists('shopical_render_posts')):
    function shopical_render_posts($type, $show_excerpt, $excerpt_length, $number_of_posts, $category = '0')
    {

        $args = array();

        switch ($type) {
            case 'popular':
                $args = array(
                    'post_type' => 'post',
                    'post_status' => 'publish',
                    'posts_per_page' => absint($number_of_posts),
                    'orderby' => 'comment_count',
                    'ignore_sticky_posts' => true
                );
                break;

            case 'recent':
                $args = array(
                    'post_type' => 'post',
                    'post_status' => 'publish',
                    'posts_per_page' => absint($number_of_posts),
                    'orderby' => 'date',
                    'ignore_sticky_posts' => true
                );
                break;

            case 'categorised':
                $args = array(
                    'post_type' => 'post',
                    'post_status' => 'publish',
                    'posts_per_page' => absint($number_of_posts),
                    'ignore_sticky_posts' => true
                );
                $category = isset($category) ? $category : '0';
                if (absint($category) > 0) {
                    $args['cat'] = absint($category);
                }
                break;


            default:
                break;
        }

        if (!empty($args) && is_array($args)) {
            $all_posts = new WP_Query($args);
            if ($all_posts->have_posts()):
                echo '<ul class="article-item article-list-item article-tabbed-list article-item-left">';
                while ($all_posts->have_posts()): $all_posts->the_post();

                    ?>
                    <li class="full-item clearfix">
                        <div class="base-border">
                            <div class="af-container-row align-items-center">
                                <?php
                                if (has_post_thumbnail()) {
                                    $thumb = wp_get_attachment_image_src(get_post_thumbnail_id(get_the_ID()));
                                    $url = $thumb['0'];
                                    //$col_class = 'col-xs-8 col-sm-8';
                                } else {
                                    $url = '';
                                    //$col_class = 'col-sm-12';
                                }
                                global $post;
                                ?>
                                <?php if (!empty($url)): ?>
                                    <div class="af-tabbed-post-col-image pad float-l">

                                        <div class="tab-article-image">
                                            <a href="<?php the_permalink(); ?>" class="post-thumb">
                                                <img src="<?php echo esc_url($url); ?>"/>
                                            </a>
                                            <?php echo shopical_post_format($post->ID); ?>
                                        </div>


                                    </div>
                                <?php endif; ?>
                                <div class="full-item-details af-tabbed-post-col-details  pad float-l">
                                    <div class="full-item-metadata primary-font">
                                        <div class="figure-categories figure-categories-bg">

                                            <?php shopical_post_categories('/'); ?>
                                        </div>
                                    </div>
                                    <div class="full-item-content">
                                        <h3 class="article-title article-title-1">
                                            <a href="<?php the_permalink(); ?>">
                                                <?php the_title(); ?>
                                            </a>
                                        </h3>
                                        <div class="grid-item-metadata">
                                            <?php echo ''; ?>
                                            <?php shopical_post_item_meta(); ?>

                                        </div>
                                        <?php if ($show_excerpt != 'false'): ?>
                                            <div class="full-item-discription">
                                                <div class="post-description">
                                                    <?php if (absint($excerpt_length) > 0) : ?>
                                                        <?php
                                                        $excerpt = shopical_get_excerpt($excerpt_length, get_the_content());
                                                        echo wp_kses_post(wpautop($excerpt));
                                                        ?>
                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                <?php
                endwhile;
                wp_reset_postdata();
                echo '</ul>';
            endif;
        }
    }
endif;


/**
 * Returns no image url.
 *
 * @since Shopical 1.0.0
 */
if (!function_exists('shopical_youtube_thumbnail_url')):
    function shopical_youtube_thumbnail_url($youtube_url, $thumb_size = "sddefault")
    {

        if(!empty($youtube_url)){
            preg_match_all("#(?<=v=|v\/|vi=|vi\/|youtu.be\/)[a-zA-Z0-9_-]{11}#", $youtube_url, $matches);
            $url_id_array = $matches[0];
            $url_id = $url_id_array[0];

            $thumb_url = "https://img.youtube.com/vi/" . $url_id . "/" . $thumb_size . ".jpg";
            return $thumb_url;
        }


    }

endif;

/**
 * Returns no image url.
 *
 * @since Shopical 1.0.0
 */
if (!function_exists('shopical_widget_title_section')):
    function shopical_widget_title_section($title = '', $title_note = '')
    { ?>

        <span class="header-after">
            <?php echo esc_html($title); ?>
        </span>
        <?php if (!empty($title_note)): ?>
        <span class="title-note">
                <span>
                    <?php echo esc_html($title_note); ?>
                </span>
            </span>
    <?php endif;

    }

endif;