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
        <h1><?php
              $a = new Area('titel');
              $a->display($c);
            ?></h1>

        <div class="form row col-md-6">

        <p id="fbpersoon"></p>

        <form id="formulier" name="formulier" method="post" onsubmit="return(valideren())">
          <div class="col-md-6">
          <label for="voornaam">Voornaam:</label>
            <input type="text" name="voornaam" id="voornaam">

          <label for="familienaam">Familienaam:</label>
            <input type="text" name="familienaam" id="familienaam">

          <label for="mail">E-mailadres:</label>
            <input type="text" name="mail" id="mail"></div>

          <div class="col-md-6">

          <label for="adres">Adres:</label>
            <input type="text" name="adres" id="adres">

          <label for="stad">Stad/Gemeente:</label>
            <input type="text" name="stad" id="stad">

          <label for="tel">Telefoon:</label>
            <input type="text" name="tel" id="tel"></div>

          <div class="col-md-12">

          <label for="bericht">Bericht:</label>
            <textarea name="bericht" id="bericht"></textarea>

          <input type="submit" name="verzenden" id="verzenden" value="Verzenden"></div>
        </form>
      </div>

      <div class="kaart_contact col-md-6">
        <ul>
          <div class="row col-md-6">
            <?php
              $a = new Area('adres_1_boven');
              $a->display($c);
            ?>
          </div>
          <div class="row col-md-6">
            <?php
              $a = new Area('adres_2_boven');
              $a->display($c);
            ?>
          </div>
          </ul>

        <div id="map" class="row col-md-12" ><?php
              $a = new Area('kaart');
              $a->display($c);
            ?></div>
      </div>
    </div></div>

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


    <script type="text/javascript" src="<?php echo $view->getThemePath()?>/js/script_contact.js"></script>
    <?php Loader::element('footer_required')?>
  </body>
</html>
