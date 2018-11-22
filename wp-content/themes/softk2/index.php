<?php

get_header(); ?>

<div class="wrap">
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
			

			<?php
			/* Start the Loop */
			while ( have_posts() ) : the_post();?>
				<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>	
					<h1><?php the_title() ?></h1>
					<?php the_post_thumbnail() ?>
					<div class="post-content">
						<?php the_content() ?>
					</div>
				</article>
			<?php endwhile; // End of the loop.?>

		</main><!-- #main -->
	</div><!-- #primary -->
</div><!-- .wrap -->

<?php get_footer();