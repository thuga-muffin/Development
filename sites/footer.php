			<!-- footer -->
			<section class='container-fluid footer-reveal'>
	        <div class='row'>
	        <?php 
            $maester = new WP_Query( array( 'post_type' => 'bd-headerfooter','posts_per_page' => 1, 'order' => DESC) );
              while ( $maester->have_posts() ) : $maester->the_post(); ?>
              <div class='col-lg-6'>
              	<div class="row">
              		<div class="footer-info">
              			<img class="foot-logo" src='<?php echo get_field('global_footer_logo'); ?>'>
			            <div class="col-md-6 foot-contact">
			            	<div>
					            <h4><?php echo get_field('global_footer_email'); ?>
					            <br/><?php echo get_field('global_footer_phone'); ?></h4>
				            </div>
			            </div>
			            <div class="col-md-6 foot-location">
			            	<div>
					            <h4><?php echo get_field('global_footer_addressa'); ?>
					            <br/><?php echo get_field('global_footer_addressb'); ?></h4>
				            </div>
			            </div>
		            </div>
		        </div>
		        <div class="row">
		        	<div class="certification">
		        		<div class="col-xs-6 hidden-xs">
							<?php if(get_field('global_footer_imagec') != ''):?>
			            		<img src='<?php echo get_field('global_footer_imagec'); ?>'>
							<?php else:?>
			            		<h4><?php get_field('global_company_associationc'); ?></h4>
				            <?php endif;?>
			            </div>
			            <div class="col-xs-6 hidden-xs">
							<?php if(get_field('global_footer_imaged') != ''):?>
			            		<img src='<?php echo get_field('global_footer_imaged'); ?>'>
							<?php else:?>
			            		<h4><?php get_field('global_company_associationd'); ?></h4>
				            <?php endif;?>
			            </div>
			            <div class="col-xs-6 hidden-xs">
							<?php if(get_field('global_footer_license') != ''):?>
			            		<img src='<?php echo get_field('global_footer_license'); ?>'>
							<?php else:?>
			            		<h4><?php get_field('global_company_associationa'); ?></h4>
				            <?php endif;?>
			            </div>
			            <div class="col-xs-6 hidden-xs">
							<?php if(get_field('global_footer_imageb') != ''):?>
			            		<img src='<?php echo get_field('global_footer_imageb'); ?>'>
							<?php else:?>
			            		<h4><?php get_field('global_company_associationb'); ?></h4>
				            <?php endif;?>
			            </div>
			           
		            </div>
	            </div>
	          </div>
	          <div class='col-lg-6 visible-lg footer-map'>
	          	<div class="frame">
	          	 <?php $location = get_field('global_footer_map');
		            if( !empty($location) ): ?>
		            <div class="acf-map">
	        			<div class="marker" data-lat="<?php echo $location['lat']; ?>" data-lng="<?php echo $location['lng']; ?>">
	        			</div>
		            </div>
		        <?php endif; ?>
		        </div>
	          </div>
	        <?php endwhile; wp_reset_query();?>
	        </div>
	      </section>

	      <footer class='container-fluid'>
	        <div class='row'>
	          <div class='col-md-6'>
	            <p>B and D Construction 2016</p>
	          </div>
	          <div class='col-md-6'>
	            <ul>
	              <!--<li><a href='#'>FAQ</a></li>-->
	              <li><a href='<?php echo get_bloginfo('template_url') ?>/contact'>Contact</a></li>
	            </ul>
	          </div>
	        </div>
	      </footer>
	      <div id="siteOverlay"></div>
	    </div>
		<!-- /wrapper -->
		<?php wp_footer(); ?>

		<!-- analytics -->
		<script>
		(function(f,i,r,e,s,h,l){i['GoogleAnalyticsObject']=s;f[s]=f[s]||function(){
		(f[s].q=f[s].q||[]).push(arguments)},f[s].l=1*new Date();h=i.createElement(r),
		l=i.getElementsByTagName(r)[0];h.async=1;h.src=e;l.parentNode.insertBefore(h,l)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-XXXXXXXX-XX', 'yourdomain.com');
		ga('send', 'pageview');
		</script>

	</body>
</html>
