<?php get_header(); ?>

<div class="wrap">
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
			

			<?php
			/* Start the Loop */
			while ( have_posts() ) : the_post();?>
				<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
					<div class="container">
						<div class="row">
							<div class="col-xs-12 content">
								<h1><?php the_title() ?></h1>
								<?php the_post_thumbnail() ?>
								<div class="post-excerpt">
									<?php the_excerpt() ?>
								</div>
								<a href="<?php the_permalink() ?>" class="da-link button">Leer más</a>
							</div>
						</div>
					</div>	
				</article>
			<?php endwhile; // End of the loop.?>
			<?php the_posts_pagination() ?>
		</main><!-- #main -->
	</div><!-- #primary -->
</div><!-- .wrap -->

<?php get_footer(); ?>