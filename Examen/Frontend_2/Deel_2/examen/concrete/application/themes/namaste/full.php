<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
	<html>
		<head>
			<?php Loader::element('header_required'); ?>
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<script type="application/x-javascript"> 
				addEventListener("load", function() { 
					setTimeout(hideURLbar, 0); }, false); 
					function hideURLbar(){ window.scrollTo(0,1); }
			</script>

			<link href="<?php echo $this->getThemePath(); ?>/css/bootstrap.css" rel='stylesheet' type='text/css' />

			<!-- Custom Theme files -->
			<link href="<?php echo $this->getThemePath(); ?>/css/style.css" rel='stylesheet' type='text/css' />	
			<link href="<?php echo $this->getThemePath(); ?>/css/gallery.css" rel="stylesheet" type="text/css" media="all" />
			<script src="<?php echo $this->getThemePath(); ?>/js/jquery-1.11.1.min.js"> </script>

			<!-- Light Box -->
			<link rel="stylesheet" href="<?php echo $this->getThemePath(); ?>/css/swipebox.css">
			<script src="<?php echo $this->getThemePath(); ?>/js/jquery.swipebox.min.js"></script> 
    		<script type="text/javascript">
				jQuery(function($) {
					$(".swipebox").swipebox();
				});
			</script>

			<!-- Eng Light Box -->	
			<script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event){		
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
					});
				});
			</script>
			<script type="text/javascript" src="<?php echo $this->getThemePath(); ?>/js/move-top.js"></script>
			<script type="text/javascript" src="<?php echo $this->getThemePath(); ?>/js/easing.js"></script>
			<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
			<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
		</head>

		<body>
			<div class="header">
				<div class="wrap">
	   				<div class="header_top">
						<div class="icon">
							<?php 
								$a = new GlobalArea('Site_Logo');
								$a->display();
							?>
						</div>

						<div class="menu">																
							<a href="#" class="right_bt" id="activator"><img src="<?php echo $this->getThemePath(); ?>/images/menu-icon.png" alt=""/></a>
							<div class="box" id="box">
				   				<div class="box_content_center">
					   				<div class="menu_box_list">
						   				<?php 
											$a = new GlobalArea('menu');
											$a->display();
										?>
									</div>

									<a class="boxclose" id="boxclose"><img src="<?php echo $this->getThemePath(); ?>/images/close.png" alt=""/></a>
					  			</div>                
							</div>

			                 <script type="text/javascript">
								var $ = jQuery.noConflict();
									$(function() {
										$('#activator').click(function(){
											$('#box').animate({'left':'0px'},500);
										});

									$('#boxclose').click(function(){
										$('#box').animate({'left':'-2500px'},500);
									});
								});
								
								$(document).ready(function(){
									
									//Hide (Collapse) the toggle containers on load
									$(".toggle_container").hide(); 
									
									//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
									$(".trigger").click(function(){
										$(this).toggleClass("active").next().slideToggle("slow");
										return false; //Prevent the browser jump to the link anchor
									});
									
								});
							</script>
			         	</div> 	
					<div class="clearfix"> </div>
	     		</div>
	         
	         	<div class="logo">
		     		<?php 
						$a = new GlobalArea('logo');
						$a->display();
					?>
		     	</div>
		     
		     	<div class="header_arrow">
	          		<a href="#arrow" class="scroll"><span> </span></a>
	        	</div>
	   		</div>
		</div>	

		<div class="content_top" id="about">
			<div class="container">
	   			<div class="grid_1">
	   	 			<h3>
	   	 				<?php 
							$a = new GlobalArea('titel1');
							$a->display();
						?>
	   	 			</h3>
	   	 			
	   	 			<h1>
	   	 				<?php 
							$a = new GlobalArea('ondertitel1');
							$a->display();
						?>
					</h1>
	   	 			
	   	 			<p>
	   	 				<?php 
							$a = new GlobalArea('tekst1');
							$a->display();
						?>
					</p>
	   			</div>

	   			<div class="grid_2 text-center">
					<div class="col-md-3 box_1">
						<?php 
							$a = new GlobalArea('foto2');
							$a->display();
						?>

						<h4>
							<?php 
								$a = new GlobalArea('titel2');
								$a->display();
							?>
						</h4>

						<p>
							<?php 
								$a = new GlobalArea('tekst2');
								$a->display();
							?>
						</p>
					</div>

					<div class="col-md-3 box_1 box_2">
						<?php 
							$a = new GlobalArea('foto3');
							$a->display();
						?>

						<h4>
							<?php 
								$a = new GlobalArea('titel3');
								$a->display();
							?>
						</h4>

						<p>
							<?php 
								$a = new GlobalArea('tekst3');
								$a->display();
							?>
						</p>
					</div>
			
					<div class="col-md-3 box_1">
						<?php 
							$a = new GlobalArea('foto4');
							$a->display();
						?>

						<h4>
							<?php 
								$a = new GlobalArea('titel4');
								$a->display();
							?>
						</h4>

						<p>
							<?php 
								$a = new GlobalArea('tekst4');
								$a->display();
							?>
						</p>
					</div>

					<div class="col-md-3 box_1">
						<?php 
							$a = new GlobalArea('foto5');
							$a->display();
						?>
						<h4>
							<?php 
								$a = new GlobalArea('titel5');
								$a->display();
							?>
						</h4>

						<p>
							<?php 
								$a = new GlobalArea('tekst5');
								$a->display();
							?>
						</p>
					</div>

					<div class="clearfix"> </div>
	   			</div>
			</div>
		</div>

		<div class="content_middle" id="works">
			<div class="container">
				<div class="grid_1">
					<h3>
	   	 				<?php 
							$a = new GlobalArea('titel6');
							$a->display();
						?>
	   	 			</h3>
	   	 			
	   	 			<h2>
	   	 				<?php 
							$a = new GlobalArea('ondertitel6');
							$a->display();
						?>
					</h2>
	   	 			
	   	 			<p>
	   	 				<?php 
							$a = new GlobalArea('tekst6');
							$a->display();
						?>
					</p>
	   			</div>
	   			
	   			<div class="gallery autoplay items-3">
			    	<div id="item-1" class="control-operator"></div>

					<figure class="item">
			         	<ul class="gallery">
			         		<li>
			         			<div class="view view-first">
			         				<?php 
										$a = new GlobalArea('foto7');
										$a->display();
									?>

			   				   		<div class="mask">
			   				     		<div class="mask_desc">
			                        		<?php 
												$a = new GlobalArea('titel7');
												$a->display();
											?>

			                        		<?php 
												$a = new GlobalArea('tekst7');
												$a->display();
											?>
			                        	</div>
			                        	
			                        	<div class="info">  
			                        		<?php 
												$a = new GlobalArea('pijl_gallery');
												$a->display();
											?>
										</div>
			                     	</div>
                 				</div>
			         		</li>
			         		
			         		<li>
			         			<div class="view view-first">
			         				<?php 
										$a = new GlobalArea('foto8');
										$a->display();
									?>

			         				<div class="mask">
			   				     		<div class="mask_desc">
			                         		<?php 
												$a = new GlobalArea('titel8');
												$a->display();
											?>
			                         		
			                         		<?php 
												$a = new GlobalArea('tekst8');
												$a->display();
											?>
			                         	</div>
			                         	
			                         	<div class="info">  
			                         		<?php 
												$a = new GlobalArea('pijl_gallery');
												$a->display();
											?>
										</div>
			                     	</div>
                 				</div> 
			         		</li>
			         		
			         		<li>
			         			<div class="view view-first">
			         				<?php 
										$a = new GlobalArea('foto9');
										$a->display();
									?>

									<div class="mask">
			   				     		<div class="mask_desc">
			                         		<?php 
												$a = new GlobalArea('titel9');
												$a->display();
											?>
			                         		
			                         		<?php 
												$a = new GlobalArea('tekst9');
												$a->display();
											?>
			                        	</div>
			                        	
			                        	<div class="info">  
			                        		<?php 
												$a = new GlobalArea('pijl_gallery');
												$a->display();
											?>
										</div>
			                     	</div>
                 				</div> 
			         		</li>
			         		
			         		<li>
			         			<div class="view view-first">
			         				<?php 
										$a = new GlobalArea('foto10');
										$a->display();
									?>
	
			   				   		<div class="mask">
			   				     		<div class="mask_desc">
			                         		<?php 
												$a = new GlobalArea('titel10');
												$a->display();
											?>

			                         		<?php 
												$a = new GlobalArea('tekst10');
												$a->display();
											?>
			                         	</div>

			                        	 <div class="info">  
			                         		<?php 
												$a = new GlobalArea('pijl_gallery');
												$a->display();
											?>
										</div>
			                     	</div>
                 				</div> 
			         		</li>
			         		
			         		<div class="clearfix"> </div>
			         	</ul>
			    	</figure>
	   			</div>
			</div>
		</div>

		<div class="content_top" id="arrow">
			<div class="container">
	   			<div class="grid_1">
	   				<h3>
	   	 				<?php 
							$a = new GlobalArea('titel11');
							$a->display();
						?>
					</h3>
	   				
	   				<h4>
	   	 				<?php 
							$a = new GlobalArea('ondertitel11');
							$a->display();
						?>
	   	 			</h4>
	   	 
	   	 			<p>
	   	 				<?php 
							$a = new GlobalArea('tekst11');
							$a->display();
						?>
	   	 			</p>
	   			</div>
	   
	   			<div class="grid_2 text-center">
					<div class="col-md-3 box_3">
			    		<?php 
							$a = new GlobalArea('foto12');
							$a->display();
						?>
			    
			    		<div class="blog_desc">
			       			<?php 
								$a = new GlobalArea('titel12');
								$a->display();
							?>

			       			<?php 
								$a = new GlobalArea('tekst12');
								$a->display();
							?>

			       			<div class="date_desc">
			          			<div class="date_desc-left">
			          				<?php 
										$a = new GlobalArea('datum12');
										$a->display();
									?>
								</div>
			        			
			        			<div class="date_desc-right">
			        				<?php 
										$a = new GlobalArea('pijl');
										$a->display();
									?>
								</div>

			          			<div class="clearfix"> </div>
			       			</div>
			   			</div>
					</div>
					
					<div class="col-md-3 box_3">
			   			<?php 
							$a = new GlobalArea('foto13');
							$a->display();
						?>

			    		<div class="blog_desc">
			    		   <?php 
								$a = new GlobalArea('titel13');
								$a->display();
							?>
		
			    		   <?php 
								$a = new GlobalArea('tekst13');
								$a->display();
							?>

			    		   <div class="date_desc">
			    		      <div class="date_desc-left">
			    		      		<?php 
										$a = new GlobalArea('datum13');
										$a->display();
									?>
								</div>
			    		      
			    		      	<div class="date_desc-right">
			    		      		<?php 
										$a = new GlobalArea('pijl');
										$a->display();
									?>
								</div>

			    		      <div class="clearfix"> </div>
			    		   </div>
			  	 		</div>
					</div>
			
					<div class="col-md-3 box_3">
			   			<?php 
							$a = new GlobalArea('foto14');
							$a->display();
						?>
			   			
			   			<div class="blog_desc">
			   			    <?php 
								$a = new GlobalArea('titel14');
								$a->display();
							?>
			
			   			    <?php 
								$a = new GlobalArea('tekst14');
								$a->display();
							?>

			   			    <div class="date_desc">
			   			       <div class="date_desc-left">
			   			       		<?php 
										$a = new GlobalArea('datum14');
										$a->display();
									?>
								</div>
			   			       	
			   			       	<div class="date_desc-right">
			   			       		<?php 
										$a = new GlobalArea('pijl');
										$a->display();
									?>
								</div>
			   			       	
			   			       	<div class="clearfix"> </div>
			   			    </div>
			   			</div>
					</div>
					
					<div class="col-md-3 box_3">
						<?php 
							$a = new GlobalArea('foto15');
							$a->display();
						?>
			    		
			    		<div class="blog_desc">
			       			<?php 
								$a = new GlobalArea('titel15');
								$a->display();
							?>

			       			<?php 
								$a = new GlobalArea('tekst15');
								$a->display();
							?>

			       			<div class="date_desc">
			          			<div class="date_desc-left">
			          				<?php 
										$a = new GlobalArea('datum15');
										$a->display();
									?>
								</div>
			          
			          			<div class="date_desc-right">
			          				<?php 
										$a = new GlobalArea('pijl');
										$a->display();
									?>
								</div>

			          		<div class="clearfix"> </div>
			       		</div>
			   		</div>
				</div>
				
				<div class="clearfix"> </div>
	   		</div>
		</div>
	</div>

	<div>
		<div class="content_bottom">
			<div class="container">
				<?php 
					$a = new GlobalArea('tekst16');
					$a->display();
				?>
			</div>
		</div>	

		<div class="footer">
			<div class="container">
				<div class="col-sm-4">
					<?php 
						$a = new GlobalArea('pagina1');
						$a->display();
					?>
				</div>

				<div class="col-sm-4">
					<?php 
						$a = new GlobalArea('pagina2');
						$a->display();
					?>
			
				</div>
				
				<div class="col-sm-4 list_2">
					<?php 
						$a = new GlobalArea('contact');
						$a->display();
					?>
					
					<?php 
						$a = new GlobalArea('social');
						$a->display();
					?>  
				</div>

				<div class="clearfix"> </div>
					<div class="copy">
						<?php 
							$a = new GlobalArea('copy');
							$a->display();
						?>
					</div>
				</div>
					<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
					
					<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
				</div>
			</div>
		</div>
	</div>
<?php Loader::element('footer_required'); ?>
</body>
</html>

