<?php
/*
Plugin Name: Softok2
Description: Plugin del sitio 
Version: 1.0
Author: Carlos Rafael
License: GPLv2 or later
*/

if ( !defined( 'ABSPATH' ) ) {
  exit;
}

function softok2_posts_carousel( $atts, $content = null ) {
   $a = shortcode_atts( array(
      'post_type' => 'consejos'
   ), $atts );
   
   ob_start();
   
   $args = array( 
      'post_type' => $a['post_type']
   );
      
   $posts_query = new WP_Query;
   $posts_query->query( $args );
   if ($posts_query->have_posts()) {
      ?>
         <div id="home">

            <!-- Start cSlider -->

            <div id="da-slider" class="da-slider">

                <div class="triangle"></div>

                <!-- mask elemet use for masking background image -->

                <div class="mask"></div>

                <!-- All slides centred in container element -->

                <div class="container">
      <?php
         while($posts_query->have_posts()){
            $posts_query->the_post();?>
            <div class="da-slide">

               <h2 class="fittext2"><?php the_title();?></h2>
               
               <?php if (get_field('post_sub_title')): ?>
                  <h4><?php the_field('post_sub_title'); ?></h4>
               <?php endif ?>
               
               <?php the_excerpt();?>

               <a href="<?php the_permalink();?>" class="da-link button">leer más</a>

               <?php if (has_post_thumbnail()): ?>
                  <div class="da-img">

                     <img src="<?php the_post_thumbnail_url('large');?>" alt="<?php echo get_post_meta(get_post_thumbnail_id( the_ID() ), '_wp_attachment_image_alt', true); ?>" width="320">

                  </div>
               <?php endif ?>

            </div>

         <?php }
         wp_reset_postdata();
         
      /* Get the buffered content into a var */
      $news = ob_get_contents().
                     '<div class="da-arrows">'.
                        '<span class="da-arrows-prev"></span>'.
                        '<span class="da-arrows-next"></span>'.
                     '</div>'.'</div></div></div>';

      /* Clean buffer */
      ob_end_clean();
      return $news;
   }else{
      return 'No posts found';
   }
}

function softok2_posts_portafolio( $atts, $content = null ){
  $a = shortcode_atts( array(
      'post_type' => 'portafolio'
   ), $atts );
   
   ob_start();
   
   $args = array( 
      'post_type' => $a['post_type']
   );
      
   $posts_query = new WP_Query;
   $posts_query->query( $args );
   if ($posts_query->have_posts()) {
      $counter = 1;
      echo '<div id="single-project">';
      while($posts_query->have_posts()){
      $posts_query->the_post();?>
        <div id="slidingDiv<?php echo($counter) ?>" class="toggleDiv row-fluid single-project">

          <div class="span6">

              <img src="<?php the_post_thumbnail_url('large');?>" alt="<?php echo get_post_meta(get_post_thumbnail_id( the_ID() ), '_wp_attachment_image_alt', true); ?>" />

          </div>

          <div class="span6">

              <div class="project-description">

                  <div class="project-title clearfix">

                      <h3><?php the_title() ?></h3>

                      <span class="show_hide close">

                          <i class="fas fa-times"></i>

                      </span>

                  </div>

                  <div class="project-info">

                      <?php if (get_field('cliente')): ?>
                        <div>

                          <span>Cliente:</span><?php the_field('cliente') ?>

                        </div>

                      <?php endif ?>
                      
                      <?php if (get_field('fecha')): ?>
                        <div>
                          <span>Fecha</span><?php 
                            $date = new DateTime(get_field('fecha', false, false)); 
                            echo $date->format('M Y');
                          ?>
                        </div>
                      <?php endif ?>
                          
                      <?php if (get_field('skills')): ?>
                        <div>
          
                          <span>Skills</span><?php the_field('skills') ?>

                        </div>

                        
                      <?php endif ?>
                      
                      <?php if (get_field('link')): ?>
                        <div>
                          <span>Link</span><a style="color:#fff" href="<?php the_field('link') ?>" target="_blank"><?php the_field('link') ?></a>
                        </div>
                      <?php endif ?>
                          
                  </div>

              </div>

          </div>

        </div>

      <?php $counter++; }
      wp_reset_postdata();

      $posts_query = new WP_Query;
      $posts_query->query( $args );
      $counter = 1;
      echo '<ul id="portfolio-grid" class="thumbnails row">';
      while($posts_query->have_posts()){
      $posts_query->the_post();?>
        <li class="span4 mix web">

            <div class="thumbnail">

                <img src="<?php the_post_thumbnail_url('large');?>" alt="<?php echo get_post_meta(get_post_thumbnail_id( the_ID() ), '_wp_attachment_image_alt', true); ?>" />

                <a href="#single-project" class="show_hide more" rel="#slidingDiv<?php echo $counter ?>">

                    <i class="fas fa-plus"></i>

                </a>

                <h3><?php the_title() ?></h3>                                

                <div class="mask"></div>

            </div>

        </li>  
      <?php $counter++; }
      wp_reset_postdata();
         
      /* Get the buffered content into a var */
      $news = ob_get_contents().'</ul></div>';

      /* Clean buffer */
      ob_end_clean();
      return $news;
   }else{
      return 'No posts found';
   }
}

function softok2_posts_skills($atts, $content = null){
  $a = shortcode_atts( array(
      'post_type' => 'skills'
   ), $atts );
   
   ob_start();
   
   $args = array( 
      'post_type' => $a['post_type']
   );
      
   $posts_query = new WP_Query;
   $posts_query->query( $args );
   if ($posts_query->have_posts()) {
       echo '<ul class="skills">';
       while($posts_query->have_posts()){
          $posts_query->the_post();?>
          
          <li>

              <span class="bar" data-width="<?php the_field('porcentaje') ?>%"></span>

              <h3><?php the_title() ?></h3>

          </li>

        <?php }
        wp_reset_postdata();
         
        /* Get the buffered content into a var */
        $news = ob_get_contents();

        /* Clean buffer */
        ob_end_clean();
        return $news.'</ul>';
   }else{
      return 'No posts found';
   }       
}

function softok2_posts_clients($atts, $content = null){
  $a = shortcode_atts( array(
      'post_type' => 'clientes'
   ), $atts );
   
   ob_start();
   
   $args = array( 
      'post_type' => $a['post_type']
   );
      
   $posts_query = new WP_Query;
   $posts_query->query( $args );
   if ($posts_query->have_posts()) {
       echo '<ul class="row client-slider" id="clint-slider">';
       while($posts_query->have_posts()){
          $posts_query->the_post();?>
          <li>

              <a href="">

                  <img src="<?php the_post_thumbnail_url('large');?>" alt="<?php echo get_post_meta(get_post_thumbnail_id( the_ID() ), '_wp_attachment_image_alt', true); ?>">

              </a>

          </li>

   <?php }
        wp_reset_postdata();
         
        /* Get the buffered content into a var */
        $news = ob_get_contents();

        /* Clean buffer */
        ob_end_clean();
        return $news.'</ul>';
   }else{
      return 'No posts found';
   }       
}

add_shortcode( 'softok2_post_carousel', 'softok2_posts_carousel' );

add_shortcode( 'softok2_portafolio', 'softok2_posts_portafolio' );

add_shortcode( 'softok2_skills', 'softok2_posts_skills' );

add_shortcode( 'softok2_clients', 'softok2_posts_clients' );