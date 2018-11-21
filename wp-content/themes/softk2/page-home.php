	<?php get_header(); ?>

	<!-- Start home section -->

        <?php echo do_shortcode('[softok2_post_carousel]'); ?>

        <!-- End home section -->

        <!-- Service section start -->

        <div class="section primary-section" id="service">

            <div class="container">

                <!-- Start title section -->

                <div class="title">
                
                    <h2><?php the_field('metodologia_titulo'); ?></h2>

                    <!-- Section's title goes here -->
                    <?php if (get_field('metodologia_resumen')): ?>
                        <p style="text-align:justify"><?php the_field('metodologia_resumen'); ?></p>
                    <?php endif ?>
                    
                    <!--Simple description for section goes here. -->

                </div>

                <div class="row-fluid">

                    <div class="span4">

                        <div class="centered service">

                            <div class="circle-border zoom-in">

                                <img class="img-circle" src="<?php $metodologia_1_imagen = get_field('metodologia_1_imagen'); echo $metodologia_1_imagen['url']; ?>" alt="Análisis de requerimientos">

                            </div>

                            <h3><?php the_field('metodologia_1_titulo') ?></h3>

                            <p><?php the_field('metodologia_1_contenido') ?></p>

                        </div>

                    </div>

                    <div class="span4">

                        <div class="centered service">

                            <div class="circle-border zoom-in">

                                <img class="img-circle" src="<?php $metodologia_2_imagen = get_field('metodologia_2_imagen'); echo $metodologia_2_imagen['url']; ?>" alt="Especificación" />

                            </div>

                            <h3><?php the_field('metodologia_2_titulo') ?></h3>

                            <p><?php the_field('metodologia_2_contenido') ?></p>

                        </div>

                    </div>

                    <div class="span4">

                        <div class="centered service">

                            <div class="circle-border zoom-in">

                                <img class="img-circle" src="<?php $metodologia_3_imagen = get_field('metodologia_3_imagen'); echo $metodologia_3_imagen['url']; ?>" alt="Diseño y Arquitectura">

                            </div>

                            <h3><?php the_field('metodologia_3_titulo') ?></h3>

                            <p><?php the_field('metodologia_3_contenido') ?></p>

                        </div>

                    </div>

                </div>    

                <div class="row-fluid">

					<div class="span4">

                        <div class="centered service">

                            <div class="circle-border zoom-in">

                                <img class="img-circle" src="<?php $metodologia_4_imagen = get_field('metodologia_4_imagen'); echo $metodologia_4_imagen['url']; ?>" alt="Programación">

                            </div>

                            <h3><?php the_field('metodologia_4_titulo') ?></h3>

                            <p><?php the_field('metodologia_4_contenido') ?></p>

                        </div>

                    </div>

                    <div class="span4">

                        <div class="centered service">

                            <div class="circle-border zoom-in">

                                <img class="img-circle" src="<?php $metodologia_5_imagen = get_field('metodologia_5_imagen'); echo $metodologia_5_imagen['url']; ?>" alt="Prueba" />

                            </div>

                            <h3><?php the_field('metodologia_5_titulo') ?></h3>

                            <p><?php the_field('metodologia_5_contenido') ?></p>

                        </div>

                    </div>

                    <div class="span4">

                        <div class="centered service">

                            <div class="circle-border zoom-in">

                                <img class="img-circle" src="<?php $metodologia_6_imagen = get_field('metodologia_6_imagen'); echo $metodologia_6_imagen['url']; ?>" alt="Documentación">

                            </div>

                            <h3><?php the_field('metodologia_6_titulo') ?></h3>

                            <p><?php the_field('metodologia_6_contenido') ?></p>

                        </div>

                    </div>

				</div>

                 <div class="row-fluid">

				    <div class="span4">

                        <div class="centered service">

                            

                        </div>

                    </div>

					<div class="span4">

                        <div class="centered service">

                            <div class="circle-border zoom-in">

                                <img class="img-circle" src="<?php $metodologia_7_imagen = get_field('metodologia_7_imagen'); echo $metodologia_7_imagen['url']; ?>" alt="Mantenimiento">

                            </div>

                            <h3><?php the_field('metodologia_7_titulo') ?></h3>

                            <p><?php the_field('metodologia_7_contenido') ?></p>

                        </div>

                    </div>

                </div>					

                

            </div>

        </div>

        <!-- Service section end -->

        <!-- Portfolio section start -->

        <div class="section secondary-section " id="portfolio">

            <div class="triangle"></div>

            <div class="container">

                <div class=" title">

                    <h2><?php the_field('portafolio_titulo') ?></h2>

                    <p><?php the_field('portafolio_subtitulo') ?></p>

                </div>

             <!--    <ul class="nav nav-pills">

                    <li class="filter" data-filter="all">

                        <a href="#noAction">All</a>

                    </li>

                    <li class="filter" data-filter="web">

                        <a href="#noAction">Web</a>

                    </li>

                    <li class="filter" data-filter="photo">

                        <a href="#noAction">Sistema</a>

                    </li>

                    <li class="filter" data-filter="identity">

                        <a href="#noAction">App</a>

                    </li>

                </ul> -->

                <!-- Start details for portfolio project 1 -->

                <?php echo do_shortcode('[softok2_portafolio]') ?>

            </div>

        </div>

        <!-- Portfolio section end -->

        <!-- About us section start -->

        <div class="section primary-section" id="about">

            <div class="triangle"></div>

            <div class="container">                               

                <div class="about-text centered">

                    <h3><?php the_field('nosotros_titulo') ?></h3>

                    <p><?php the_field('nosotros_contenido') ?></p>

                </div>

                <h3><?php the_field('skills_titulo') ?></h3>

                <div class="row-fluid">

                    <div class="span12">

                    	<?php echo do_shortcode('[softok2_skills]') ?>

                    </div>

                </div>

            </div>

        </div>

        <!-- About us section end -->

       <!-- Client section start -->

        <div id="clients">

           

                

        <div class="section third-section">

            <div class="container centered">

                <div class="sub-section">

                    <div class="title clearfix">

                        <div class="pull-left">

                            <h3>Clientes</h3>

                        </div>

                        <ul class="client-nav pull-right">

                            <li id="client-prev"></li>

                            <li id="client-next"></li>

                        </ul>

                    </div>

                    <?php echo do_shortcode('[softok2_clients]') ?>

                </div>

            </div>

        </div>

<?php get_footer(); ?>
