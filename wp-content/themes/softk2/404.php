<?php get_header(); ?>

    <!-- Title Page -->
    <section class="bg-title-page flex-c-m p-t-820" style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/img/galeriaImage.jpg); 
        height: 890px">
        <div style="width:100%; background: #000; opacity: 0.5; height: 72px; bottom: 0; 
        vertical-align: middle;">
        <div class="container">
            <h2 class="tit6 t-left" style="opacity: 1;color: #fff; margin-top: 22px !important; margin-bottom: 22px">
                    Página no encontrada. <a href="<?php echo site_url(); ?>">Ir al inicio</a>
            </h2>
        </div>
            
        </div>

    </section>
        
    <?php get_template_part( 'partials/content', 'footer' ); ?>


    <!-- Back to top -->
    <!-- <div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div> -->
	

<?php get_footer(); ?>

