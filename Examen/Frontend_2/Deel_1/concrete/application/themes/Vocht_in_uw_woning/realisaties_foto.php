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
          
          <a class="navbar-brand" href="/Examen/Frontend_2/concrete"><img src="<?php echo $view->getThemePath()?>/afbeeldingen/logo.png" alt="Vocht in uw woning"></a>
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

    <div class="content">
      <div class="vlakken row">
        <h1>
          <?php
            $a = new Area('titel');
            $a->display($c);
          ?>
        </h1>

        <div class="col-md-12" id="slider-thumbs">
          <ul class="list-inline">
            <li>
              <div id="carousel-selector-0" class="selected">
                <?php
                  $a = new Area('foto_1');
                  $a->display($c);
                ?>
              </div>
            </li>

            <li>
              <div id="carousel-selector-1" class="selected">
                <?php
                  $a = new Area('foto_2');
                  $a->display($c);
                ?>
              </div>
            </li>

            <li>
              <div id="carousel-selector-2" class="selected">
                <?php
                  $a = new Area('foto_3');
                  $a->display($c);
                ?>
              </div>
            </li>

            <li>
              <div id="carousel-selector-3" class="selected">
                <?php
                  $a = new Area('foto_4');
                  $a->display($c);
                ?>
              </div>
            </li>
          </ul>
        </div>

        <div class="row">
          <div class="col-md-12" id="slider">
            <div class="col-md-12" id="carousel-bounding-box">
              <div id="myCarousel" class="carousel slide gallery">
                <div class="carousel-inner">
                  <div class="active item" data-slide-number="0">
                    <?php
                      $a = new Area('foto_1');
                      $a->display($c);
                    ?>
                  </div>

                  <div class="item" data-slide-to="1">
                    <?php
                      $a = new Area('foto_2');
                      $a->display($c);
                    ?>
                  </div>

                  <div class="item" data-slide-number="2">
                    <?php
                      $a = new Area('foto_3');
                      $a->display($c);
                    ?>
                  </div>

                  <div class="item" data-slide-number="3">
                    <?php
                      $a = new Area('foto_4');
                      $a->display($c);
                    ?>
                  </div>
                </div>

                <a class="carousel-control left" href="#myCarousel" data-slide="prev"></a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next"></a>
              </div>
            </div>
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

      <script type="text/javascript" src="<?php echo $view->getThemePath()?>/js/script_gallerij.js"></script>

      <script type="text/javascript" src="<?php echo $view->getThemePath()?>/js/jquery-1.11.2.min.js"></script>
    
      </div>
    <?php Loader::element('footer_required')?>
  </body>
</html>