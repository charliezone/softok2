	<!-- Contact section start -->
    <?php if (is_page('home')): ?>
        <div id="contact" class="contact">

            <div class="section secondary-section">

                <div class="container">

                    <div class="title">

                        <h1><?php the_field('contacto_titulo') ?></h1>                        

                    </div>

                </div>

                <div class="map-wrapper">

                    <div class="map-canvas" id="map-canvas">Cargando el mapa...</div>

                    <div class="container">

                        <div class="row-fluid">

                            <div class="span5 contact-form centered">

                                <script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/shell.js"></script>
                                <script>
                                  hbspt.forms.create({
                                    portalId: "2870737",
                                    formId: "14c3050f-0d9f-49fc-8d3b-15c01e7976e4"
                                });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="span9 center contact-info">
                        <p><?php the_field('contacto_direccion') ?></p>
                        <p class="info-mail"><?php the_field('contacto_correo') ?></p>
                        <p><?php the_field('contacto_telefono') ?></p>  
                    </div>
                    <div class="row-fluid centered"> </div>
                </div>
            </div>
        </div>
    <!-- Contact section edn -->
    <?php endif ?>
    
                                                                                                                                                                                                                                                                                                                                                                                                             
    <!-- Footer section start -->
    <div class="footer">
        <p>&copy; <?php echo date('Y'); ?> All Rights Reserved</p>
    </div>

    <!-- Footer section end -->

    <!-- ScrollUp button start -->

    <div class="scrollup">

        <a href="#">

            <i class="fas fa-chevron-up"></i>

        </a>

    </div>

    <!-- BEGIN JIVOSITE CODE {literal} -->

	<script type='text/javascript'>

	(function(){ var widget_id = 'r3jBXYp8sk';var d=document;var w=window;function l(){

	var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = '//code.jivosite.com/script/widget/'+widget_id; var ss = document.getElementsByTagName('script')[0]; ss.parentNode.insertBefore(s, ss);}if(d.readyState=='complete'){l();}else{if(w.attachEvent){w.attachEvent('onload',l);}else{w.addEventListener('load',l,false);}}})();

	</script>

	<!-- {/literal} END JIVOSITE CODE -->

	<!-- Start of HubSpot Embed Code -->

  	<script type="text/javascript" id="hs-script-loader" async defer src="//js.hs-scripts.com/2870737.js"></script>

	<!-- End of HubSpot Embed Code -->

	<script>

	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){

	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),

	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)

	  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');



	  ga('create', 'UA-103082368-1', 'auto');

	  ga('send', 'pageview');



	</script>
	<?php wp_footer(); ?>
    </body>

</html>