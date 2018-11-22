<!DOCTYPE html>

<html <?php language_attributes(); ?> >    

    <head>

        <meta charset=<?php bloginfo( 'charset' ); ?>>

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="google-site-verification" content="BU0dn61IFxgdf56u-DZbLlTFR4wxKt-tNAMYAIhX26U" />

        <title><?php bloginfo('name'); ?></title>
        
	<?php wp_head(); ?>

    </head>

    

    <body>

        <div class="navbar">

            <div class="navbar-inner">

                <div class="container">

                    <a href="#" class="brand">

                        <img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" width="192" height="40" alt="Logo" />

                        <!-- This is website logo -->

                    </a>

                    <!-- Navigation button, visible on small resolution -->

                    <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">

                        <i class="icon-menu"></i>

                    </button>

                    <!-- Main navigation -->

                    <div class="nav-collapse collapse pull-right">

                        <ul class="nav" id="top-navigation">

                            <li class="active"><a href="<?php echo (is_page('home'))?'#home':site_url().'/#home' ?>">Home</a></li>

                            <li><a href="<?php echo (is_page('home'))?'#service':site_url().'/#service' ?>">Metodologia</a></li>

                            <li><a href="<?php echo (is_page('home'))?'#portfolio':site_url().'/#portfolio' ?>">Portafolio</a></li>

                            <li><a href="<?php echo (is_page('home'))?'#about':site_url().'/#about' ?>">Nosotros</a></li>

                            <li><a href="<?php echo (is_page('home'))?'#clients':site_url().'/#clients' ?>">Clientes</a></li>

                            <li><a href="<?php echo (is_page('home'))?'#contact':site_url().'/#contact' ?>">Contacto</a></li>

                        </ul>

                    </div>

                    <!-- End main navigation -->

                </div>

            </div>

        </div>