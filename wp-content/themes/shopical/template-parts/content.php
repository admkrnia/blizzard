<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Shopical
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>


    <div class="post-thumbnail-wrap">
        <?php shopical_post_thumbnail(); ?>
    </div>
    <div class="entry-wrapper">
        <header class="entry-header">
            <?php
            if (is_singular()) :
                if ('post' === get_post_type()) {
                    echo shopical_post_format($post->ID);
                    shopical_post_categories('&nbsp', 'category');
                }
                the_title('<h1 class="entry-title">', '</h1>');
            else :
                if (is_archive() || is_home()) {
                    echo shopical_post_format($post->ID);
                    shopical_post_categories('&nbsp', 'category');
                }
                the_title('<h2 class="entry-title"><a href="' . esc_url(get_permalink()) . '" rel="bookmark">', '</a></h2>');
            endif;

            if ('post' === get_post_type()) :
                ?>
                <div class="entry-meta">
                    <span><?php echo get_the_time('d M Y'); ?></span>
                    <?php shopical_posted_by(); ?>
                </div><!-- .entry-meta -->
            <?php endif; ?>
        </header><!-- .entry-header -->


        <div class="entry-content">
            <?php

            if (is_singular()) {
                the_content(sprintf(
                    wp_kses(
                    /* translators: %s: Name of current post. Only visible to screen readers */
                        __('Continue reading<span class="screen-reader-text"> "%s"</span>', 'shopical'),
                        array(
                            'span' => array(
                                'class' => array(),
                            ),
                        )
                    ),
                    get_the_title()
                ));
            } else {
                the_excerpt();
            }

            wp_link_pages(array(
                'before' => '<div class="page-links">' . esc_html__('Pages:', 'shopical'),
                'after' => '</div>',
            ));
            ?>
        </div><!-- .entry-content -->

        <footer class="entry-footer">
            <?php shopical_entry_footer(); ?>
        </footer><!-- .entry-footer -->
    </div>
</article><!-- #post-<?php the_ID(); ?> -->
