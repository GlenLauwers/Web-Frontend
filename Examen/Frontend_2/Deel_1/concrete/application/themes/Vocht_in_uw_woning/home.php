<!DOCTYPE html>
<html>
  <head>

   	<?php Loader::element('header_required')?>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Style -->
    <link href="<?php echo $view->getThemePath()?>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo $view->getThemePath()?>/css/style.css" rel="stylesheet">
    <link href="<?php echo $view->getThemePath()?>/css/lightbox.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="<?php echo $view->getThemePath()?>/afbeeldingen/logo_favi.png"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <div class="<?php echo $c->getPageWrapperClass()?>">
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          
            <a class="navbar-brand" href="index.php"><img src="<?php echo $view->getThemePath()?>/afbeeldingen/logo.png" alt="Vocht in uw woning"></a>
          </div>
    
          <div class="collapse navbar-collapse nav" id="bs-example-navbar-collapse-1">
            <div class="nav navbar-nav navbar-right">
              <?php
                $a = new Area('navigatie');
                $a->display($c);
              ?>
            </div>
          </div>
        </div>
      </nav>

      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
      
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <h3 class="visible-xs">
              <?php
                $a = new Area('carousel1_tekst');
                $a->display($c);
              ?>
            </h3>

            <?php
              $a = new Area('carousel1_foto');
              $a->display($c);
            ?>

            <div class="carousel-caption">
              <h3 class="hidden-xs">
                <?php
                  $a = new Area('carousel1_tekst');
                  $a->display($c);
                ?>
              </h3>
            </div>
          </div>
      
          <div class="item">
            <h3 class="visible-xs">
              <?php
                $a = new Area('carousel2_tekst');
                $a->display($c);
              ?>
            </h3>

            <?php
              $a = new Area('carousel2_foto');
              $a->display($c);
            ?>

            <div class="carousel-caption">
              <h3 class="hidden-xs">
                <?php
                  $a = new Area('carousel2_tekst');
                  $a->display($c);
                ?>
              </h3>
            </div>
          </div>

          <div class="item">
            <h3 class="visible-xs">
              <?php
                $a = new Area('carousel3_tekst');
                $a->display($c);
              ?>
            </h3>

            <?php
              $a = new Area('carousel3_foto');
              $a->display($c);
            ?>

            <div class="carousel-caption">
              <h3 class="hidden-xs">
                <?php
                  $a = new Area('carousel3_tekst');
                  $a->display($c);
                ?>
              </h3>
            </div>
          </div>
    
          <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"></a>
          <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"></a>
        </div>
      </div>

      <div class="content">
        <div class="vlakken row">
          <div class="vlak_1 col-md-4">
            <h4>
              <?php
    				    $a = new Area('vochtprobleem_titel_home');
    				    $a->display($c);
				      ?>
            </h4>

            <div class="vlak_afbeelding">
				      <?php
                $a = new Area('vochtprobleem_img_home');
                $a->display($c);
				      ?>
			      </div>

          	<?php
              $a = new Area('vochtproblemen_home');
    			    $a->display($c);
			      ?>
         
            <div class="link"> 
              <?php
                $a = new Area('meer_info_vochtproblemen');
                $a->display($c);
              ?>
            </div>
          </div>

          <div class="vlak_2 col-md-4">
          	<h4>
              <?php
    			      $a = new Area('realisaties_titel_home');
    			      $a->display($c);
			        ?>
            </h4>

			      <div class="vlak_afbeelding">
			      	<?php
    	      		$a = new Area('realisaties_img_home');
    	      		$a->display($c);
			      	?>
			      </div>


          	<?php
    			    $a = new Area('realisaties_home');
    			    $a->display($c);
			      ?>
            
            <div class="link">
              <?php
                $a = new Area('meer_info_realisaties');
                $a->display($c);
              ?>
            </div>
          </div>

          <div class="vlak_3 col-md-4">
            <h4>
              <?php
    			      $a = new Area('over_ons_titel_home');
    			      $a->display($c);
			        ?>
            </h4>
          
            <div class="vlak_afbeelding">
				      <?php
    			      $a = new Area('over_ons_img_home');
    			      $a->display($c);
				      ?>
			      </div>

            <?php
    			    $a = new Area('over_ons_home');
    			    $a->display($c);
			      ?>

            <div class="link">
              <?php
                $a = new Area('meer_info_over_ons');
                $a->display($c);
              ?>
            </div>
          </div>
        </div>
      </div>

      <footer class="footer row">
    	 <div class="inhoud row">
    		  <div class="voorwaarden col-md-4">
    			 <h4>
              <?php
                $a = new Area('titel_voorwaarde');
                $a->display($c);
              ?>
            </h4>
          
            <?php
              $a = new Area('voorwaarde');
              $a->display($c);
            ?>
    		  </div>

    		  <div class="adres col-md-4">
    		  	<h4>
              <?php
                $a = new Area('titel_adres');
                $a->display($c);
              ?>
            </h4>
  
    		  	<?php
              $a = new Area('adres');
              $a->display($c);
            ?>
    		  </div>

    		  <div class="contact col-md-4">
    		    <p>
              <?php
                $a = new Area('expertise');
                $a->display($c);
              ?>
            </p>
    		  </div>
    	  </div>

    	  <div class="copy row">
    		  <hr>
    		  <p>Copyright © 2015 --<a href="#">Glen Lauwers</a>--</p>
    	  </div>
      </footer>

    
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src="<?php echo $view->getThemePath()?>/js/bootstrap.min.js"></script>

      <script type="text/javascript" src="<?php echo $view->getThemePath()?>/js/lightbox.min.js"></script>

      <script type="text/javascript" src="<?php echo $view->getThemePath()?>/js/jquery-1.11.2.min.js"></script>
    
      </div>
    <?php Loader::element('footer_required')?>

  </body>
</html>