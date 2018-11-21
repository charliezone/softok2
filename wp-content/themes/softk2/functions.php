<?php

function softok2_setup(){
    add_theme_support( 'post-thumbnails' );
}
 

function softok2_styles_scripts() {
    wp_enqueue_style( 'font-awesome', get_template_directory_uri() . '/vendors/fontawesome/css/all.min.css');

    wp_enqueue_style( 'roboto-font', 'http://fonts.googleapis.com/css?family=Roboto:400,300,700&amp;subset=latin,latin-ext');

    wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/css/bootstrap.css');

    wp_enqueue_style( 'bootstrap-responsive', get_template_directory_uri() . '/css/bootstrap-responsive.css', array('bootstrap'));

    wp_enqueue_style( 'jquery-cslider', get_template_directory_uri() . '/css/jquery.cslider.css');

    wp_enqueue_style( 'jquery-bxslider', get_template_directory_uri() . '/css/jquery.bxslider.css');

    wp_enqueue_style( 'animate', get_template_directory_uri() . '/css/animate.css');

    wp_enqueue_style( 'softok2-style', get_stylesheet_uri(), array('bootstrap', 'bootstrap-responsive', 'jquery-cslider', 'jquery-bxslider', 'animate', 'font-awesome') );

    wp_register_script( 'softok2_jquery_version', get_template_directory_uri() . '/js/jquery.js', null, '', true );
    wp_add_inline_script( 'softok2_jquery_version', 'var softok2_jquery_version = $.noConflict(true);' );

    wp_enqueue_script( 'jquery-mixitup', get_template_directory_uri() . '/js/jquery.mixitup.js', array('softok2_jquery_version'), '', true );
    
    wp_enqueue_script( 'script-bootstrap', get_template_directory_uri() . '/js/bootstrap.js', array('softok2_jquery_version'), '', true );

    wp_enqueue_script( 'modernizr-custom', get_template_directory_uri() . '/js/modernizr.custom.js', array('softok2_jquery_version'), '', true );

    wp_enqueue_script( 'bxslider', get_template_directory_uri() . '/js/jquery.bxslider.js', array('softok2_jquery_version'), '', true );

    wp_enqueue_script( 'cslider', get_template_directory_uri() . '/js/jquery.cslider.js', array('softok2_jquery_version'), '', true );

    wp_enqueue_script( 'placeholder', get_template_directory_uri() . '/js/jquery.placeholder.js', array('softok2_jquery_version'), '', true );

    wp_enqueue_script( 'inview', get_template_directory_uri() . '/js/jquery.inview.js', array('softok2_jquery_version'), '', true );

    wp_enqueue_script( 'softok2-custom-js', get_template_directory_uri() . '/js/app.js', array('softok2_jquery_version'), '', true );
    
    wp_enqueue_script( 'google-maps', 'https://maps.googleapis.com/maps/api/js?key=AIzaSyDaBeZLeAAlSUaCtLUvawRoxyQgvr6EZ30&amp;callback=initializeMap', null, '', true );
   
}

function softok2_head_styles_scripts(){
    ob_start();
    ?>
        <!-- Fav and touch icons -->

        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo get_template_directory_uri(); ?>/images/ico/apple-touch-icon-144.png">

        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo get_template_directory_uri(); ?>/images/ico/apple-touch-icon-114.png">

        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo get_template_directory_uri(); ?>/images/apple-touch-icon-72.png">

        <link rel="apple-touch-icon-precomposed" href="<?php echo get_template_directory_uri(); ?>/images/ico/apple-touch-icon-57.png">

        <link rel="shortcut icon" href="<?php echo get_template_directory_uri(); ?>/images/ico/favicon.ico">

        <script type="text/javascript">

            window.smartlook||(function(d) {

            var o=smartlook=function(){ o.api.push(arguments)},h=d.getElementsByTagName('head')[0];

            var c=d.createElement('script');o.api=new Array();c.async=true;c.type='text/javascript';

            c.charset='utf-8';c.src='https://rec.smartlook.com/recorder.js';h.appendChild(c);

            })(document);

            smartlook('init', '75f93b93c580970c2e701e82b192ff9db1d8d347');

        </script>

    <?php 
    $content = ob_get_contents();
    /* Clean buffer */
    ob_end_clean();
    echo $content;
}

function softok2_explorers_styles_scripts(){
    wp_enqueue_style( 'pluton-ie7', get_template_directory_uri() . '/css/pluton-ie7.css' );
    wp_style_add_data( 'pluton-ie7', 'conditional', 'lt IE 7' );
    wp_enqueue_script( 'ie9-respond', get_template_directory_uri() . '/js/respond.min.js', null, '', true );
    wp_style_add_data( 'ie9-respond', 'conditional', 'lt IE 9' );
}

add_action( 'after_setup_theme', 'softok2_setup' );
add_action( 'wp_enqueue_scripts', 'softok2_explorers_styles_scripts' );
add_action( 'wp_head', 'softok2_head_styles_scripts' );
add_action( 'wp_enqueue_scripts', 'softok2_styles_scripts' );

